module opcode_gen (
    input  [1:0] op,     // operation select
    input  [1:0] reg1,   // Rd / Rs1
    input  [1:0] reg2,   // Rs2
    output reg [7:0] instr  // generated 8-bit instruction
);
 
    reg [3:0] opcode;
 
    always @(*) begin
        // Step 1: map op → 4-bit opcode
        case (op)
            2'b00: opcode = 4'b0000; // NOP
            2'b01: opcode = 4'b0001; // MAC
            2'b10: opcode = 4'b0010; // LOAD
            2'b11: opcode = 4'b0011; // STORE
            default: opcode = 4'b0000; // default NOP
        endcase
 
        // Step 2: pack into 8-bit instruction
        // [7:4] = opcode, [3:2] = reg1, [1:0] = reg2
        instr = {opcode, reg1, reg2};
    end
