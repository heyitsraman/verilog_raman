module bitwise_operators();
    
    reg [5:0] x=0;          //6bit variable
    reg [5:0] y=0;          //6bit variable
    reg [5:0] result=0;     //6bit variable

    //Procedure used to continuously monitor x, y and result.
    initial begin
      $monitor("MON x=%b, y=%b, result=%b", x,y,result);
    end

    //Procedure to generate stimulus
    initial begin

      #1;                   //Waiting Time
      x = 6'b00_0101;
      y = 6'b11_0001;
      result = x&y;         //AND

      #1;                   //Using the same values of x and y
      result = ~(x&y);      //Also try (x~&y) for NAND

      #1;
      x = 6'b10_0101;
      y = 6'b01_1011;
      result = x|y;         //OR

      #1;
      result = ~(x|y);      //Also try (x~|y) for NOR;

      #1;
      x = 6'b01_0110;
      y = 6'b01_1011;
      result = x^y;         //XOR

      #1;                   //NXOR is used to check if x=y
      result = x~^y;        //NXOR

      #1;
      x = y;
      result = ~(x^y);      //NXOR

    end 
endmodule