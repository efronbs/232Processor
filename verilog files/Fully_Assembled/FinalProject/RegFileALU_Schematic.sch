<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="IR_OUT(15:0)" />
        <signal name="XLXN_1(15:0)" />
        <signal name="REG0OUT(15:0)" />
        <signal name="ZeroOut(2:0)" />
        <signal name="IR_OUT(11:9)" />
        <signal name="IR_OUT(8:6)" />
        <signal name="XLXN_27(2:0)" />
        <signal name="XLXN_28(2:0)" />
        <signal name="XLXN_29(2:0)" />
        <signal name="XLXN_30(15:0)" />
        <signal name="XLXN_31(15:0)" />
        <signal name="ALUOut(15:0)" />
        <signal name="AiACOPY(15:0)" />
        <signal name="wDatCTRL(1:0)" />
        <signal name="wAdrsCTRL" />
        <signal name="useFirstRegCTRL" />
        <signal name="useRegCTRL" />
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="IRwrtCTRL" />
        <signal name="memOWCTRL" />
        <signal name="RegWrtCTRL" />
        <signal name="AiAOUT(15:0)" />
        <signal name="SEIMM(15:0)" />
        <signal name="iorCTRL" />
        <signal name="AiBOUT(15:0)" />
        <signal name="IR_IN(15:0)" />
        <signal name="MemO_IN(15:0)" />
        <port polarity="Output" name="IR_OUT(15:0)" />
        <port polarity="Output" name="REG0OUT(15:0)" />
        <port polarity="Input" name="ALUOut(15:0)" />
        <port polarity="Input" name="AiACOPY(15:0)" />
        <port polarity="Input" name="wDatCTRL(1:0)" />
        <port polarity="Input" name="wAdrsCTRL" />
        <port polarity="Input" name="useFirstRegCTRL" />
        <port polarity="Input" name="useRegCTRL" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="IRwrtCTRL" />
        <port polarity="Input" name="memOWCTRL" />
        <port polarity="Input" name="RegWrtCTRL" />
        <port polarity="Output" name="AiAOUT(15:0)" />
        <port polarity="Input" name="SEIMM(15:0)" />
        <port polarity="Input" name="iorCTRL" />
        <port polarity="Output" name="AiBOUT(15:0)" />
        <port polarity="Input" name="IR_IN(15:0)" />
        <port polarity="Input" name="MemO_IN(15:0)" />
        <blockdef name="regFile16bit8reg">
            <timestamp>2015-2-13T6:38:38</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX_OneBit">
            <timestamp>2015-2-13T1:50:20</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="MUX_OneBit_3">
            <timestamp>2015-2-13T5:6:42</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="ZeroAdder3Bit">
            <timestamp>2015-2-13T5:13:12</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX_TwoBit">
            <timestamp>2015-2-13T1:29:27</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <block symbolname="register16bit" name="IRREG">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="IRwrtCTRL" name="write" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="IR_IN(15:0)" name="dataIn(15:0)" />
            <blockpin signalname="IR_OUT(15:0)" name="dataOut(15:0)" />
        </block>
        <block symbolname="regFile16bit8reg" name="XLXI_1">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RegWrtCTRL" name="regWrt" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="XLXN_27(2:0)" name="r1(2:0)" />
            <blockpin signalname="XLXN_28(2:0)" name="r2(2:0)" />
            <blockpin signalname="XLXN_29(2:0)" name="wDest(2:0)" />
            <blockpin signalname="XLXN_30(15:0)" name="wDat(15:0)" />
            <blockpin signalname="AiAOUT(15:0)" name="r1out(15:0)" />
            <blockpin signalname="XLXN_1(15:0)" name="r2out(15:0)" />
            <blockpin signalname="REG0OUT(15:0)" name="m(15:0)" />
        </block>
        <block symbolname="MUX_OneBit" name="XLXI_2">
            <blockpin signalname="iorCTRL" name="ctrlSlct" />
            <blockpin signalname="XLXN_1(15:0)" name="in1(15:0)" />
            <blockpin signalname="SEIMM(15:0)" name="in2(15:0)" />
            <blockpin signalname="AiBOUT(15:0)" name="muxOut(15:0)" />
        </block>
        <block symbolname="MUX_OneBit_3" name="XLXI_9">
            <blockpin signalname="useRegCTRL" name="ctrlSlct" />
            <blockpin signalname="ZeroOut(2:0)" name="in1(2:0)" />
            <blockpin signalname="IR_OUT(11:9)" name="in2(2:0)" />
            <blockpin signalname="XLXN_27(2:0)" name="muxOut(2:0)" />
        </block>
        <block symbolname="ZeroAdder3Bit" name="XLXI_11">
            <blockpin signalname="ZeroOut(2:0)" name="constantZero(2:0)" />
        </block>
        <block symbolname="MUX_OneBit_3" name="XLXI_14">
            <blockpin signalname="wAdrsCTRL" name="ctrlSlct" />
            <blockpin signalname="ZeroOut(2:0)" name="in1(2:0)" />
            <blockpin signalname="IR_OUT(8:6)" name="in2(2:0)" />
            <blockpin signalname="XLXN_29(2:0)" name="muxOut(2:0)" />
        </block>
        <block symbolname="MUX_OneBit_3" name="XLXI_10">
            <blockpin signalname="useFirstRegCTRL" name="ctrlSlct" />
            <blockpin signalname="IR_OUT(11:9)" name="in1(2:0)" />
            <blockpin signalname="IR_OUT(8:6)" name="in2(2:0)" />
            <blockpin signalname="XLXN_28(2:0)" name="muxOut(2:0)" />
        </block>
        <block symbolname="MUX_TwoBit" name="XLXI_25">
            <blockpin signalname="XLXN_31(15:0)" name="in1(15:0)" />
            <blockpin signalname="ALUOut(15:0)" name="in2(15:0)" />
            <blockpin signalname="AiACOPY(15:0)" name="in3(15:0)" />
            <blockpin signalname="SEIMM(15:0)" name="in4(15:0)" />
            <blockpin signalname="wDatCTRL(1:0)" name="ctrlSlct(1:0)" />
            <blockpin signalname="XLXN_30(15:0)" name="muxOut(15:0)" />
        </block>
        <block symbolname="register16bit" name="XLXI_26">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="memOWCTRL" name="write" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="MemO_IN(15:0)" name="dataIn(15:0)" />
            <blockpin signalname="XLXN_31(15:0)" name="dataOut(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="304" y="832" name="IRREG" orien="R0">
        </instance>
        <branch name="IR_OUT(15:0)">
            <wire x2="768" y1="608" y2="608" x1="720" />
        </branch>
        <instance x="1840" y="928" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2512" y="880" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(15:0)">
            <wire x2="2368" y1="704" y2="704" x1="2224" />
            <wire x2="2368" y1="704" y2="784" x1="2368" />
            <wire x2="2512" y1="784" y2="784" x1="2368" />
        </branch>
        <branch name="REG0OUT(15:0)">
            <wire x2="2272" y1="896" y2="896" x1="2224" />
        </branch>
        <instance x="1120" y="656" name="XLXI_9" orien="R0">
        </instance>
        <branch name="ZeroOut(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="560" type="branch" />
            <wire x2="1120" y1="560" y2="560" x1="1056" />
        </branch>
        <instance x="32" y="1040" name="XLXI_11" orien="R0">
        </instance>
        <branch name="ZeroOut(2:0)">
            <wire x2="432" y1="1008" y2="1008" x1="416" />
            <wire x2="464" y1="1008" y2="1008" x1="432" />
            <wire x2="480" y1="1008" y2="1008" x1="464" />
        </branch>
        <branch name="IR_OUT(11:9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="720" type="branch" />
            <wire x2="1008" y1="720" y2="720" x1="928" />
            <wire x2="1120" y1="624" y2="624" x1="1008" />
            <wire x2="1008" y1="624" y2="720" x1="1008" />
        </branch>
        <branch name="IR_OUT(8:6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="896" type="branch" />
            <wire x2="1120" y1="896" y2="896" x1="1072" />
        </branch>
        <branch name="IR_OUT(11:9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="832" type="branch" />
            <wire x2="1120" y1="832" y2="832" x1="1072" />
        </branch>
        <instance x="1120" y="1200" name="XLXI_14" orien="R0">
        </instance>
        <instance x="1120" y="928" name="XLXI_10" orien="R0">
        </instance>
        <branch name="ZeroOut(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1104" type="branch" />
            <wire x2="1120" y1="1104" y2="1104" x1="1056" />
        </branch>
        <branch name="IR_OUT(8:6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1168" type="branch" />
            <wire x2="1120" y1="1168" y2="1168" x1="1056" />
        </branch>
        <branch name="XLXN_27(2:0)">
            <wire x2="1664" y1="496" y2="496" x1="1504" />
            <wire x2="1664" y1="496" y2="704" x1="1664" />
            <wire x2="1840" y1="704" y2="704" x1="1664" />
        </branch>
        <branch name="XLXN_28(2:0)">
            <wire x2="1840" y1="768" y2="768" x1="1504" />
        </branch>
        <branch name="XLXN_29(2:0)">
            <wire x2="1664" y1="1040" y2="1040" x1="1504" />
            <wire x2="1664" y1="832" y2="1040" x1="1664" />
            <wire x2="1840" y1="832" y2="832" x1="1664" />
        </branch>
        <instance x="1120" y="1616" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_30(15:0)">
            <wire x2="1680" y1="1328" y2="1328" x1="1504" />
            <wire x2="1680" y1="896" y2="1328" x1="1680" />
            <wire x2="1840" y1="896" y2="896" x1="1680" />
        </branch>
        <instance x="288" y="1520" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_31(15:0)">
            <wire x2="912" y1="1296" y2="1296" x1="704" />
            <wire x2="912" y1="1296" y2="1328" x1="912" />
            <wire x2="1120" y1="1328" y2="1328" x1="912" />
        </branch>
        <branch name="ALUOut(15:0)">
            <wire x2="1120" y1="1392" y2="1392" x1="1072" />
        </branch>
        <branch name="AiACOPY(15:0)">
            <wire x2="1120" y1="1456" y2="1456" x1="1072" />
        </branch>
        <branch name="wDatCTRL(1:0)">
            <wire x2="1120" y1="1584" y2="1584" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1392" name="ALUOut(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1072" y="1456" name="AiACOPY(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1072" y="1584" name="wDatCTRL(1:0)" orien="R180" />
        <branch name="wAdrsCTRL">
            <wire x2="1120" y1="1040" y2="1040" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1040" name="wAdrsCTRL" orien="R180" />
        <branch name="useFirstRegCTRL">
            <wire x2="1120" y1="768" y2="768" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1072" y="768" name="useFirstRegCTRL" orien="R180" />
        <branch name="useRegCTRL">
            <wire x2="1120" y1="496" y2="496" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1056" y="496" name="useRegCTRL" orien="R180" />
        <branch name="CLK">
            <wire x2="448" y1="272" y2="272" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="272" name="CLK" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="608" type="branch" />
            <wire x2="288" y1="608" y2="608" x1="240" />
            <wire x2="304" y1="608" y2="608" x1="288" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="1296" type="branch" />
            <wire x2="288" y1="1296" y2="1296" x1="208" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="512" type="branch" />
            <wire x2="1840" y1="512" y2="512" x1="1760" />
        </branch>
        <branch name="RESET">
            <wire x2="448" y1="336" y2="336" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="336" name="RESET" orien="R180" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="736" type="branch" />
            <wire x2="304" y1="736" y2="736" x1="224" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="1424" type="branch" />
            <wire x2="288" y1="1424" y2="1424" x1="208" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="640" type="branch" />
            <wire x2="1840" y1="640" y2="640" x1="1760" />
        </branch>
        <branch name="IRwrtCTRL">
            <wire x2="304" y1="672" y2="672" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="672" name="IRwrtCTRL" orien="R180" />
        <branch name="memOWCTRL">
            <wire x2="272" y1="1360" y2="1360" x1="240" />
            <wire x2="288" y1="1360" y2="1360" x1="272" />
        </branch>
        <iomarker fontsize="28" x="240" y="1360" name="memOWCTRL" orien="R180" />
        <branch name="RegWrtCTRL">
            <wire x2="1840" y1="576" y2="576" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1808" y="576" name="RegWrtCTRL" orien="R180" />
        <branch name="AiAOUT(15:0)">
            <wire x2="2320" y1="512" y2="512" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2320" y="512" name="AiAOUT(15:0)" orien="R0" />
        <branch name="SEIMM(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="848" type="branch" />
            <wire x2="2512" y1="848" y2="848" x1="2448" />
        </branch>
        <branch name="SEIMM(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1520" type="branch" />
            <wire x2="1120" y1="1520" y2="1520" x1="1040" />
        </branch>
        <branch name="SEIMM(15:0)">
            <wire x2="2096" y1="1040" y2="1040" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1040" name="SEIMM(15:0)" orien="R180" />
        <iomarker fontsize="28" x="2272" y="896" name="REG0OUT(15:0)" orien="R0" />
        <branch name="iorCTRL">
            <wire x2="2400" y1="592" y2="592" x1="2368" />
            <wire x2="2400" y1="592" y2="720" x1="2400" />
            <wire x2="2512" y1="720" y2="720" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2368" y="592" name="iorCTRL" orien="R180" />
        <branch name="AiBOUT(15:0)">
            <wire x2="2960" y1="720" y2="720" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="2960" y="720" name="AiBOUT(15:0)" orien="R0" />
        <branch name="IR_IN(15:0)">
            <wire x2="304" y1="800" y2="800" x1="240" />
        </branch>
        <branch name="MemO_IN(15:0)">
            <wire x2="272" y1="1488" y2="1488" x1="240" />
            <wire x2="288" y1="1488" y2="1488" x1="272" />
        </branch>
        <iomarker fontsize="28" x="240" y="800" name="IR_IN(15:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="1488" name="MemO_IN(15:0)" orien="R180" />
        <branch name="IR_OUT(15:0)">
            <wire x2="2176" y1="1264" y2="1264" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2176" y="1264" name="IR_OUT(15:0)" orien="R0" />
    </sheet>
</drawing>