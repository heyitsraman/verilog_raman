module shift_operators();

    reg [11:0] a=12'b0101_1010_1101;            //12bit value unsigned
    reg [11:0] b;
    reg [3:0]  c=4'b0011; 
    reg [3:0]  d;

    //Procedure to continuously monitor a and b
    initial begin
      $monitor("MON a=%12b, b=%12b, c=%4b, d=%4b a=%0d, b=%0d, c=%0d, d=%0d", a,b,c,d,a,b,c,d);
    end

    //Procedure to generate stimulus
    initial begin
      b = a << 1;                               //Left shift implies multiply by 2
      #5;
      b=0;

      #5;   b = a*2;           
      #5;   d = c << 2;
      #10;  d = c;
      #5;   d = c << 3;
      #10;  d = c;
      #5;   d = c >> 1;
      #10;  d = c >> 3;
      #5;   d = c;                  
      #5;   b = a << 5;
      #5;   b = b >> 2;
      #5;   b = b >> 7;
      #5;   b = b << 1;
      #5;   b = (a << 1) >> 6; 
    end 

endmodule