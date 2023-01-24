import Frontend.*;
import IR.IRGlobalBlock;
import Util.MxErrorListener;
import Util.Scope.GlobalScope;
import Util.error.error;
import ast.RootNode;
import gen.MxLexer;
import gen.MxParser;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.PrintStream;

public class Compiler {
    public static void main(String[] args) throws Exception {
        String name = "test.mx";
        InputStream input = new FileInputStream(name);
        PrintStream output = new PrintStream("test.ll");
//        InputStream input = System.in;
        GlobalScope globalScope = new GlobalScope(null);
        IRGlobalBlock globalBlock = new IRGlobalBlock();
        try {
            MxLexer lexer = new MxLexer(CharStreams.fromStream(input));
            lexer.removeErrorListeners();
            lexer.addErrorListener(new MxErrorListener());
            MxParser parser = new MxParser(new CommonTokenStream(lexer));
            parser.removeErrorListeners();
            parser.addErrorListener(new MxErrorListener());
            ParseTree parseTreeRoot = parser.program();
            ASTBuilder astBuilder = new ASTBuilder();
            RootNode ASTRoot = (RootNode) astBuilder.visit(parseTreeRoot);
            SymbolCollector symbolCollector = new SymbolCollector(globalScope);
            symbolCollector.visit(ASTRoot);
            SemanticCheck semanticCheck = new SemanticCheck(globalScope);
            semanticCheck.visit(ASTRoot);
            StringCollector stringCollector = new StringCollector(globalBlock);
            stringCollector.visit(ASTRoot);
            IRBuilder irBuilder = new IRBuilder(globalScope, globalBlock);
            irBuilder.visit(ASTRoot);
            IRPrinter irPrinter = new IRPrinter(output);
            irPrinter.visit(globalBlock);
        } catch (error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}
