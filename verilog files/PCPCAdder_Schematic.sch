<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(15:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5(15:0)">
        </signal>
        <signal name="XLXN_6(15:0)" />
        <port polarity="Input" name="XLXN_2" />
        <port polarity="Input" name="XLXN_3" />
        <port polarity="Input" name="XLXN_4" />
        <port polarity="Output" name="XLXN_6(15:0)" />
        <blockdef name="PCAdder_Schematic">
            <timestamp>2015-2-12T23:53:40</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
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
        <block symbolname="PCAdder_Schematic" name="XLXI_1">
            <blockpin signalname="XLXN_1(15:0)" name="XLXN_11(15:0)" />
            <blockpin signalname="XLXN_6(15:0)" name="XLXN_12(15:0)" />
        </block>
        <block symbolname="register16bit" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="clk" />
            <blockpin signalname="XLXN_3" name="write" />
            <blockpin signalname="XLXN_4" name="reset" />
            <blockpin signalname="XLXN_6(15:0)" name="dataIn(15:0)" />
            <blockpin signalname="XLXN_1(15:0)" name="dataOut(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="912" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1984" y="720" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1(15:0)">
            <wire x2="1984" y1="688" y2="688" x1="1424" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1008" y1="688" y2="688" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="688" name="XLXN_2" orien="R180" />
        <branch name="XLXN_3">
            <wire x2="1008" y1="752" y2="752" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="752" name="XLXN_3" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="1008" y1="816" y2="816" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="816" name="XLXN_4" orien="R180" />
        <branch name="XLXN_6(15:0)">
            <wire x2="1008" y1="880" y2="880" x1="976" />
            <wire x2="976" y1="880" y2="992" x1="976" />
            <wire x2="2480" y1="992" y2="992" x1="976" />
            <wire x2="2480" y1="688" y2="688" x1="2448" />
            <wire x2="2480" y1="688" y2="992" x1="2480" />
        </branch>
        <branch name="XLXN_6(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1200" type="branch" />
            <wire x2="2704" y1="1200" y2="1200" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2704" y="1200" name="XLXN_6(15:0)" orien="R0" />
    </sheet>
</drawing>