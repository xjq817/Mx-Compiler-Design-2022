# Mx-Compiler-Design-2022

## semantic

- 建立AST树

  Node节点：ASTNode

  - RootNode
  - ExprNode
  - StmtNode
  - DefNode
  - TypeNode

  ASTBuilder进行建树

- Util

  - Type
    - name：类型名称（String
    - layer：数组维数（int
    - classScope：这个类型的作用域（ClassScope
  - Entity
    - name：名字（String
    - 派生类
      - VarEntity：变量值
        - varType：变量类型（Type
      - FuncEntity：函数值
        - funcScope：函数作用域（FuncScope
      - ConstructionEntity：构造函数值
        - constructionScope：构造函数作用域（ConstructionScope

  - Scope
    - varEntities：作用域内定义的所有变量（LinkedHashMap<String,VarEntity>
    - funcEntities：作用域内调用的所有函数（LinkedHashMap<String,FuncEntity>
    - parentScope：上一级作用域（Scope
    - blockScopes：下一级作用域（ArrayList<BlockScope>
    - 派生类：
      - BlockScope：普通作用域
      - ClassScope：类作用域
        - name：类名称（String
        - constructionEntity：其内部构造函数值（ConstructionEntity
      - FuncScope：函数作用域
        - parameters：声明变量（ArrayList<VarEntity>
        - returnType：返回类型（Type
      - LambdaScope：函数作用域
        - parameters：声明变量（ArrayList<VarEntity>
        - returnType：返回类型（Type
      - LoopScope：for和while的作用域
      - GlobalScope：全局作用域
        - types：收集所有类型（LinkedHashMap<String,Type>

- SymbolCollector

  分两次收集

  - 收集所有class类的名字，全局函数的名字
  - 收集所有class类内定义变量、函数的名字和类型，所有函数的声明变量和返回值

- SemanticChecker

  开始进行语义检查

  - StmtNode

    每个block都要建立一个新的scope，具体是哪一个类型看情况分析

    - IfStmtNode

      - condition是否为bool表达式

    - BreakStmtNode

      - 判断是否在LoopScope内

    - ContinueStmtNode

      - 判断是否在LoopScope内

    - ForStmtNode

      - 判断condition是否为bool表达式
      - 建立LoopScope

    - WhileStmtNode

      - 判断condition是否为bool表达式
      - 建立LoopScope

    - ReturnStmtNode

      - 判断是否在FuncScope内

      - 判断返回类型
        - Lambda表达式：需要通过返回值来判断类型
        - 普通函数：需要判断原本函数与返回值的类型是否一致

  - ExprNode

    - CellExprNode
      - 前缀++和--
        - 判断exprType是否为int类型
        - 判断expr是否为左值
      - !
        - 判断exprType是否为bool类型
      - 前缀+、-、~
        - 判断exprType是否为int类型
    - SufCellExprNode
      - 后缀++和--

  - DefNode

  - TypeNode

    - TypeNode
      - 判断是否有在gScope内出现