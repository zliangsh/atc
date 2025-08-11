clear;clc;close all;

inputData = load('32SP3_2.log').';
ConfigData = (inputData(1:47301));
% ParaInfo.AntPortNum = ConfigData(72);
ParaInfo.CellNum = bitand(ConfigData(1),15);
ParaInfo.Cell_Index = bitand(bitshift(ConfigData(1),-8),15);
ParaInfo.nFrame = bitand(ConfigData(2),65535);
ParaInfo.nSlot = bitand(bitshift(ConfigData(2),-16),15);
% ConfigData
ParaInfo.Count = ConfigData(3);
ParaInfo.return_addr_1 = ConfigData(4);
ParaInfo.return_addr_2 = ConfigData(5);
ParaInfo.m_uiTBS1 =  bitand(ConfigData(6),65535);
ParaInfo.m_uiTBS2 =   bitand(bitshift(ConfigData(6),-16),15);
ParaInfo.Harq_id = bitand(ConfigData(7),15);
ParaInfo.NewDataFlag = bitand(bitshift(ConfigData(7),-8),15);
ParaInfo.m_ucC = bitand(bitshift(ConfigData(7),-16),15);
ParaInfo.m_ucOpCbCrc = bitand(bitshift(ConfigData(7),-24),15);
ParaInfo.m_unK =  bitand(ConfigData(8),65535);
ParaInfo.m_unK1 =   bitand(bitshift(ConfigData(8),-16),65535);
ParaInfo.m_ucCbCrcType = bitand(ConfigData(9),15);
ParaInfo.m_ucBasic_Graph = bitand(bitshift(ConfigData(9),-8),15);
ParaInfo.m_uciLs = bitand(bitshift(ConfigData(9),-16),15);
ParaInfo.m_ucZj = bitand(bitshift(ConfigData(9),-24),15);
ParaInfo.m_unZc =  bitand(ConfigData(10),65535);
ParaInfo.m_unN_add2Zc = bitand(bitshift(ConfigData(10),-16),65535);
ParaInfo.m_unNcb =  bitand(ConfigData(11),65535);
ParaInfo.m_unE = bitand(bitshift(ConfigData(11),-16),65535);
ParaInfo.m_unE1 =  bitand(ConfigData(12),65535);
ParaInfo.Null_start = bitand(bitshift(ConfigData(12),-16),65535);
ParaInfo.Null_end =  bitand(ConfigData(13),65535);
ParaInfo.m_unk0 = bitand(bitshift(ConfigData(13),-16),65535);
ParaInfo.TbCrcType = bitand(ConfigData(14),15);
ParaInfo.aucE_c_start = bitand(bitshift(ConfigData(14),-8),15);
ParaInfo.dmrs_Nrb = bitand(bitshift(ConfigData(14),-16),65535);
ParaInfo.m_ucQm = bitand(ConfigData(15),15);
ParaInfo.NL = bitand(bitshift(ConfigData(15),-8),15);
ParaInfo.dmrs_Nzc = bitand(bitshift(ConfigData(15),-16),65535);
ParaInfo.UCI_Type = bitand(ConfigData(16),15);
ParaInfo.UCI_DataBlockSize = bitand(bitshift(ConfigData(16),-8),15);
ParaInfo.UCI_Out_Type = bitand(bitshift(ConfigData(16),-16),15);
ParaInfo.UCI_loop1_Intlv(0) = bitand(bitshift(ConfigData(16),-24),15);% + bitshift(bitand(ConfigData(17),15),8);
ParaInfo.UCI_loop1_Count(0) = bitand(bitshift(ConfigData(7),-24),15);
% UCI_loop1_symbol0_Intlv(15:8)
% UCI_loop1_symbol0_Count(7:0)
% UCI_loop1_symbol0_Count(15:8)
% 。。。。
% UCI_loop1_symbol13_Intlv(7:0)
% UCI_loop1_symbol13_Intlv(15:8)
% UCI_loop1_symbol13_Count(7:0)
% UCI_loop1_symbol13_Count(15:8)
% UCI_loop2_symbol0_Intlv(7:0)
% UCI_loop2_symbol0_Intlv(15:8)
% UCI_loop2_symbol0_Count(7:0)
% UCI_loop2_symbol0_Count(15:8)
% 。。。
% UCI_loop3_symbol0_Intlv(7:0)
% UCI_loop3_symbol0_Intlv(15:8)
% UCI_loop3_symbol0_Count(7:0)
% UCI_loop3_symbol0_Count(15:8)
% 。。。
% UCI_OutLen_loop1(7:0)
% UCI_OutLen_loop1(15:8)
% UCI_OutLen_loop2(7:0)
% UCI_OutLen_loop2(15:8)
% UCI_OutLen_loop3(7:0)
% UCI_OutLen_loop3(15:8)
% m_uiCinit(7:0)
% m_uiCinit(15:8)
% m_uiCinit(23:16)
% m_uiCinit(31:24)
% m_uiScramblingBitLen(7:0)
% m_uiScramblingBitLen(15:8)
% m_uiScramblingBitLen(23:16)
% m_uiScramblingBitLen(31:24)
% TP_idftSize(7:0)
% TP_idftSize(15:8)
% IDFT_scale（7:0）
% IDFT_Div(7:0)
% Ant_portNum(7:0)
% dmrs_u_symbol0(7:0)
% Mimo_flag(7:0)
% dmrs_u_symbol1(7:0)
% Matrix_0_I(7:0)
% W_0_I(15:8)
% W_0_Q(7:0)
% W_0_Q(15:8)
% W_1_I(7:0)
% W_1_I(15:8)
% W_1_Q(7:0)
% W_1_Q(15:8)
% 。。。
% W_15_I(7:0)
% W_15_I(15:8)
% W_15_Q(7:0)
% W_15_Q(15:8)
% PTRS_L_Mask(7:0)
% PTRS_L_Mask(15:8)
% k_offset_ant0(7:0)
% k_offset_ant1(7:0)
% k_offset_ant2(7:0)
% k_offset_ant3(7:0)
% k_intlv(7:0)
% PTRS_OuputNumAnt0(7:0)
% PTRS_OuputNumAnt1(7:0)
% PTRS_OuputNumAnt2(7:0)
% PTRS_OuputNumAnt3(7:0)
% dmrs_q_Nzc_symbol0(7:0)
% dmrs_q_Nzc_symbol0(15:8)
% dmrs_q_Nzc_symbol0(23:16)
% dmrs_q_Nzc_symbol0(31:24)
% reserve
% ZcSeqOrGold(7:0)
% dmrs_l_calcH(7:0)
% dmrs_l_calcH(15:8)
% dmrs_calcFreqErrorFlag(7:0)
% DmrsCinit(7:0)
% DmrsCinit(15:8)
% DmrsCinit(23:16)
% DmrsCinit(31:24)
% DmrsCinit_2(7:0)
% DmrsCinit_2(15:8)
% DmrsCinit_2(23:16)
% DmrsCinit_2(31:24)
% dmrs_wf(7:0)
% dmrs_wt(7:0)
% symb_Ndmrs（7:0）
% symb_Ndmrs（15:8）
% dmrs_k_bit_map_ant0(7:0)
% dmrs_k_bit_map_ant0(15:8)
% dmrs_k_bit_map_ant1(7:0)
% dmrs_k_bit_map_ant1(15:8)
% dmrs_k_bit_map_ant2(7:0)
% dmrs_k_bit_map_ant2(15:8)
% dmrs_k_bit_map_ant3(7:0)
% dmrs_k_bit_map_ant3(15:8)
% dmrs_l_bit_map(7:0)
% dmrs_l_bit_map(15:8)
% symb_RE_Total（7:0）
% symb_RE_Total（15:8）
% overlapFlag(7:0)
% DmrsAndRbAllocType(7:0)
% band_offsetB_p(7:0)
% band_offsetB_p(15:8)
% ratioEPRE(7:0)
% ratioEPRE(15:8)
% pos_L0_L1_and_lengthH[7:0]
% pos_L0_L1_and_lengthH[15:8]
% pusch_l_map(7:0)
% pusch_l_map(15:8)
% pusch_rb_map(7:0)
% pusch_rb_map(15:8)
% pusch_rb_map(23:16)
% pusch_rb_map(31:24)
% pusch_rb_map(39:32)
% pusch_rb_map(47:40)
% pusch_rb_map(55:48)
% pusch_rb_map(63:56)
% pusch_rb_map(71:64)
% pusch_rb_map(79:72)
% pusch_rb_map(87:80)
% pusch_rb_map(95:88)
% pusch_rb_map(103:96)
% pusch_rb_map(111:104)
% pusch_rb_map(119:112)
% pusch_rb_map(127:120)
% pusch_rb_map(135:128)
% pusch_rb_map(143:136)
% pusch_rb_map(151:144)
% pusch_rb_map(159:152)
% pusch_rb_map(167:160)
% pusch_rb_map(175:168)
% pusch_rb_map(183:176)
% pusch_rb_map(191:184)
% pusch_rb_map(199:192)
% pusch_rb_map(207:200)
% pusch_rb_map(215:208)
% pusch_rb_map(223:216)
% pusch_rb_map(231:224)
% pusch_rb_map(239:232)
% pusch_rb_map(247:240)
% pusch_rb_map(255:248)
% pusch_rb_map(263:256)
% pusch_rb_map(271:264)
% pusch_rb_map(279:272)
% mappingReOffset(7:0)
% frequencyOffset(7:0)
% frequencyOffset(15:8)
% secondHopinglstart(7:0)
% dmrsOffsetBittoPointA(7:0)
% dmrsOffsetBittoPointA(15:8)
% dmrs_q_Nzc_symbol1(7:0)
% dmrs_q_Nzc_symbol1(15:8)
% dmrs_q_Nzc_symbol1(23:16)
% dmrs_q_Nzc_symbol1(31:24)
% reserve
% pucch_SymbolIndex_0(7:0)
% reserve
% pucch_RENum_0(7:0)
% pucch_RENum1_0(7:0)
% pucch_ReOffset_0(7:0)
% pucch_ReOffset_0(15:8)
% pucch_ReOffset1_0(7:0)
% pucch_ReOffset1_0(15:8)
% 。。。
% pucch_SymbolIndex_13(7:0)
% reserve
% pucch_RENum_13(7:0)
% pucch_RENum1_13(7:0)
% pucch_ReOffset_13(7:0)
% pucch_ReOffset_13(15:8)
% pucch_ReOffset1_13(7:0)
% pucch_ReOffset1_13(15:8)
% SRS_SymbolIndex_0(7:0)
% SRS_Intlv_0（7:0）
% SRS_ReOffset_0(7:0)
% SRS_ReOffset_0(15:8)
% SRS_RENum_0(7:0)
% SRS_RENum_0(15:8)
% SRS_SymbolIndex_1(7:0)
% SRS_Intlv_1（7:0）
% SRS_ReOffset_1(7:0)
% SRS_ReOffset_1(15:8)
% SRS_RENum_1(7:0)
% SRS_RENum_1(15:8)
% PTRS_OuputNumPerSlotAnt0(7:0)
% PTRS_OuputNumPerSlotAnt0(15:8)
% PTRS_OuputNumPerSlotAnt1(7:0)
% PTRS_OuputNumPerSlotAnt1(15:8)
% PTRS_OuputNumPerSlotAnt2(7:0)
% PTRS_OuputNumPerSlotAnt2(15:8)
% PTRS_OuputNumPerSlotAnt3(7:0)
% PTRS_OuputNumPerSlotAnt3(15:8)
% pusch_secondrb_map(7:0)
% pusch_secondrb_map(15:8)
% pusch_secondrb_map(23:16)
% pusch_secondrb_map(31:24)
% pusch_secondrb_map(39:32)
% pusch_secondrb_map(47:40)
% pusch_secondrb_map(55:48)
% pusch_secondrb_map(63:56)
% pusch_secondrb_map(71:64)
% pusch_secondrb_map(79:72)
% pusch_secondrb_map(87:80)
% pusch_secondrb_map(95:88)
% pusch_secondrb_map(103:96)
% pusch_secondrb_map(111:104)
% pusch_secondrb_map(119:112)
% pusch_secondrb_map(127:120)
% pusch_secondrb_map(135:128)
% pusch_secondrb_map(143:136)
% pusch_secondrb_map(151:144)
% pusch_secondrb_map(159:152)
% pusch_secondrb_map(167:160)
% pusch_secondrb_map(175:168)
% pusch_secondrb_map(183:176)
% pusch_secondrb_map(191:184)
% pusch_secondrb_map(199:192)
% pusch_secondrb_map(207:200)
% pusch_secondrb_map(215:208)
% pusch_secondrb_map(223:216)
% pusch_secondrb_map(231:224)
% pusch_secondrb_map(239:232)
% pusch_secondrb_map(247:240)
% pusch_secondrb_map(255:248)
% pusch_secondrb_map(263:256)
% pusch_secondrb_map(271:264)
% pusch_secondrb_map(279:272)
% dc_re_shield(7:0) 
% dc_re_shield(15:8)















