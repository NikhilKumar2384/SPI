
module master_slave_tb;
  reg miso, start,reset;
  wire sclk;
  reg mosi;
  wire done,cs,done_sl;
  reg [1:0]mode;
  reg [7:0]data_tx,data_tx_sl;
  wire [7:0]data_rx,data_rx_sl;
  reg clk=0;
  
  

  
  master dut (.mosi(mosi),
              .clk(clk),
              .start(start),
              .reset(reset),
              .miso(miso),
              .done(done),
              .cs(cs),
              .sclk(sclk),
              .mode(mode),
              .data_tx(data_tx),
              .data_rx(data_rx));
  
  slave dut1 (.miso(miso),
              .mosi(mosi),
              .sclk(sclk),
              .cs(cs),
              .mode(mode),
              .reset(reset),
              .data_tx_sl(data_tx_sl),
              .data_rx_sl(data_rx_sl),
              .done_sl(done_sl),
              .clk(clk)
              );
  
  
  always #10 clk<=~clk;
  
  initial
    begin 
      $dumpfile("master_slave_tb.vcd");
      $dumpvars(0,master_slave_tb);
     reset <=1;
      #1
     
     
      reset<=0;
      mode<=2'b10;
      #100
      start<=1;
      #10
      
        start <=0;
      data_tx_sl<=8'b11100111;
      data_tx<=   8'b10111101;
      
     #15000
   //   mode<=2'b00;
      start<=1;
      data_tx_sl<=8'b1011101;
        data_tx<=8'b1101101;
      #100
      start<=0;
      
      
       #15000
   //   mode<=2'b00;
      start<=1;
        data_tx<=8'b11110000;
       data_tx_sl<=8'b11010100;
      #100
      start<=0;
      
  
      
        #15000
    //  mode<=2'b11;
      start<=1;
        data_tx<=8'b1101101;
        data_tx_sl<=8'b11001110;
      #100
      start<=0;
      
    #13000
    
      $finish;
    end
  
  
  endmodule
