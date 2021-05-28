module ram(
input clka,
output wire done,
output [8-1:0] outt,
//input [7:0]dina,
output[7:0]douta,
//input [7:0]dina2,
output[7:0]douta2,
//input [7:0]dina3,
output[7:0]douta3,
//input [7:0]dina4,
output[7:0]douta4,
//input [7:0]dina5,
output[7:0]douta5,
//input [7:0]dina6,
output[7:0]douta6,
//input [7:0]dina7,
output[7:0]douta7,
//input [7:0]dina8,
output[7:0]douta8,
//input [7:0]dina9,
output[7:0]douta9,

input reset
    );

reg [7:0]dina = 8'd0;
  reg [7:0]dina2 = 8'd0;
  reg[7:0]dina3 = 8'd0;
 reg[7:0]dina4 =8'd0;
 reg [7:0]dina5=8'd0;
 reg [7:0]dina6=8'd0;
 reg[7:0]dina7=8'd0;
 reg[7:0]dina8=8'd0;
 reg[7:0]dina9=8'd0;









    wire ena;
    wire wea;
    reg [11:0]addra;
    reg [11:0]addra2;
     reg [11:0]addra3;
      reg [11:0]addra4;
       reg [11:0]addra5;
        reg [11:0]addra6;
         reg [11:0]addra7;
          reg [11:0]addra8;
           reg [11:0]addra9;
    integer k,coun,clkCount=0;
         reg[11:0]i;
     reg[7:0]val1;
      reg[7:0]val2;
       reg[7:0]val3;
        reg[7:0]val4;
         reg[7:0]val5;
          reg[7:0]val6;
           reg[7:0]val7;
            reg[7:0]val8;
             reg[7:0]val9;

    
    
    
    
 /*   ENTITY blk_mem_gen_0 IS
      PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    END blk_mem_gen_0;*/
    blk_mem_gen_0 ul(clka,ena,wea,addra,dina,douta);
    blk_mem_gen_0 u2(clka,ena,wea,addra2,dina2,douta2);
    blk_mem_gen_0 u3(clka,ena,wea,addra3,dina3,douta3);
    blk_mem_gen_0 u4(clka,ena,wea,addra4,dina4,douta4);
    blk_mem_gen_0 u5(clka,ena,wea,addra5,dina5,douta5);
    blk_mem_gen_0 u6(clka,ena,wea,addra6,dina6,douta6);
    blk_mem_gen_0 u7(clka,ena,wea,addra7,dina7,douta7);
    blk_mem_gen_0 u8(clka,ena,wea,addra8,dina8,douta8);
    blk_mem_gen_0 u9(clka,ena,wea,addra9,dina9,douta9);

    assign ena=1;
    assign wea=0;
    always @(posedge clka) begin
    clkCount=clkCount+8'h1;
    if(!reset)
    begin
    i=8'h12;
    k=0;
    coun=8'h1;
    val1=0;
    val2=0;
    val3=0;
    val4=0;
    val5=0;
    val6=0;
    val7=0;
    val8=0;
    val9=0;
    end
    else
    begin
    k=k+8'h1;
    if (k>8'h3)begin
        if(coun==8'h0b)
        begin
        coun=8'h1;
        i=i+8'h2;
        end
        else
        begin
        addra=i;
        val1=douta;
        addra2 = i+8'h1;
        val2=douta2;
        addra3= i-8'h1;
        val3=douta3;
        addra4 = i+8'h0d;
        val4=douta4;
        addra5= i+8'h0e;
        val5=douta5;
        addra6 = i+8'h0c;
        val6=douta6;
        addra7= i-8'h0d;
        val7=douta7;
        addra8 = i-8'h0c;
        val8=douta8;
        addra9= i-8'h0e;
        val9=douta9;

        if(i>8'h15)
        begin       
        coun=coun+8'h1;
        end
        i=i+8'h1;
        end
       end
       end
        /*
        i2=8'd90; 
        addra=i2;
        k=douta;
        i3=8'd121; 
        addra=i3;
        l=douta;
        */
        
 
    end
    
     sort_tb dut22 (
              .in1(val1),
              .in2(val2),
              .in3(val3),
              .in4(val4),
              .in5(val5),
              .in6(val6),
              .in7(val7),
              .in8(val8),
              .in9(val9),
              .out1(),
              .out2(),
              .out3(),
              .out4(),
              .out5(),
              .out6(),
              .out7(),
              .out8(),
              .out9(),
              .addy(i),
              .done(done),
              .outt(outt),
              .clk(clka)
          );
    
    
    
    

endmodule
