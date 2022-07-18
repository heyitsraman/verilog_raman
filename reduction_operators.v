module reduction_operators();

    reg [4:0] myval1 = 5'b1_1111;           //5bit variable
    reg [8:0] myval2 = 9'b1_0101_1110;      //9bit variable
    reg result;

    //Procedure used to continuouly monitor myval1, myval2 and result
    initial begin
      $monitor("MON myval1=%b, myval2=%b, result=%b", myval1, myval2, result);
    end

    //Procedure used to generate stimulus
    initial begin
        result = &myval1;                   
        #1;
        result = &myval2;                    //AND reduction

        #1;
        result = ~&myval1;
        #1;
        result = ~&myval2;                  //NAND reduction

        #1
        result = |myval1;
        #1;
        result = |myval2;                   //OR reduction

        #1;
        result = ~|myval1;
        #1;
        result = ~|myval2;                  //NOR reduction

        #1;
        result = ^myval1;
        #1;
        result = ^myval2;                   //XOR reduction  

        #1;
        result = ~^myval1;
        #1;
        result = ~^myval2;                  //XNOR reduction

    end

endmodule