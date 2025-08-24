SPI Master and Slave (Verilog)
📌 Overview

This project implements a Serial Peripheral Interface (SPI) in SystemVerilog, including both Master and Slave modules.

SPI is a full-duplex, synchronous communication protocol widely used to connect microcontrollers, sensors, and peripherals.
This project is designed and tested on EDA Playground.

🔧 Features

✅ SPI Master – generates clock (SCLK), chip select (CS), and serial data (MOSI).

✅ SPI Slave – receives data from MOSI and sends response via MISO.

✅ Full-Duplex Communication – data is exchanged on every clock cycle.

✅ Parameterizable CPOL/CPHA – supports SPI mode configuration.

✅ Loopback Test – verifies correct data exchange between master and slave.
