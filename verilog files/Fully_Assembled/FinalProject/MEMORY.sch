<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="CLK" />
        <signal name="ADDR_IN(9:0)" />
        <signal name="DAT_IN(15:0)" />
        <signal name="MemWCTRL" />
        <signal name="DAT_OUT(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="ADDR_IN(9:0)" />
        <port polarity="Input" name="DAT_IN(15:0)" />
        <port polarity="Input" name="MemWCTRL" />
        <port polarity="Output" name="DAT_OUT(15:0)" />
        <blockdef name="block_memory">
            <timestamp>2015-2-13T7:51:55</timestamp>
            <rect width="512" x="32" y="32" height="332" />
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
        <block symbolname="block_memory" name="XLXI_1">
            <blockpin signalname="ADDR_IN(9:0)" name="addra(9:0)" />
            <blockpin signalname="DAT_IN(15:0)" name="dina(15:0)" />
            <blockpin signalname="MemWCTRL" name="wea(0:0)" />
            <blockpin signalname="XLXN_1" name="clka" />
            <blockpin signalname="DAT_OUT(15:0)" name="douta(15:0)" />
        </block>
        <block symbolname="clockDoubler" name="XLXI_2">
            <blockpin signalname="CLK" name="clkIn" />
            <blockpin signalname="XLXN_1" name="dClk" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="528" name="XLXI_1" orien="R0">
        </instance>
        <instance x="480" y="832" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="912" y1="800" y2="800" x1="864" />
        </branch>
        <branch name="CLK">
            <wire x2="480" y1="800" y2="800" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="800" name="CLK" orien="R180" />
        <branch name="ADDR_IN(9:0)">
            <wire x2="896" y1="496" y2="496" x1="768" />
            <wire x2="896" y1="496" y2="608" x1="896" />
            <wire x2="912" y1="608" y2="608" x1="896" />
        </branch>
        <branch name="DAT_IN(15:0)">
            <wire x2="784" y1="560" y2="560" x1="736" />
            <wire x2="784" y1="560" y2="640" x1="784" />
            <wire x2="912" y1="640" y2="640" x1="784" />
        </branch>
        <branch name="MemWCTRL">
            <wire x2="736" y1="624" y2="624" x1="672" />
            <wire x2="736" y1="624" y2="672" x1="736" />
            <wire x2="848" y1="672" y2="672" x1="736" />
            <wire x2="848" y1="672" y2="736" x1="848" />
            <wire x2="912" y1="736" y2="736" x1="848" />
        </branch>
        <iomarker fontsize="28" x="672" y="624" name="MemWCTRL" orien="R180" />
        <iomarker fontsize="28" x="736" y="560" name="DAT_IN(15:0)" orien="R180" />
        <iomarker fontsize="28" x="768" y="496" name="ADDR_IN(9:0)" orien="R180" />
        <branch name="DAT_OUT(15:0)">
            <wire x2="1552" y1="608" y2="608" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1552" y="608" name="DAT_OUT(15:0)" orien="R0" />
    </sheet>
</drawing>