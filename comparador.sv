module porta_not (
  input A,
  output X
);

  assign X = ~A;

endmodule

module porta_xor (
  input A,
  input B,
  output X
);

  assign X = A^B;

endmodule

module porta_and (
  input A,
  input B,
  output X
);

  assign X = A&B;

endmodule

module comparador(
  input [1:0]A,
  input [1:0]B,
  output X
);
  
  logic [3:0]aux;
  
  porta_xor u0(A[0],B[0],aux[0]);
  porta_xor u1(A[1],B[1],aux[1]);
  porta_not u2(aux[0],aux[2]);
  porta_not u3(aux[1],aux[3]);
  porta_and u4(aux[2],aux[3],X);

endmodule

// iverilog -g2012 -o vars_comparador tb_comparador.sv
// vvp vars_comparador
// gtkwave