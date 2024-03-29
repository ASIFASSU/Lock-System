module project_tb();
    reg [11:0] PassIn;
    reg reset,Enter;
    reg [1:0]user;
    wire [11:0] Setpass;
    wire Access,Alarm;
    wire [1:0] Count;
    Lock p1(reset,Enter,PassIn,user,Access,Setpass,Count,Alarm);
    initial
    begin
        user=2'b11;
        PassIn=12'h111;
        Enter=1;
        reset=0;
        #1;
        Enter=0;
        #99;
        PassIn=12'h0AA;
        Enter=1;
        #1;
        Enter=0;
        #99;
        PassIn=12'hF1A;
        Enter=1;
        #1;
        Enter=0;
        #99;
        PassIn=12'h999;
        Enter=1;
        #1;
        Enter=0;
        #99;
        PassIn=12'h001;
        Enter=1;
        #1;
        Enter=0;
        #99;
        PassIn=12'h188;
        reset=1;
        Enter=1;
        #10;
        reset=0;
        #1;
        Enter=0;
        #99;
        PassIn=12'h111;
        Enter=1;
        #1;
        Enter=0;
        #99;
       
    end
endmodule
