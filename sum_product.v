module sum_product();
    integer a,b,sum_int;
    real x,y,prod_real;

    initial begin
      a=3; b=9;
      sum_int = a+b;
      $display("\n\t Given numbers:%0d,%0d", a,b);
      $display("\n\t Sum:%0d", sum_int);

      x=99.67; y=-33.41;
      prod_real = x*y;
      $display("\n\t Given numbers:%0.2f,%0.2f", x,y);
      $display("\n\t Product:%0.2f", prod_real);
    end
endmodule