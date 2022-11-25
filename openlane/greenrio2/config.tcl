set ::env(DESIGN_NAME) "core_top"
set ::env(DESIGN_IS_CORE) 1
set ::env(CLOCK_PERIOD) "40"
set ::env(CLOCK_PORT) "clk"
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(ROUTING_CORES) 48
set ::env(FP_SIZING) "absolute"
set ::env(DIE_AREA) "0 0 4000 4000"
set ::env(PL_TARGET_DENSITY) 0.32
set ::env(DIODE_INSERTION_STRATEGY) 4
set ::env(SYNTH_STRATEGY) "AREA 0"
set ::env(SYNTH_MAX_FANOUT) 20
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(RUN_SPEF_EXTRACTION) 0
set ::env(GRT_ALLOW_CONGESTION) 1
set ::env(VERILOG_FILES) "\
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/params.vh \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/hehe_cfg.vh \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/csr/csr_regfile.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rcu/unit/counter/configurable_counter.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rcu/unit/f2if2o/f2if2o.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/decode/rvc_decoder.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/decode/rv_decoder.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/decode/decode.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/csr/excep_ctrl.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rcu/unit/counter/counter.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rcu/unit/fifo/fifo_for_freelist.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/fetch/btb.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/fetch/gshare.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/fetch/ins_buffer.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/fetch/fetch.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/counter2.sv \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Basic/hw/CountOne.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Basic/hw/MuxOH.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Basic/hw/OH2UInt.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Basic/hw/PLRU.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Basic/hw/PLRUTree.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Basic/hw/PriorityMux.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Basic/hw/StreamFIFO.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Basic/hw/SyncFIFO.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Queue/hw/AgeMatrixSelector.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Queue/hw/QueueManager.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Queue/hw/StaticPrioritySelector.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Queue/hw/FIAO/FIAOWithAgeMatrix.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Queue/hw/FIAO/FIAOWithQueueManager.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/Queue/hw/FIFO/MultiPortStreamFIFO.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/StdDFF/dv/DFFUncertainChecker.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/StdDFF/hw/DFF.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/StdDFF/hw/DFFE.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/StdDFF/hw/DFFR.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/utils/commoncell/src/StdDFF/hw/DFFRE.sv \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rcu/unit/oldest2_abitter/arbiter_base.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/lsuv1/lsu_agu.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/lsuv1/lsu_bus_ctrl.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/lsuv1/lsu_lsq_entry.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/lsuv1/lsu_lsq.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/lsuv1/lsu_mc.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/lsuv1/lsu_pma_checker.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/lsuv1/lsu_wb_arb.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/lsuv1/lsuv1.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/csr/csr.sv \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/fu/alu.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/fu/div.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/fu/lowRisc_mul_fast.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/fu/md.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/fu/fu.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rvh_mmu_v/rvh_ptw.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rvh_mmu_v/rvh_tlb_arbiter.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rvh_mmu_v/rvh_pmp/rvh_pmp.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rvh_mmu_v/rvh_pmp/rvh_pmp_entry.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rvh_mmu_v/rvh_dtlb.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rvh_mmu_v/rvh_itlb.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rvh_mmu_v/rvh_mmu_mshr.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rvh_mmu_v/rvh_mmu.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rvh_mmu_v/rvh_monolithic_mmu.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rcu/unit/physical_regfile/physical_regfile.sv \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rcu/unit/f2if2o/f2if2o_freelist.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rcu/unit/oldest2_abitter_bps/oldest2_abitter_bps.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rcu/unit/oldest2_abitter_bps_lss/oldest2_abitter_bps_lss.v \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/rcu/rcu.sv \
	 $::env(DESIGN_DIR)/../../verilog/GreenRio2/core.sv"
 set ::env(LEC_ENABLE) 0
 set ::env(RUN_CVC) 0
 set ::env(USE_ARC_ANTENNA_CHECK) "1"
 set ::env(RT_MAX_LAYER) {met5}
 set ::env(QUIT_ON_TIMING_VIOLATIONS) "0"
 set ::env(QUIT_ON_MAGIC_DRC) "0"
 set ::env(QUIT_ON_LVS_ERROR) "0"
 set ::env(QUIT_ON_SLEW_VIOLATIONS) "0"
 set ::env(RUN_KLAYOUT_XOR) "0"
 set ::env(KLAYOUT_XOR_GDS) "0"
 set ::env(KLAYOUT_XOR_XML) "0"
 set ::env(RUN_KLAYOUT) "0"
 set ::env(RUN_MAGIC_DRC) 0
 set ::env(RUN_KLAYOUT_DRC) 0
