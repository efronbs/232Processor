<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="memWrt(0:0)" />
        <signal name="datOut(15:0)" />
        <signal name="adrs(9:0)" />
        <signal name="datIn(15:0)" />
        <signal name="XLXN_2" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="memWrt(0:0)" />
        <port polarity="Output" name="datOut(15:0)" />
        <port polarity="Input" name="adrs(9:0)" />
        <port polarity="Input" name="datIn(15:0)" />
        <blockdef name="clockDoubler">
            <timestamp>2015-2-13T7:31:53</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="blockmemory">
            <timestamp>2015-2-12T20:9:18</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <block symbolname="clockDoubler" name="XLXI_18">
            <blockpin signalname="clk" name="clkIn" />
            <blockpin signalname="XLXN_2" name="dClk" />
        </block>
        <block symbolname="blockmemory" name="XLXI_19">
            <blockpin signalname="adrs(9:0)" name="addra(9:0)" />
            <blockpin signalname="datIn(15:0)" name="dina(15:0)" />
            <blockpin signalname="memWrt(0:0)" name="wea(0:0)" />
            <blockpin signalname="XLXN_2" name="clka" />
            <blockpin signalname="datOut(15:0)" name="douta(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="memWrt(0:0)">
            <wire x2="976" y1="928" y2="928" x1="752" />
        </branch>
        <branch name="clk">
            <wire x2="976" y1="1008" y2="1008" x1="736" />
        </branch>
        <branch name="datIn(15:0)">
            <wire x2="976" y1="848" y2="848" x1="752" />
        </branch>
        <branch name="adrs(9:0)">
            <wire x2="960" y1="784" y2="784" x1="752" />
        </branch>
        <branch name="datOut(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="784" type="branch" />
            <wire x2="1488" y1="784" y2="784" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="752" y="928" name="memWrt(0:0)" orien="R180" />
        <iomarker fontsize="28" x="736" y="1008" name="clk" orien="R180" />
        <iomarker fontsize="28" x="752" y="848" name="datIn(15:0)" orien="R180" />
        <iomarker fontsize="28" x="752" y="784" name="adrs(9:0)" orien="R180" />
        <iomarker fontsize="28" x="1488" y="784" name="datOut(15:0)" orien="R0" />
        <branch name="adrs(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="912" type="branch" />
            <wire x2="1712" y1="912" y2="912" x1="1696" />
            <wire x2="1904" y1="912" y2="912" x1="1712" />
        </branch>
        <branch name="datIn(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="944" type="branch" />
            <wire x2="1472" y1="944" y2="944" x1="1456" />
            <wire x2="1904" y1="944" y2="944" x1="1472" />
        </branch>
        <branch name="memWrt(0:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1040" type="branch" />
            <wire x2="1696" y1="1040" y2="1040" x1="1680" />
            <wire x2="1904" y1="1040" y2="1040" x1="1696" />
        </branch>
        <branch name="datOut(15:0)">
            <wire x2="2672" y1="912" y2="912" x1="2480" />
        </branch>
        <instance x="1024" y="1328" name="XLXI_18" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1296" type="branch" />
            <wire x2="1008" y1="1296" y2="1296" x1="912" />
            <wire x2="1024" y1="1296" y2="1296" x1="1008" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1424" y1="1296" y2="1296" x1="1408" />
            <wire x2="1648" y1="1296" y2="1296" x1="1424" />
            <wire x2="1648" y1="1104" y2="1296" x1="1648" />
            <wire x2="1904" y1="1104" y2="1104" x1="1648" />
        </branch>
        <instance x="1904" y="832" name="XLXI_19" orien="R0" />
    </sheet>
</drawing>