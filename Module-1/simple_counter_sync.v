module simple_counter (clock, reset, count);    // counter with synchronous reset
    input clock, reset;
    output [31:0] count;
  reg [31:0] count;  //using reg here means count is a variable that can store a value

    always @(posedge clock)  //at positive edge of clock or reset
    begin 
      if (reset)
        count = 32'b0; // count(32 bit no.) becomes 0 if reset is high, sir has taught the syntax later
        else
            count = count + 1;
    end
endmodule
