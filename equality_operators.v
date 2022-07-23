module equality_operators();
    reg result;     //Equality operators have 1 bit

    //Procedure to generate stimulus
    initial begin
      #5;   result = (1'b1 == 1'b0);
            $display("result=%b", result);

      #5;   result = (1'b1 == 1'b1);
            $display("result=%b", result);

      #5;   result = (1'b1 == 1'bX);
            $display("result=%b", result);

      #5;   result = (3'b101 == 3'b110);
            $display("result=%b", result);

      #5;   result = (3'b101 != 3'b101);
            $display("result=%b", result);

      
      #5;   result = (3'b10Z == 3'b10Z);
            $display("result=%b", result);

      #5;   result = (3'b10Z === 3'b10Z);
            $display("result=%b", result);

      #5;   result = (3'b1XZ == 3'b10Z);
            $display("result=%b", result);

      #5;   result = (3'b1XZ == 3'b1XZ);
            $display("result=%b", result);

      #5;   result = (2'bXX !== 2'bXX);
            $display("result=%b", result);
            
    end 

endmodule