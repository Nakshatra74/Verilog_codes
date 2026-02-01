module counter_parametrized(clear, clock, count);
    parameter N = 7;
    input clear, clock;
    output [N:0] count; 
    reg [N:0] count;

    always @(negedge clock)
        if (clear)
            count <=0;        // any varibale assigned inside aleways block must be of type reg
        else    
            count <= count + 1;
endmodule
