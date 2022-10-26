import Frontend.ASTBuilder;
import Frontend.SemanticCheck;
import Frontend.SymbolCollector;
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

public class Compiler {
    public static void main(String[] args) throws Exception {
        String name = "test.mx";
        InputStream input = new FileInputStream(name);
//        InputStream input = System.in;
        GlobalScope globalScope = new GlobalScope(null);
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
        } catch (error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}
