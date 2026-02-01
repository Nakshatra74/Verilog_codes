`timescale 10ns/1ns // 10 ns = one time unit in the simulation
                    // 1 ns = smallest time step the simulator can see
module exclusive_or (f, a, b);
   input a,b;
   output f; 
   wire t1,t2; 
  and #5 m1(t1,a,b); // #5 means 5x10=50ns
   nor #5 m2(t2,a,b); 
   nor #5 m3(f,t2,t1);
endmodule
