package ASM.Instruction;

import ASM.ASMBlock;
import ASM.Operand.ASMRegister;

public class ASMCmpInstruction extends ASMInstruction {
    public String op;

    public ASMCmpInstruction(String op, ASMRegister rd,
                             ASMRegister rs1, ASMRegister rs2, ASMBlock parentBlock) {
        super(parentBlock);
        this.op = op;
        this.imm = null;
        this.rd = rd;
        this.rs1 = rs1;
        this.rs2 = rs2;
    }

    @Override
    public String toString() {
        if(rs2!=null)
            return "\t"+op+"\t\t" +rd+ ",\t"+rs1+",\t"+rs2;
        else return "\t"+op+"\t" +rd+ ",\t"+rs1;
    }
}
