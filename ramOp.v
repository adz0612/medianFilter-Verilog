module ramOp(
input clka,
output[7:0]douta,
output reg done,
input [12-1:0] addy,//16
input [8-1:0] fin// 16
    );
    reg [7:0]dina;
    wire ena;
    wire wea;
    reg [11:0]addra;
    integer i,j,k,c;
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
    blk_mem_gen_1 ul(clka,ena,wea,addra,dina,douta);
    assign ena=1;
    assign wea=1;
    always @(posedge clka) begin
    $display("Goooodd %d",fin);
    addra=addy;
    dina=fin;
    if(addy>11'hab)begin
    done =1;
    end
    else begin
    done=0;
    end

    
    
    
    /*
     if(!reset)
       begin
       i=0;
       k=0;
       end
       else begin
       k=k+8'h1;
           if (k>8'h3)begin
        j=fin; 
        addra=i;
        dina=j;
        i=i+8'h1;
        end
        end
        */
        end
    

endmodule
