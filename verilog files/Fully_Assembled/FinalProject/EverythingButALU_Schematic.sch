<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="AiAIN(15:0)" />
        <signal name="AiBIN(15:0)" />
        <signal name="BWrtCTRL" />
        <signal name="AWrtCTRL" />
        <signal name="XLXN_11(15:0)" />
        <signal name="ALUOpCTRL(3:0)" />
        <signal name="isZero" />
        <signal name="XLXN_17(15:0)" />
        <signal name="AiA(15:0)" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="ImSlctCTRL" />
        <signal name="XLXN_28(15:0)" />
        <signal name="IR_OUT(15:0)" />
        <signal name="MemDatOut(15:0)" />
        <signal name="IR_OUT(11:0)" />
        <signal name="IR_OUT(9:0)" />
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="MemAdrsSlctCTRL" />
        <signal name="XLXN_37(15:0)" />
        <signal name="MemWCTRL" />
        <signal name="PCWrtCTRL" />
        <signal name="JumpCTRL" />
        <signal name="iorCTRL" />
        <signal name="RegWrtCTRL" />
        <signal name="MemOWCTRL" />
        <signal name="IRwrtCTRL" />
        <signal name="useRegCTRL" />
        <signal name="useFirstRegCTRL" />
        <signal name="wAdrsCTRL" />
        <signal name="wDatCTRL(1:0)" />
        <signal name="BEQoBNECTRL" />
        <signal name="isZero_inv" />
        <signal name="XLXN_58" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="BranchCTRL" />
        <signal name="ALUwrtCTRL" />
        <signal name="XLXN_66(15:0)" />
        <signal name="XLXN_67(15:0)" />
        <port polarity="Input" name="BWrtCTRL" />
        <port polarity="Input" name="AWrtCTRL" />
        <port polarity="Input" name="ALUOpCTRL(3:0)" />
        <port polarity="Input" name="ImSlctCTRL" />
        <port polarity="Output" name="MemDatOut(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="MemAdrsSlctCTRL" />
        <port polarity="Input" name="MemWCTRL" />
        <port polarity="Input" name="PCWrtCTRL" />
        <port polarity="Input" name="JumpCTRL" />
        <port polarity="Input" name="iorCTRL" />
        <port polarity="Input" name="RegWrtCTRL" />
        <port polarity="Input" name="MemOWCTRL" />
        <port polarity="Input" name="IRwrtCTRL" />
        <port polarity="Input" name="useRegCTRL" />
        <port polarity="Input" name="useFirstRegCTRL" />
        <port polarity="Input" name="wAdrsCTRL" />
        <port polarity="Input" name="wDatCTRL(1:0)" />
        <port polarity="Input" name="BEQoBNECTRL" />
        <port polarity="Input" name="BranchCTRL" />
        <port polarity="Input" name="ALUwrtCTRL" />
        <blockdef name="PCAddMuxMem_Schematic">
            <timestamp>2015-2-13T9:29:36</timestamp>
            <rect width="64" x="464" y="20" height="24" />
            <line x2="528" y1="32" y2="32" x1="464" />
            <rect width="64" x="0" y="-1132" height="24" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <rect width="64" x="0" y="-1068" height="24" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-1132" height="24" />
            <line x2="528" y1="-1120" y2="-1120" x1="464" />
            <rect width="64" x="464" y="-588" height="24" />
            <line x2="528" y1="-576" y2="-576" x1="464" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
            <rect width="400" x="64" y="-1152" height="1216" />
        </blockdef>
        <blockdef name="SignExtend">
            <timestamp>2015-2-13T9:31:34</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="ALU16bit">
            <timestamp>2015-2-13T9:11:55</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="register16bit">
            <timestamp>2015-2-13T0:31:4</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
        </blockdef>
        <blockdef name="MUX_OneBit_1">
            <timestamp>2015-2-13T9:41:5</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="PCAddMuxMem_Schematic" name="XLXI_1">
            <blockpin signalname="AiA(15:0)" name="AiACOPY(15:0)" />
            <blockpin signalname="wDatCTRL(1:0)" name="wDatCTRL(1:0)" />
            <blockpin signalname="wAdrsCTRL" name="wAdrsCTRL" />
            <blockpin signalname="useFirstRegCTRL" name="useFirstRegCTRL" />
            <blockpin signalname="useRegCTRL" name="useRegCTRL" />
            <blockpin signalname="IRwrtCTRL" name="IRwrtCTRL" />
            <blockpin signalname="MemOWCTRL" name="MemOWCTRL" />
            <blockpin signalname="RegWrtCTRL" name="RegWrtCTRL" />
            <blockpin signalname="iorCTRL" name="iorCTRL" />
            <blockpin signalname="JumpCTRL" name="CTRLJUMP" />
            <blockpin signalname="XLXN_58" name="CTRLBRIZ" />
            <blockpin signalname="PCWrtCTRL" name="PCWRT" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="MemWCTRL" name="MemWCTRL" />
            <blockpin signalname="XLXN_37(15:0)" name="ALUOut(15:0)" />
            <blockpin signalname="MemAdrsSlctCTRL" name="MemAdrsSlctCTRL" />
            <blockpin signalname="XLXN_28(15:0)" name="SEIMM(15:0)" />
            <blockpin signalname="AiAIN(15:0)" name="AiAOUT(15:0)" />
            <blockpin signalname="AiBIN(15:0)" name="AiBOUT(15:0)" />
            <blockpin signalname="MemDatOut(15:0)" name="MemDatOUT(15:0)" />
            <blockpin signalname="IR_OUT(15:0)" name="IR_OUT(15:0)" />
        </block>
        <block symbolname="SignExtend" name="XLXI_2">
            <blockpin signalname="XLXN_22" name="CLK" />
            <blockpin signalname="XLXN_23" name="reset" />
            <blockpin signalname="ImSlctCTRL" name="imSlct" />
            <blockpin signalname="IR_OUT(11:0)" name="in1(11:0)" />
            <blockpin signalname="IR_OUT(9:0)" name="in2(9:0)" />
            <blockpin signalname="XLXN_28(15:0)" name="outExtend(15:0)" />
        </block>
        <block symbolname="ALU16bit" name="XLXI_3">
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="ALUOpCTRL(3:0)" name="aluOp(3:0)" />
            <blockpin signalname="AiA(15:0)" name="aIn(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="bIn(15:0)" />
            <blockpin signalname="isZero" name="isZero" />
            <blockpin signalname="XLXN_66(15:0)" name="outPut(15:0)" />
        </block>
        <block symbolname="register16bit" name="XLXI_4">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="AWrtCTRL" name="write" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="AiAIN(15:0)" name="dataIn(15:0)" />
            <blockpin signalname="AiA(15:0)" name="dataOut(15:0)" />
        </block>
        <block symbolname="register16bit" name="XLXI_5">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="BWrtCTRL" name="write" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="AiBIN(15:0)" name="dataIn(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="dataOut(15:0)" />
        </block>
        <block symbolname="MUX_OneBit_1" name="XLXI_6">
            <blockpin signalname="isZero" name="in1" />
            <blockpin signalname="isZero_inv" name="in2" />
            <blockpin signalname="BEQoBNECTRL" name="ctrlSlct" />
            <blockpin signalname="XLXN_61" name="muxOut" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="isZero" name="I" />
            <blockpin signalname="isZero_inv" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="BranchCTRL" name="I0" />
            <blockpin signalname="XLXN_61" name="I1" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="register16bit" name="XLXI_9">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="ALUwrtCTRL" name="write" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="XLXN_66(15:0)" name="dataIn(15:0)" />
            <blockpin signalname="XLXN_37(15:0)" name="dataOut(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="800" y="1600" name="XLXI_1" orien="R0">
        </instance>
        <instance x="864" y="2016" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2288" y="1328" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1584" y="1072" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1584" y="1568" name="XLXI_5" orien="R0">
        </instance>
        <branch name="AiAIN(15:0)">
            <wire x2="1440" y1="480" y2="480" x1="1328" />
        </branch>
        <branch name="AiBIN(15:0)">
            <wire x2="1408" y1="1024" y2="1024" x1="1328" />
        </branch>
        <branch name="AiBIN(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1536" type="branch" />
            <wire x2="1584" y1="1536" y2="1536" x1="1488" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1472" type="branch" />
            <wire x2="1584" y1="1472" y2="1472" x1="1488" />
        </branch>
        <branch name="BWrtCTRL">
            <wire x2="1584" y1="1408" y2="1408" x1="1488" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1344" type="branch" />
            <wire x2="1584" y1="1344" y2="1344" x1="1488" />
        </branch>
        <branch name="AiAIN(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1040" type="branch" />
            <wire x2="1584" y1="1040" y2="1040" x1="1504" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="976" type="branch" />
            <wire x2="1584" y1="976" y2="976" x1="1504" />
        </branch>
        <branch name="AWrtCTRL">
            <wire x2="1584" y1="912" y2="912" x1="1504" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="848" type="branch" />
            <wire x2="1584" y1="848" y2="848" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1504" y="912" name="AWrtCTRL" orien="R180" />
        <iomarker fontsize="28" x="1488" y="1408" name="BWrtCTRL" orien="R180" />
        <branch name="XLXN_11(15:0)">
            <wire x2="2016" y1="1344" y2="1344" x1="2000" />
            <wire x2="2288" y1="1296" y2="1296" x1="2016" />
            <wire x2="2016" y1="1296" y2="1344" x1="2016" />
        </branch>
        <branch name="ALUOpCTRL(3:0)">
            <wire x2="2288" y1="1168" y2="1168" x1="2240" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1104" type="branch" />
            <wire x2="2288" y1="1104" y2="1104" x1="2240" />
        </branch>
        <branch name="isZero">
            <wire x2="2736" y1="1104" y2="1104" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1168" name="ALUOpCTRL(3:0)" orien="R180" />
        <branch name="AiA(15:0)">
            <wire x2="2064" y1="848" y2="848" x1="2000" />
        </branch>
        <branch name="AiA(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1232" type="branch" />
            <wire x2="2288" y1="1232" y2="1232" x1="2224" />
        </branch>
        <branch name="AiA(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="480" type="branch" />
            <wire x2="800" y1="480" y2="480" x1="720" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="864" y1="1792" y2="1792" x1="784" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="864" y1="1856" y2="1856" x1="784" />
        </branch>
        <branch name="ImSlctCTRL">
            <wire x2="864" y1="1920" y2="1920" x1="784" />
        </branch>
        <branch name="XLXN_28(15:0)">
            <wire x2="800" y1="1568" y2="1568" x1="768" />
            <wire x2="768" y1="1568" y2="1648" x1="768" />
            <wire x2="1248" y1="1648" y2="1648" x1="768" />
            <wire x2="1264" y1="1648" y2="1648" x1="1248" />
            <wire x2="1264" y1="1648" y2="2048" x1="1264" />
            <wire x2="1264" y1="2048" y2="2048" x1="1248" />
        </branch>
        <branch name="IR_OUT(15:0)">
            <wire x2="1424" y1="1632" y2="1632" x1="1328" />
        </branch>
        <branch name="MemDatOut(15:0)">
            <wire x2="1424" y1="1568" y2="1568" x1="1328" />
        </branch>
        <branch name="IR_OUT(11:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="2048" type="branch" />
            <wire x2="864" y1="2048" y2="2048" x1="784" />
        </branch>
        <branch name="IR_OUT(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="2112" type="branch" />
            <wire x2="864" y1="2112" y2="2112" x1="784" />
        </branch>
        <branch name="CLK">
            <wire x2="336" y1="1136" y2="1136" x1="288" />
        </branch>
        <branch name="RESET">
            <wire x2="336" y1="1200" y2="1200" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="1136" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="288" y="1200" name="RESET" orien="R180" />
        <branch name="MemAdrsSlctCTRL">
            <wire x2="800" y1="1504" y2="1504" x1="736" />
        </branch>
        <branch name="XLXN_37(15:0)">
            <wire x2="448" y1="1440" y2="2352" x1="448" />
            <wire x2="480" y1="2352" y2="2352" x1="448" />
            <wire x2="1408" y1="2352" y2="2352" x1="480" />
            <wire x2="736" y1="1440" y2="1440" x1="448" />
            <wire x2="800" y1="1440" y2="1440" x1="736" />
            <wire x2="3456" y1="1888" y2="1888" x1="1408" />
            <wire x2="1408" y1="1888" y2="2352" x1="1408" />
            <wire x2="3488" y1="1472" y2="1472" x1="3408" />
            <wire x2="3488" y1="1472" y2="1488" x1="3488" />
            <wire x2="3488" y1="1488" y2="1840" x1="3488" />
            <wire x2="3488" y1="1840" y2="1840" x1="3456" />
            <wire x2="3456" y1="1840" y2="1888" x1="3456" />
        </branch>
        <branch name="MemWCTRL">
            <wire x2="800" y1="1376" y2="1376" x1="736" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1312" type="branch" />
            <wire x2="800" y1="1312" y2="1312" x1="736" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1248" type="branch" />
            <wire x2="800" y1="1248" y2="1248" x1="736" />
        </branch>
        <branch name="PCWrtCTRL">
            <wire x2="800" y1="1184" y2="1184" x1="736" />
        </branch>
        <branch name="JumpCTRL">
            <wire x2="800" y1="1056" y2="1056" x1="736" />
        </branch>
        <branch name="iorCTRL">
            <wire x2="800" y1="992" y2="992" x1="736" />
        </branch>
        <branch name="RegWrtCTRL">
            <wire x2="800" y1="928" y2="928" x1="736" />
        </branch>
        <branch name="MemOWCTRL">
            <wire x2="800" y1="864" y2="864" x1="720" />
        </branch>
        <branch name="IRwrtCTRL">
            <wire x2="800" y1="800" y2="800" x1="736" />
        </branch>
        <branch name="useRegCTRL">
            <wire x2="800" y1="736" y2="736" x1="720" />
        </branch>
        <branch name="useFirstRegCTRL">
            <wire x2="800" y1="672" y2="672" x1="736" />
        </branch>
        <branch name="wAdrsCTRL">
            <wire x2="800" y1="608" y2="608" x1="720" />
        </branch>
        <branch name="wDatCTRL(1:0)">
            <wire x2="800" y1="544" y2="544" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="544" name="wDatCTRL(1:0)" orien="R180" />
        <iomarker fontsize="28" x="720" y="608" name="wAdrsCTRL" orien="R180" />
        <iomarker fontsize="28" x="736" y="672" name="useFirstRegCTRL" orien="R180" />
        <iomarker fontsize="28" x="720" y="736" name="useRegCTRL" orien="R180" />
        <iomarker fontsize="28" x="736" y="800" name="IRwrtCTRL" orien="R180" />
        <iomarker fontsize="28" x="720" y="864" name="MemOWCTRL" orien="R180" />
        <iomarker fontsize="28" x="736" y="928" name="RegWrtCTRL" orien="R180" />
        <iomarker fontsize="28" x="736" y="992" name="iorCTRL" orien="R180" />
        <iomarker fontsize="28" x="736" y="1056" name="JumpCTRL" orien="R180" />
        <iomarker fontsize="28" x="736" y="1184" name="PCWrtCTRL" orien="R180" />
        <iomarker fontsize="28" x="736" y="1376" name="MemWCTRL" orien="R180" />
        <iomarker fontsize="28" x="736" y="1504" name="MemAdrsSlctCTRL" orien="R180" />
        <instance x="2896" y="1280" name="XLXI_6" orien="R0">
        </instance>
        <branch name="BEQoBNECTRL">
            <wire x2="2864" y1="1408" y2="1408" x1="2768" />
            <wire x2="2896" y1="1248" y2="1248" x1="2864" />
            <wire x2="2864" y1="1248" y2="1408" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1408" name="BEQoBNECTRL" orien="R180" />
        <branch name="isZero">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1120" type="branch" />
            <wire x2="2896" y1="1120" y2="1120" x1="2816" />
        </branch>
        <branch name="isZero_inv">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1184" type="branch" />
            <wire x2="2896" y1="1184" y2="1184" x1="2816" />
        </branch>
        <instance x="2480" y="1584" name="XLXI_7" orien="R0" />
        <branch name="isZero">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1552" type="branch" />
            <wire x2="2480" y1="1552" y2="1552" x1="2368" />
        </branch>
        <branch name="isZero_inv">
            <wire x2="2832" y1="1552" y2="1552" x1="2704" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="480" y1="736" y2="736" x1="400" />
            <wire x2="480" y1="736" y2="848" x1="480" />
            <wire x2="480" y1="848" y2="1120" x1="480" />
            <wire x2="800" y1="1120" y2="1120" x1="480" />
        </branch>
        <instance x="144" y="832" name="XLXI_8" orien="R0" />
        <branch name="XLXN_61">
            <wire x2="128" y1="368" y2="704" x1="128" />
            <wire x2="144" y1="704" y2="704" x1="128" />
            <wire x2="272" y1="368" y2="368" x1="128" />
            <wire x2="3296" y1="368" y2="368" x1="272" />
            <wire x2="3296" y1="368" y2="1120" x1="3296" />
            <wire x2="3296" y1="1120" y2="1120" x1="3280" />
        </branch>
        <branch name="BranchCTRL">
            <wire x2="144" y1="768" y2="768" x1="112" />
        </branch>
        <iomarker fontsize="28" x="112" y="768" name="BranchCTRL" orien="R180" />
        <iomarker fontsize="28" x="784" y="1920" name="ImSlctCTRL" orien="R180" />
        <iomarker fontsize="28" x="1424" y="1568" name="MemDatOut(15:0)" orien="R0" />
        <instance x="2992" y="1696" name="XLXI_9" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1472" type="branch" />
            <wire x2="2992" y1="1472" y2="1472" x1="2928" />
        </branch>
        <branch name="ALUwrtCTRL">
            <wire x2="2992" y1="1536" y2="1536" x1="2928" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1600" type="branch" />
            <wire x2="2992" y1="1600" y2="1600" x1="2928" />
        </branch>
        <branch name="XLXN_66(15:0)">
            <wire x2="2736" y1="1296" y2="1296" x1="2672" />
            <wire x2="2880" y1="1296" y2="1296" x1="2736" />
            <wire x2="2880" y1="1296" y2="1664" x1="2880" />
            <wire x2="2928" y1="1664" y2="1664" x1="2880" />
            <wire x2="2944" y1="1664" y2="1664" x1="2928" />
            <wire x2="2992" y1="1664" y2="1664" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="2928" y="1536" name="ALUwrtCTRL" orien="R180" />
    </sheet>
</drawing>