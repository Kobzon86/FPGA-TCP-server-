// ethernet_sys_ssram_0.v

// This file was auto-generated from altera_up_avalon_ssram_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module ethernet_sys_ssram_0 (
		input  wire        clk_clk,                          //                clk.clk
		input  wire        reset_reset_n,                    //              reset.reset_n
		input  wire [19:0] avalon_ssram_slave_address,       // avalon_ssram_slave.address
		input  wire [2:0]  avalon_ssram_slave_burstcount,    //                   .burstcount
		input  wire        avalon_ssram_slave_read,          //                   .read
		input  wire        avalon_ssram_slave_write,         //                   .write
		output wire        avalon_ssram_slave_waitrequest,   //                   .waitrequest
		output wire        avalon_ssram_slave_readdatavalid, //                   .readdatavalid
		input  wire [3:0]  avalon_ssram_slave_byteenable,    //                   .byteenable
		output wire [31:0] avalon_ssram_slave_readdata,      //                   .readdata
		input  wire [31:0] avalon_ssram_slave_writedata,     //                   .writedata
		input  wire        avalon_ssram_slave_lock,          //                   .lock
		input  wire        avalon_ssram_slave_debugaccess,   //                   .debugaccess
		output wire [3:0]  external_interface_ssram_be_n,    // external_interface.ssram_be_n
		output wire [0:0]  external_interface_ssram_we_n,    //                   .ssram_we_n
		inout  wire [31:0] external_interface_fs_dq,         //                   .fs_dq
		output wire [0:0]  external_interface_ssram_adsc_n,  //                   .ssram_adsc_n
		output wire [0:0]  external_interface_ssram_oe_n,    //                   .ssram_oe_n
		output wire [19:0] external_interface_fs_addr,       //                   .fs_addr
		output wire [0:0]  external_interface_ssram_cs_n     //                   .ssram_cs_n
	);

	wire         tri_state_bridge_ssram_pinsharer_tcm_fs_dq_outen;      // tri_state_bridge_ssram_pinSharer:fs_dq_outen -> ssram_tri_state_bridge:tcs_fs_dq_outen
	wire         tri_state_bridge_ssram_pinsharer_tcm_request;          // tri_state_bridge_ssram_pinSharer:request -> ssram_tri_state_bridge:request
	wire  [31:0] tri_state_bridge_ssram_pinsharer_tcm_fs_dq_in;         // ssram_tri_state_bridge:tcs_fs_dq_in -> tri_state_bridge_ssram_pinSharer:fs_dq_in
	wire  [19:0] tri_state_bridge_ssram_pinsharer_tcm_fs_addr_out;      // tri_state_bridge_ssram_pinSharer:fs_addr -> ssram_tri_state_bridge:tcs_fs_addr
	wire   [3:0] tri_state_bridge_ssram_pinsharer_tcm_ssram_be_n_out;   // tri_state_bridge_ssram_pinSharer:ssram_be_n -> ssram_tri_state_bridge:tcs_ssram_be_n
	wire   [0:0] tri_state_bridge_ssram_pinsharer_tcm_ssram_adsc_n_out; // tri_state_bridge_ssram_pinSharer:ssram_adsc_n -> ssram_tri_state_bridge:tcs_ssram_adsc_n
	wire  [31:0] tri_state_bridge_ssram_pinsharer_tcm_fs_dq_out;        // tri_state_bridge_ssram_pinSharer:fs_dq -> ssram_tri_state_bridge:tcs_fs_dq
	wire         tri_state_bridge_ssram_pinsharer_tcm_grant;            // ssram_tri_state_bridge:grant -> tri_state_bridge_ssram_pinSharer:grant
	wire   [0:0] tri_state_bridge_ssram_pinsharer_tcm_ssram_cs_n_out;   // tri_state_bridge_ssram_pinSharer:ssram_cs_n -> ssram_tri_state_bridge:tcs_ssram_cs_n
	wire   [0:0] tri_state_bridge_ssram_pinsharer_tcm_ssram_we_n_out;   // tri_state_bridge_ssram_pinSharer:ssram_we_n -> ssram_tri_state_bridge:tcs_ssram_we_n
	wire   [0:0] tri_state_bridge_ssram_pinsharer_tcm_ssram_oe_n_out;   // tri_state_bridge_ssram_pinSharer:ssram_oe_n -> ssram_tri_state_bridge:tcs_ssram_oe_n
	wire         ssram_tri_state_controller_tcm_data_outen;             // ssram_tri_state_controller:tcm_data_outen -> tri_state_bridge_ssram_pinSharer:tcs0_data_outen
	wire         ssram_tri_state_controller_tcm_outputenable_n_out;     // ssram_tri_state_controller:tcm_outputenable_n_out -> tri_state_bridge_ssram_pinSharer:tcs0_outputenable_n_out
	wire         ssram_tri_state_controller_tcm_request;                // ssram_tri_state_controller:tcm_request -> tri_state_bridge_ssram_pinSharer:tcs0_request
	wire   [3:0] ssram_tri_state_controller_tcm_byteenable_n_out;       // ssram_tri_state_controller:tcm_byteenable_n_out -> tri_state_bridge_ssram_pinSharer:tcs0_byteenable_n_out
	wire         ssram_tri_state_controller_tcm_write_n_out;            // ssram_tri_state_controller:tcm_write_n_out -> tri_state_bridge_ssram_pinSharer:tcs0_write_n_out
	wire         ssram_tri_state_controller_tcm_begintransfer_n_out;    // ssram_tri_state_controller:tcm_begintransfer_n_out -> tri_state_bridge_ssram_pinSharer:tcs0_begintransfer_n_out
	wire         ssram_tri_state_controller_tcm_grant;                  // tri_state_bridge_ssram_pinSharer:tcs0_grant -> ssram_tri_state_controller:tcm_grant
	wire         ssram_tri_state_controller_tcm_chipselect_n_out;       // ssram_tri_state_controller:tcm_chipselect_n_out -> tri_state_bridge_ssram_pinSharer:tcs0_chipselect_n_out
	wire  [19:0] ssram_tri_state_controller_tcm_address_out;            // ssram_tri_state_controller:tcm_address_out -> tri_state_bridge_ssram_pinSharer:tcs0_address_out
	wire  [31:0] ssram_tri_state_controller_tcm_data_out;               // ssram_tri_state_controller:tcm_data_out -> tri_state_bridge_ssram_pinSharer:tcs0_data_out
	wire  [31:0] ssram_tri_state_controller_tcm_data_in;                // tri_state_bridge_ssram_pinSharer:tcs0_data_in -> ssram_tri_state_controller:tcm_data_in
	wire         rst_controller_reset_out_reset;                        // rst_controller:reset_out -> [ssram_tri_state_bridge:reset, ssram_tri_state_controller:reset_reset, tri_state_bridge_ssram_pinSharer:reset_reset]

	ethernet_sys_ssram_0_ssram_tri_state_bridge ssram_tri_state_bridge (
		.clk              (clk_clk),                                               //   clk.clk
		.reset            (rst_controller_reset_out_reset),                        // reset.reset
		.request          (tri_state_bridge_ssram_pinsharer_tcm_request),          //   tcs.request
		.grant            (tri_state_bridge_ssram_pinsharer_tcm_grant),            //      .grant
		.tcs_ssram_be_n   (tri_state_bridge_ssram_pinsharer_tcm_ssram_be_n_out),   //      .ssram_be_n_out
		.tcs_ssram_we_n   (tri_state_bridge_ssram_pinsharer_tcm_ssram_we_n_out),   //      .ssram_we_n_out
		.tcs_fs_dq        (tri_state_bridge_ssram_pinsharer_tcm_fs_dq_out),        //      .fs_dq_out
		.tcs_fs_dq_outen  (tri_state_bridge_ssram_pinsharer_tcm_fs_dq_outen),      //      .fs_dq_outen
		.tcs_fs_dq_in     (tri_state_bridge_ssram_pinsharer_tcm_fs_dq_in),         //      .fs_dq_in
		.tcs_ssram_adsc_n (tri_state_bridge_ssram_pinsharer_tcm_ssram_adsc_n_out), //      .ssram_adsc_n_out
		.tcs_ssram_oe_n   (tri_state_bridge_ssram_pinsharer_tcm_ssram_oe_n_out),   //      .ssram_oe_n_out
		.tcs_fs_addr      (tri_state_bridge_ssram_pinsharer_tcm_fs_addr_out),      //      .fs_addr_out
		.tcs_ssram_cs_n   (tri_state_bridge_ssram_pinsharer_tcm_ssram_cs_n_out),   //      .ssram_cs_n_out
		.ssram_be_n       (external_interface_ssram_be_n),                         //   out.ssram_be_n
		.ssram_we_n       (external_interface_ssram_we_n),                         //      .ssram_we_n
		.fs_dq            (external_interface_fs_dq),                              //      .fs_dq
		.ssram_adsc_n     (external_interface_ssram_adsc_n),                       //      .ssram_adsc_n
		.ssram_oe_n       (external_interface_ssram_oe_n),                         //      .ssram_oe_n
		.fs_addr          (external_interface_fs_addr),                            //      .fs_addr
		.ssram_cs_n       (external_interface_ssram_cs_n)                          //      .ssram_cs_n
	);

	ethernet_sys_ssram_0_ssram_tri_state_controller #(
		.TCM_ADDRESS_W                  (20),
		.TCM_DATA_W                     (32),
		.TCM_BYTEENABLE_W               (4),
		.TCM_READ_WAIT                  (3),
		.TCM_WRITE_WAIT                 (3),
		.TCM_SETUP_WAIT                 (3),
		.TCM_DATA_HOLD                  (3),
		.TCM_TURNAROUND_TIME            (2),
		.TCM_TIMING_UNITS               (1),
		.TCM_READLATENCY                (3),
		.TCM_SYMBOLS_PER_WORD           (4),
		.USE_READDATA                   (1),
		.USE_WRITEDATA                  (1),
		.USE_READ                       (0),
		.USE_WRITE                      (1),
		.USE_BYTEENABLE                 (1),
		.USE_CHIPSELECT                 (1),
		.USE_LOCK                       (0),
		.USE_ADDRESS                    (1),
		.USE_WAITREQUEST                (0),
		.USE_WRITEBYTEENABLE            (0),
		.USE_OUTPUTENABLE               (1),
		.USE_RESETREQUEST               (0),
		.USE_IRQ                        (0),
		.USE_RESET_OUTPUT               (0),
		.ACTIVE_LOW_READ                (0),
		.ACTIVE_LOW_LOCK                (0),
		.ACTIVE_LOW_WRITE               (1),
		.ACTIVE_LOW_CHIPSELECT          (1),
		.ACTIVE_LOW_BYTEENABLE          (1),
		.ACTIVE_LOW_OUTPUTENABLE        (1),
		.ACTIVE_LOW_WRITEBYTEENABLE     (0),
		.ACTIVE_LOW_WAITREQUEST         (0),
		.ACTIVE_LOW_BEGINTRANSFER       (1),
		.CHIPSELECT_THROUGH_READLATENCY (1)
	) ssram_tri_state_controller (
		.clk_clk                 (clk_clk),                                            //   clk.clk
		.reset_reset             (rst_controller_reset_out_reset),                     // reset.reset
		.uas_address             (avalon_ssram_slave_address),                         //   uas.address
		.uas_burstcount          (avalon_ssram_slave_burstcount),                      //      .burstcount
		.uas_read                (avalon_ssram_slave_read),                            //      .read
		.uas_write               (avalon_ssram_slave_write),                           //      .write
		.uas_waitrequest         (avalon_ssram_slave_waitrequest),                     //      .waitrequest
		.uas_readdatavalid       (avalon_ssram_slave_readdatavalid),                   //      .readdatavalid
		.uas_byteenable          (avalon_ssram_slave_byteenable),                      //      .byteenable
		.uas_readdata            (avalon_ssram_slave_readdata),                        //      .readdata
		.uas_writedata           (avalon_ssram_slave_writedata),                       //      .writedata
		.uas_lock                (avalon_ssram_slave_lock),                            //      .lock
		.uas_debugaccess         (avalon_ssram_slave_debugaccess),                     //      .debugaccess
		.tcm_write_n_out         (ssram_tri_state_controller_tcm_write_n_out),         //   tcm.write_n_out
		.tcm_begintransfer_n_out (ssram_tri_state_controller_tcm_begintransfer_n_out), //      .begintransfer_n_out
		.tcm_chipselect_n_out    (ssram_tri_state_controller_tcm_chipselect_n_out),    //      .chipselect_n_out
		.tcm_outputenable_n_out  (ssram_tri_state_controller_tcm_outputenable_n_out),  //      .outputenable_n_out
		.tcm_request             (ssram_tri_state_controller_tcm_request),             //      .request
		.tcm_grant               (ssram_tri_state_controller_tcm_grant),               //      .grant
		.tcm_address_out         (ssram_tri_state_controller_tcm_address_out),         //      .address_out
		.tcm_byteenable_n_out    (ssram_tri_state_controller_tcm_byteenable_n_out),    //      .byteenable_n_out
		.tcm_data_out            (ssram_tri_state_controller_tcm_data_out),            //      .data_out
		.tcm_data_outen          (ssram_tri_state_controller_tcm_data_outen),          //      .data_outen
		.tcm_data_in             (ssram_tri_state_controller_tcm_data_in)              //      .data_in
	);

	ethernet_sys_ssram_0_tri_state_bridge_ssram_pinSharer tri_state_bridge_ssram_pinsharer (
		.clk_clk                  (clk_clk),                                               //   clk.clk
		.reset_reset              (rst_controller_reset_out_reset),                        // reset.reset
		.request                  (tri_state_bridge_ssram_pinsharer_tcm_request),          //   tcm.request
		.grant                    (tri_state_bridge_ssram_pinsharer_tcm_grant),            //      .grant
		.fs_addr                  (tri_state_bridge_ssram_pinsharer_tcm_fs_addr_out),      //      .fs_addr_out
		.ssram_be_n               (tri_state_bridge_ssram_pinsharer_tcm_ssram_be_n_out),   //      .ssram_be_n_out
		.ssram_oe_n               (tri_state_bridge_ssram_pinsharer_tcm_ssram_oe_n_out),   //      .ssram_oe_n_out
		.ssram_adsc_n             (tri_state_bridge_ssram_pinsharer_tcm_ssram_adsc_n_out), //      .ssram_adsc_n_out
		.ssram_we_n               (tri_state_bridge_ssram_pinsharer_tcm_ssram_we_n_out),   //      .ssram_we_n_out
		.fs_dq                    (tri_state_bridge_ssram_pinsharer_tcm_fs_dq_out),        //      .fs_dq_out
		.fs_dq_in                 (tri_state_bridge_ssram_pinsharer_tcm_fs_dq_in),         //      .fs_dq_in
		.fs_dq_outen              (tri_state_bridge_ssram_pinsharer_tcm_fs_dq_outen),      //      .fs_dq_outen
		.ssram_cs_n               (tri_state_bridge_ssram_pinsharer_tcm_ssram_cs_n_out),   //      .ssram_cs_n_out
		.tcs0_request             (ssram_tri_state_controller_tcm_request),                //  tcs0.request
		.tcs0_grant               (ssram_tri_state_controller_tcm_grant),                  //      .grant
		.tcs0_address_out         (ssram_tri_state_controller_tcm_address_out),            //      .address_out
		.tcs0_byteenable_n_out    (ssram_tri_state_controller_tcm_byteenable_n_out),       //      .byteenable_n_out
		.tcs0_outputenable_n_out  (ssram_tri_state_controller_tcm_outputenable_n_out),     //      .outputenable_n_out
		.tcs0_begintransfer_n_out (ssram_tri_state_controller_tcm_begintransfer_n_out),    //      .begintransfer_n_out
		.tcs0_write_n_out         (ssram_tri_state_controller_tcm_write_n_out),            //      .write_n_out
		.tcs0_data_out            (ssram_tri_state_controller_tcm_data_out),               //      .data_out
		.tcs0_data_in             (ssram_tri_state_controller_tcm_data_in),                //      .data_in
		.tcs0_data_outen          (ssram_tri_state_controller_tcm_data_outen),             //      .data_outen
		.tcs0_chipselect_n_out    (ssram_tri_state_controller_tcm_chipselect_n_out)        //      .chipselect_n_out
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule
