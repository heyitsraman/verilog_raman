module conidtional_operators();
    integer result, a=9, b=31, c=0;

    //Procedure to generate stimulus
    initial begin
      #5;   result = (a == 9) ? 1 : 0;
      $display("result = %0d", result);

      #5;   result = ((a+b) == 40) ? 1:0;
      $display("result = %0d", result);

      #5;   result = (b == 30) ? 678 : -99;
      $display("result = %0d", result);

      #5;   c = (b == 31) ? 1'bZ : 1'b0;
      $display("c = %b", c);

    end
endmodule