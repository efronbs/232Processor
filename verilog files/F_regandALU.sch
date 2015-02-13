<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="r1out(15:0)" />
        <signal name="r2out(15:0)" />
        <signal name="mainOut(15:0)" />
        <signal name="reset" />
        <signal name="regWrt" />
        <signal name="r1in(2:0)" />
        <signal name="r2in(2:0)" />
        <signal name="wrtDest(2:0)" />
        <signal name="wrtDat(15:0)" />
        <signal name="clk" />
        <signal name="bWrt" />
        <signal name="aWrt" />
        <signal name="aOut(15:0)" />
        <signal name="bOut(15:0)" />
        <signal name="ALUop(3:0)" />
        <signal name="clkOUT" />
        <signal name="opCode(3:0)" />
        <signal name="funcCode(3:0)" />
        <signal name="isZero" />
        <signal name="ALUoutput(15:0)" />
        <signal name="ALUout(15:0)" />
        <signal name="ALUwrt" />
        <signal name="XLXN_20" />
        <port polarity="Output" name="mainOut(15:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="regWrt" />
        <port polarity="Input" name="r1in(2:0)" />
        <port polarity="Input" name="r2in(2:0)" />
        <port polarity="Input" name="wrtDest(2:0)" />
        <port polarity="Input" name="wrtDat(15:0)" />
        <port polarity="Input" name="bWrt" />
        <port polarity="Input" name="aWrt" />
        <port polarity="Output" name="clkOUT" />
        <port polarity="Input" name="opCode(3:0)" />
        <port polarity="Input" name="funcCode(3:0)" />
        <port polarity="Output" name="isZero" />
        <port polarity="Output" name="ALUout(15:0)" />
        <port polarity="Input" name="ALUwrt" />
        <blockdef name="regFile16bit8reg">
            <timestamp>2015-2-12T21:54:28</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
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
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-204" height="24" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-384" height="448" />
        </blockdef>
        <blockdef name="clockModule">
            <timestamp>2015-2-12T16:41:15</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="register16bit">
            <timestamp>2015-2-12T21:54:37</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="288" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="ALU16bit">
            <timestamp>2015-2-12T16:40:34</timestamp>
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
        <blockdef name="ALUcontrol">
            <timestamp>2015-2-12T16:40:42</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="regFile16bit8reg" name="XLXI_6">
            <blockpin signalname="regWrt" name="regWrt" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="r1in(2:0)" name="r1(2:0)" />
            <blockpin signalname="r2in(2:0)" name="r2(2:0)" />
            <blockpin signalname="wrtDest(2:0)" name="wDest(2:0)" />
            <blockpin signalname="wrtDat(15:0)" name="wDat(15:0)" />
            <blockpin signalname="r1out(15:0)" name="r1out(15:0)" />
            <blockpin signalname="r2out(15:0)" name="r2out(15:0)" />
            <blockpin signalname="mainOut(15:0)" name="m(15:0)" />
            <blockpin signalname="clk" name="clk" />
        </block>
        <block symbolname="clockModule" name="XLXI_9">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clk" name="clk" />
        </block>
        <block symbolname="register16bit" name="XLXI_10">
            <blockpin signalname="aWrt" name="write" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="r1out(15:0)" name="dataIn(15:0)" />
            <blockpin signalname="aOut(15:0)" name="dataOut(15:0)" />
            <blockpin signalname="clk" name="clk" />
        </block>
        <block symbolname="register16bit" name="XLXI_11">
            <blockpin signalname="bWrt" name="write" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="r2out(15:0)" name="dataIn(15:0)" />
            <blockpin signalname="bOut(15:0)" name="dataOut(15:0)" />
            <blockpin signalname="clk" name="clk" />
        </block>
        <block symbolname="clockModule" name="XLXI_13">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clkOUT" name="clk" />
        </block>
        <block symbolname="ALUcontrol" name="XLXI_14">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="opCode(3:0)" name="op(3:0)" />
            <blockpin signalname="funcCode(3:0)" name="func(3:0)" />
            <blockpin signalname="ALUop(3:0)" name="ALUop(3:0)" />
        </block>
        <block symbolname="ALU16bit" name="XLXI_12">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="ALUop(3:0)" name="aluOp(3:0)" />
            <blockpin signalname="aOut(15:0)" name="aIn(15:0)" />
            <blockpin signalname="bOut(15:0)" name="bIn(15:0)" />
            <blockpin signalname="isZero" name="isZero" />
            <blockpin signalname="ALUoutput(15:0)" name="outPut(15:0)" />
        </block>
        <block symbolname="register16bit" name="XLXI_17">
            <blockpin signalname="ALUwrt" name="write" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="ALUoutput(15:0)" name="dataIn(15:0)" />
            <blockpin signalname="ALUout(15:0)" name="dataOut(15:0)" />
            <blockpin signalname="clk" name="clk" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="624" y="1296" name="XLXI_6" orien="R0">
        </instance>
        <branch name="r1out(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="944" type="branch" />
            <wire x2="1152" y1="944" y2="944" x1="1008" />
        </branch>
        <branch name="r2out(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1104" type="branch" />
            <wire x2="1136" y1="1104" y2="1104" x1="1008" />
        </branch>
        <branch name="mainOut(15:0)">
            <wire x2="1136" y1="1264" y2="1264" x1="1008" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1328" type="branch" />
            <wire x2="624" y1="1328" y2="1328" x1="544" />
        </branch>
        <branch name="wrtDat(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1264" type="branch" />
            <wire x2="624" y1="1264" y2="1264" x1="544" />
        </branch>
        <branch name="wrtDest(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1200" type="branch" />
            <wire x2="624" y1="1200" y2="1200" x1="544" />
        </branch>
        <branch name="r2in(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1136" type="branch" />
            <wire x2="624" y1="1136" y2="1136" x1="528" />
        </branch>
        <branch name="r1in(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1072" type="branch" />
            <wire x2="624" y1="1072" y2="1072" x1="544" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1008" type="branch" />
            <wire x2="624" y1="1008" y2="1008" x1="544" />
        </branch>
        <branch name="regWrt">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="944" type="branch" />
            <wire x2="624" y1="944" y2="944" x1="544" />
        </branch>
        <branch name="reset">
            <wire x2="272" y1="1008" y2="1008" x1="160" />
        </branch>
        <branch name="regWrt">
            <wire x2="272" y1="944" y2="944" x1="160" />
        </branch>
        <branch name="r1in(2:0)">
            <wire x2="288" y1="1056" y2="1056" x1="160" />
        </branch>
        <branch name="r2in(2:0)">
            <wire x2="288" y1="1136" y2="1136" x1="160" />
        </branch>
        <branch name="wrtDest(2:0)">
            <wire x2="288" y1="1216" y2="1216" x1="160" />
        </branch>
        <branch name="wrtDat(15:0)">
            <wire x2="288" y1="1280" y2="1280" x1="160" />
        </branch>
        <instance x="512" y="1648" name="XLXI_9" orien="R0">
        </instance>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1616" type="branch" />
            <wire x2="512" y1="1616" y2="1616" x1="400" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1616" type="branch" />
            <wire x2="1104" y1="1616" y2="1616" x1="896" />
        </branch>
        <iomarker fontsize="28" x="160" y="1008" name="reset" orien="R180" />
        <iomarker fontsize="28" x="160" y="944" name="regWrt" orien="R180" />
        <iomarker fontsize="28" x="160" y="1056" name="r1in(2:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="1136" name="r2in(2:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="1216" name="wrtDest(2:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="1280" name="wrtDat(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1264" name="mainOut(15:0)" orien="R0" />
        <branch name="bWrt">
            <wire x2="256" y1="1424" y2="1424" x1="128" />
        </branch>
        <branch name="aWrt">
            <wire x2="272" y1="752" y2="752" x1="144" />
        </branch>
        <iomarker fontsize="28" x="144" y="752" name="aWrt" orien="R180" />
        <iomarker fontsize="28" x="128" y="1424" name="bWrt" orien="R180" />
        <instance x="1552" y="1360" name="XLXI_11" orien="R0">
        </instance>
        <branch name="r1out(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="944" type="branch" />
            <wire x2="1488" y1="944" y2="944" x1="1472" />
            <wire x2="1552" y1="944" y2="944" x1="1488" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1008" type="branch" />
            <wire x2="1488" y1="1008" y2="1008" x1="1472" />
            <wire x2="1552" y1="1008" y2="1008" x1="1488" />
        </branch>
        <branch name="bWrt">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1200" type="branch" />
            <wire x2="1552" y1="1200" y2="1200" x1="1472" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1264" type="branch" />
            <wire x2="1552" y1="1264" y2="1264" x1="1472" />
        </branch>
        <branch name="r2out(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1328" type="branch" />
            <wire x2="1552" y1="1328" y2="1328" x1="1472" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1392" type="branch" />
            <wire x2="1552" y1="1392" y2="1392" x1="1456" />
        </branch>
        <branch name="aOut(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="816" type="branch" />
            <wire x2="2096" y1="816" y2="816" x1="1968" />
            <wire x2="2112" y1="816" y2="816" x1="2096" />
        </branch>
        <branch name="bOut(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1200" type="branch" />
            <wire x2="2080" y1="1200" y2="1200" x1="1968" />
        </branch>
        <instance x="560" y="1840" name="XLXI_13" orien="R0">
        </instance>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1808" type="branch" />
            <wire x2="560" y1="1808" y2="1808" x1="416" />
        </branch>
        <branch name="clkOUT">
            <wire x2="1136" y1="1808" y2="1808" x1="944" />
        </branch>
        <iomarker fontsize="28" x="1136" y="1808" name="clkOUT" orien="R0" />
        <instance x="2368" y="512" name="XLXI_14" orien="R0">
        </instance>
        <branch name="ALUop(3:0)">
            <wire x2="2896" y1="352" y2="352" x1="2752" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="352" type="branch" />
            <wire x2="2368" y1="352" y2="352" x1="2240" />
        </branch>
        <branch name="opCode(3:0)">
            <wire x2="2368" y1="416" y2="416" x1="2256" />
        </branch>
        <branch name="funcCode(3:0)">
            <wire x2="2368" y1="480" y2="480" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2256" y="416" name="opCode(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2240" y="480" name="funcCode(3:0)" orien="R180" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="880" type="branch" />
            <wire x2="1488" y1="880" y2="880" x1="1472" />
            <wire x2="1552" y1="880" y2="880" x1="1488" />
        </branch>
        <branch name="aWrt">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="816" type="branch" />
            <wire x2="1504" y1="816" y2="816" x1="1488" />
            <wire x2="1552" y1="816" y2="816" x1="1504" />
        </branch>
        <instance x="1552" y="976" name="XLXI_10" orien="R0">
        </instance>
        <instance x="2352" y="1152" name="XLXI_12" orien="R0">
        </instance>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="928" type="branch" />
            <wire x2="2352" y1="928" y2="928" x1="2256" />
        </branch>
        <branch name="ALUop(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="992" type="branch" />
            <wire x2="2352" y1="992" y2="992" x1="2208" />
        </branch>
        <branch name="aOut(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1056" type="branch" />
            <wire x2="2352" y1="1056" y2="1056" x1="2240" />
        </branch>
        <branch name="bOut(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1120" type="branch" />
            <wire x2="2352" y1="1120" y2="1120" x1="2240" />
        </branch>
        <branch name="isZero">
            <wire x2="2864" y1="928" y2="928" x1="2736" />
        </branch>
        <branch name="ALUoutput(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1120" type="branch" />
            <wire x2="2928" y1="1120" y2="1120" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2864" y="928" name="isZero" orien="R0" />
        <instance x="2544" y="1472" name="XLXI_17" orien="R0">
        </instance>
        <branch name="ALUwrt">
            <wire x2="2544" y1="1312" y2="1312" x1="2384" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1376" type="branch" />
            <wire x2="2544" y1="1376" y2="1376" x1="2384" />
        </branch>
        <branch name="ALUoutput(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1440" type="branch" />
            <wire x2="2544" y1="1440" y2="1440" x1="2384" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1504" type="branch" />
            <wire x2="2544" y1="1504" y2="1504" x1="2384" />
        </branch>
        <branch name="ALUout(15:0)">
            <wire x2="2976" y1="1312" y2="1312" x1="2960" />
            <wire x2="3088" y1="1312" y2="1312" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3088" y="1312" name="ALUout(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2384" y="1312" name="ALUwrt" orien="R180" />
    </sheet>
</drawing>