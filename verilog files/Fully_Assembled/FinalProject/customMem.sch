<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clkDub" />
        <signal name="clkIn" />
        <signal name="datIn(15:0)" />
        <signal name="adrsIn(15:0)" />
        <signal name="adrsIn(9:0)" />
        <signal name="datOut(15:0)" />
        <signal name="memWrt(0:0)" />
        <port polarity="Input" name="clkIn" />
        <port polarity="Input" name="datIn(15:0)" />
        <port polarity="Input" name="adrsIn(15:0)" />
        <port polarity="Output" name="datOut(15:0)" />
        <port polarity="Input" name="memWrt(0:0)" />
        <blockdef name="blockMem">
            <timestamp>2015-2-12T18:15:38</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="clockDoubler">
            <timestamp>2015-2-13T7:31:53</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="clockDoubler" name="XLXI_16">
            <blockpin signalname="clkIn" name="clkIn" />
            <blockpin signalname="clkDub" name="dClk" />
        </block>
        <block symbolname="blockMem" name="XLXI_15">
            <blockpin signalname="adrsIn(9:0)" name="addra(9:0)" />
            <blockpin signalname="datIn(15:0)" name="dina(15:0)" />
            <blockpin signalname="memWrt(0:0)" name="wea(0:0)" />
            <blockpin signalname="clkDub" name="clka" />
            <blockpin signalname="datOut(15:0)" name="douta(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="992" name="XLXI_16" orien="R0">
        </instance>
        <branch name="clkDub">
            <wire x2="1696" y1="960" y2="960" x1="1520" />
        </branch>
        <branch name="clkIn">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="960" type="branch" />
            <wire x2="1136" y1="960" y2="960" x1="1008" />
        </branch>
        <branch name="clkIn">
            <wire x2="1072" y1="752" y2="752" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="752" name="clkIn" orien="R180" />
        <branch name="memWrt(0:0)">
            <wire x2="992" y1="672" y2="672" x1="864" />
            <wire x2="1072" y1="672" y2="672" x1="992" />
        </branch>
        <iomarker fontsize="28" x="864" y="672" name="memWrt(0:0)" orien="R180" />
        <branch name="datIn(15:0)">
            <wire x2="1072" y1="592" y2="592" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="592" name="datIn(15:0)" orien="R180" />
        <branch name="adrsIn(15:0)">
            <wire x2="1072" y1="480" y2="480" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="480" name="adrsIn(15:0)" orien="R180" />
        <instance x="1728" y="512" name="XLXI_15" orien="R0" />
        <branch name="adrsIn(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="592" type="branch" />
            <wire x2="1728" y1="592" y2="592" x1="1552" />
        </branch>
        <branch name="datIn(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="624" type="branch" />
            <wire x2="1728" y1="624" y2="624" x1="1552" />
        </branch>
        <branch name="clkDub">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="784" type="branch" />
            <wire x2="1728" y1="784" y2="784" x1="1536" />
        </branch>
        <branch name="datOut(15:0)">
            <wire x2="2432" y1="592" y2="592" x1="2304" />
        </branch>
        <branch name="datOut(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="480" type="branch" />
            <wire x2="2272" y1="480" y2="480" x1="2032" />
        </branch>
        <branch name="memWrt(0:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="720" type="branch" />
            <wire x2="1552" y1="720" y2="720" x1="1536" />
            <wire x2="1728" y1="720" y2="720" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="2272" y="480" name="datOut(15:0)" orien="R0" />
    </sheet>
</drawing>