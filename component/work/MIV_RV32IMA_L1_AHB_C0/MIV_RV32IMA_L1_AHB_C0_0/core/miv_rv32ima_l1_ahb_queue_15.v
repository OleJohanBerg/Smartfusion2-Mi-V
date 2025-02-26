// Copyright (c) 2017, Microsemi Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROSEMI CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// APACHE LICENSE
// Copyright (c) 2017, Microsemi Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`ifndef RANDOMIZE_REG_INIT 
	 `define RANDOMIZE_REG_INIT 
 `endif
`ifndef RANDOMIZE_MEM_INIT 
	 `define RANDOMIZE_MEM_INIT 
 `endif
`ifndef RANDOMIZE 
	 `define RANDOMIZE 
`endif

`timescale 1ns/10ps
module MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_QUEUE_15( // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106456.2]
  input   clock, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106457.4]
  input   reset, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106458.4]
  output  io_enq_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106459.4]
  input   io_enq_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106459.4]
  output  io_deq_valid // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106459.4]
);
  reg  value; // @[Counter.scala 26:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106462.4]
  reg [31:0] _RAND_0;
  reg  value_1; // @[Counter.scala 26:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106463.4]
  reg [31:0] _RAND_1;
  reg  maybe_full; // @[Decoupled.scala 214:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106464.4]
  reg [31:0] _RAND_2;
  wire  _T_28; // @[Decoupled.scala 216:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106465.4]
  wire  _T_30; // @[Decoupled.scala 217:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106466.4]
  wire  empty; // @[Decoupled.scala 217:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106467.4]
  wire  _T_31; // @[Decoupled.scala 218:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106468.4]
  wire  do_enq; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106469.4]
  wire [1:0] _T_39; // @[Counter.scala 35:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106479.6]
  wire  _T_40; // @[Counter.scala 35:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106480.6]
  wire  _GEN_4; // @[Decoupled.scala 222:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106475.4]
  wire [1:0] _T_43; // @[Counter.scala 35:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106485.6]
  wire  _T_44; // @[Counter.scala 35:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106486.6]
  wire  _GEN_5; // @[Decoupled.scala 226:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106483.4]
  wire  _T_45; // @[Decoupled.scala 229:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106489.4]
  wire  _GEN_6; // @[Decoupled.scala 229:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106490.4]
  wire  _T_47; // @[Decoupled.scala 233:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106493.4]
  wire  _T_49; // @[Decoupled.scala 234:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106495.4]
  assign _T_28 = value == value_1; // @[Decoupled.scala 216:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106465.4]
  assign _T_30 = maybe_full == 1'h0; // @[Decoupled.scala 217:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106466.4]
  assign empty = _T_28 & _T_30; // @[Decoupled.scala 217:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106467.4]
  assign _T_31 = _T_28 & maybe_full; // @[Decoupled.scala 218:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106468.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106469.4]
  assign _T_39 = value + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106479.6]
  assign _T_40 = _T_39[0:0]; // @[Counter.scala 35:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106480.6]
  assign _GEN_4 = do_enq ? _T_40 : value; // @[Decoupled.scala 222:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106475.4]
  assign _T_43 = value_1 + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106485.6]
  assign _T_44 = _T_43[0:0]; // @[Counter.scala 35:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106486.6]
  assign _GEN_5 = io_deq_valid ? _T_44 : value_1; // @[Decoupled.scala 226:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106483.4]
  assign _T_45 = do_enq != io_deq_valid; // @[Decoupled.scala 229:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106489.4]
  assign _GEN_6 = _T_45 ? do_enq : maybe_full; // @[Decoupled.scala 229:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106490.4]
  assign _T_47 = empty == 1'h0; // @[Decoupled.scala 233:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106493.4]
  assign _T_49 = _T_31 == 1'h0; // @[Decoupled.scala 234:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@106495.4]
  assign io_enq_ready = _T_49;
  assign io_deq_valid = _T_47;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  value = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  value_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  maybe_full = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (do_enq) begin
        value <= _T_40;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (io_deq_valid) begin
        value_1 <= _T_44;
      end
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (_T_45) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
