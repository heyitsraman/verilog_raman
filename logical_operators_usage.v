module logical_operators_usage();

    reg [2:0] myval1 = 3'b111;                  //3bit variable
    reg [3:0] myval2 = 4'b0000;                 //4bit variable

    //Procedure to generate stimulus 
    initial begin

      #1;

      if(!myval1)   begin                       //Checks if myval1 is zero
        //Execute
        $display("GREAT myval1=%d", myval1);
      end   

      else begin
        //Other code executed
        $display("Expected myval1=0, but myval1 is:%d", myval1);
      end

      #1;

      if(!myval2)   begin                       //Checks if myval2 is zero
        //Execute
        $display("GREAT myval1=%d", myval2);
      end   

      else begin
        //Other code executed
        $display("Expected myval1=0, but myval1 is:%d", myval2);
      end

      #1;

      if(myval1 && !myval2)     begin           //Checks if myval1!=0 and myval2=0
        //Execute
        $display("GREAT myval1=%b, myval2=%b", myval1, myval2);
      end

      else  begin
        //Other code executed
        $display("Expected myval!=0 and myval2=0 but, myval1=%b and myval2=%b", myval1, myval2);
      end

      #1;

      while(myval2<3)   begin
        $display("WHILE LOOP myval2=%d", myval2);
        myval2 = myval2 + 1; 
      end

    end

endmodule