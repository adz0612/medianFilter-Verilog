module masterTb();
reg clk;
reg reset;
wire done;

initial begin
    clk = 0;
end

initial begin
    reset = 0; #40
    reset = 1;
end

initial begin
    forever #100 clk = ~clk;
end
/*
 ram #() dut3 (
    .clka(clk),
     .reset(reset)
     
     
     
        );

               */
               ram M1(.clka(clk),.reset(reset) ,.done(done));
               
               
               
               
endmodule

