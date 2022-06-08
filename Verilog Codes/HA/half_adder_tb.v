module half_adder_tb();
reg a,b;
wire s,c;
integer i;

//dut- design under test
half_adder dut(a,b,s,c);


initial
begin
a=1'b0;
b=1'b0;
end

initial
begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
//Delay to track the opertaions 00,01,10,11
#10;
end
end

//Log the test case for the half adder using monitor
initial
$monitor("input A=%b  B=%b and output Sum=%b  Carry=%b ",a,b,s,c);

//finish with the delay to capture the simulation 

initial #200 $finish();

endmodule