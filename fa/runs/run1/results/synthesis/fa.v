/* Generated by Yosys 0.30+48 (git sha1 14d50a176d5, gcc 8.3.1 -fPIC -Os) */

module fa(a, b, sum, co);
  wire _0_;
  input a;
  wire a;
  input b;
  wire b;
  output co;
  wire co;
  output sum;
  wire sum;
  sky130_fd_sc_hd__xor2_2 _1_ (
    .A(b),
    .B(a),
    .X(sum)
  );
  sky130_fd_sc_hd__or2_2 _2_ (
    .A(b),
    .B(a),
    .X(_0_)
  );
  sky130_fd_sc_hd__buf_1 _3_ (
    .A(_0_),
    .X(co)
  );
endmodule
