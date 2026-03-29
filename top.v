
// YOUR IMPLEMENTATION
 
    // ===================== CYCLE COUNTER =====================
    always @(posedge clk or posedge rst) begin
        if (rst)
            cycle_count <= 32'b0;
        else
            cycle_count <= cycle_count + 1;
    end
 
 

