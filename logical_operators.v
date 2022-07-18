module logical_operators();

    reg [2:0] myval1 = 3'b111;              //3bit variable
    reg [3:0] myval2 = 4'b0000;             //4bit variable
    reg result;

    //Procedure to continuously monitor myval1, myval2, result
    initial begin

        $monitor("MON myval1=%b, myval2=%b, result=%b", myval1, myval2, result);
    end

    //Procedure to generate stimulus
    initial begin
        result = !myval1;                   //Logical NOT
        #10;
        result = !myval2;                   //Logical NOT
        #10;

        result = myval1 && myval2;          //Logical AND
        #10;
        result = myval1 || myval2;          //Logical OR
        #10;

        myval1 = 3'bZ0X;                    //Adding unknown bits
        result = !myval1;
        #10;

        result = myval1 && myval2;
        #10;
        result = myval1 || myval2;
        #10;
    end    

endmodule