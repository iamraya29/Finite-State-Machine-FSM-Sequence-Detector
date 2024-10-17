`timescale 1ns/1ps
module tb_fsm;

    reg clk, reset, data;
    wire start_shifting;
    
    top_module uut (
        .clk(clk),
        .reset(reset),
        .data(data),
        .start_shifting(start_shifting)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        // Apply reset
        reset = 1;
        #10 reset = 0;
        
        // Sequence input for 1101
        data = 1; #10;
        data = 1; #10;
        data = 0; #10;
        data = 1; #10;
        
        // Test other sequences as well
        #100;
        $finish;
    end
endmodule
