module relational_operators();
    reg result;

    initial begin
      $monitor("MON result=%1b", result);
    end

    initial begin
      #5;   result = 3<0;
      #5;   result = 3<6'b000_1111;     //3<15?
      #5;   result = 6>6;
      #5;   result = 4'b1001 <= 4'b1010;    //9<=10?
      #5;   result = 4'b100X <= 4'b1010;
      #5;   result = 99>=98;
    end

endmodule