`include "hw1.v"


module demorgan_test ();
	reg A, B;					// Primary test inputs
// (~A)*(~B)
	// Instantiate device/module under test
	wire nA, nB, nAandnB;		// Test outputs
	// Module to be tested
	demorgan_1 dut1(A, B, nA, nB, nAandnB);	

// ~(A*B)
	// Instantiate device/module under test
	wire AandB, nAandB;		// test outputs
	// Module to be tested
	demorgan_2 dut2(A, B, AandB, nAandB);

// (~A)+(~B)
	wire nAornB;		// Test outputs
	demorgan_3 dut3(A, B, nA, nB, nAornB);

// ~(A+B)
	// Instantiate device/module under test
	wire AorB, nAorB;		// test outputs
	// Module to be tested
	demorgan_4 dut4(A, B, AorB, nAorB);

// Run sequence of test stimuli
  initial begin

    $display("A B | A*B | ~(A*B) ");
  	A=0;B=0; #1
  	$display("%b %b | %b |    %b ", A,B, AandB, nAandB);
  	A=0;B=1; #1
  	$display("%b %b | %b |    %b ", A,B, AandB, nAandB);
  	A=1;B=0; #1
  	$display("%b %b | %b |    %b ", A,B, AandB, nAandB);
  	A=1;B=1; #1
  	$display("%b %b | %b |    %b ", A,B, AandB, nAandB);

  	$display("A B | ~A ~B | (~A)+(~B) ");            
    A=0;B=0; #1                                 
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);
    A=0;B=1; #1                                 
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);

    $display("A B | ~A ~B | (~A)*(~B) ");            
    A=0;B=0; #1                                 
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=0;B=1; #1                                 
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);

    $display("A B | A+B | ~(A+B) ");
  	A=0;B=0; #1
  	$display("%b %b | %b |    %b ", A,B, AorB, nAorB);
  	A=0;B=1; #1
  	$display("%b %b | %b |    %b ", A,B, AorB, nAorB);
  	A=1;B=0; #1
  	$display("%b %b | %b |    %b ", A,B, AorB, nAorB);
  	A=1;B=1; #1
  	$display("%b %b | %b |    %b ", A,B, AorB, nAorB);
  end

endmodule    // End demorgan_test
