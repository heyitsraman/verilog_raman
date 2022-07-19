module math_operators();

    integer a=2, b=3, result;               //32bit signed value

    //Procedure to continuously monitor a,b and result
    initial begin
      $monitor("MON a=%0d, b=%0d, result=%0d", a,b,result);
    end

    //Procedure to generate stimulus
    initial begin
      
      result = a**b;                        //Exponentiation
      #5;
      result = b**a;

      #5;
      a=177; b=12;
      result = a*b;                         //Multiplication

      #5;
      a=199; b=19;
      result = a/b;                         //Division
      #5;
      result = a%b;                         //Modulo/Remainder

      #5;
      a=199; b=-19;
      result = a/b;                         //Negative Quotient       
      #5
      result = a%b;                         //Negative Remainder

      #5;
      a=4199; b=-200;
      result = a+b;
      #5;
      result = a-b;

      #5;
      //Always use parenthisis while performing complex operations
      a=91000; b=13;
      result = (a-13000)/(b*100); 

    end 


endmodule