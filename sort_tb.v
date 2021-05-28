module sort_tb(in1,  in2,  in3,  in4,  in5,in6,in7,in8,in9,out1, out2, out3, out4, out5,out6,out7,out8,out9,addy,done,outt,clk);

    input wire  clk;
    output wire done;
    output [8-1:0] outt;
    input [12-1:0] addy;//16
    input [8-1:0] in1,  in2,  in3,  in4,  in5,in6,in7,in8,in9;
    output wire [8-1:0] out1, out2, out3, out4, out5,out6,out7,out8,out9;
    

    sort #(.NUM_VALS(9), .SIZE(8)) dut (
        .clk(clk),
        .in ({in1,  in2,  in3,  in4, in5,in6,in7,in8,in9}),
        .out({out1, out2, out3, out4, out5,out6,out7,out8,out9})
    );
    
    ramOp #() dut2 (
    .clka(clk),
           .fin(out5),
           .addy(addy),
           .done(done),
           .douta(outt)
        );
    

    always @(posedge clk) begin
       
    end

    always @(posedge clk) begin
        $display("In:  %0d %0d %0d %0d %0d %0d %0d %0d %0d ", in1,  in2,  in3,  in4,  in5,  in6,  in7,  in8,  in9);
        $display("Out: %0d %0d %0d %0d %0d %0d %0d %0d %0d ", out1, out2, out3, out4, out5,out6,out7,out8,out9);
    end

    initial begin
        #100;
        $finish;
    end
/*
    always begin
        clk = 1'b0; #9;
        clk = 1'b1; #9;
    end
    */
endmodule
