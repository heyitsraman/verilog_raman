module easy_verilog_example();

    reg x = 1'b0; //One bit value with value 0
    reg y = 1'b1; //One bit value with value 1
    reg z;        //Used to store the result of operations between x and y

    //A procedural example
    always @(z)   begin
        $display("x=%b, y=%b, z=%b", x,y,z);
    end

    //Another procedural example
    initial begin
        #2;         //Wait for two units of time
        z = x^y;    //Bit-wise XOR between x and y
        #10;        //Wait for ten units of time
        y=0;        //Changing value of y from 1 to 0
        z = x|y;     //Bit-wise OR between x and y
        #10;        //Wait for ten units of time
        z = ~z;     //Bit-wise NOT of z
        #10;        //Wait for ten units of time
    end 

endmodule