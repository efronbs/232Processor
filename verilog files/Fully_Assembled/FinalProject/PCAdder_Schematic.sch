<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_10(15:0)" />
        <signal name="XLXN_11(15:0)" />
        <signal name="XLXN_12(15:0)" />
        <port polarity="Input" name="XLXN_11(15:0)" />
        <port polarity="Output" name="XLXN_12(15:0)" />
        <blockdef name="adder16bit">
            <timestamp>2015-2-12T23:49:19</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="PCadderConstant">
            <timestamp>2015-2-12T23:44:25</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <block symbolname="PCadderConstant" name="XLXI_5">
            <blockpin signalname="XLXN_10(15:0)" name="constantOne(15:0)" />
        </block>
        <block symbolname="adder16bit" name="XLXI_4">
            <blockpin signalname="XLXN_10(15:0)" name="aIn(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="bIn(15:0)" />
            <blockpin signalname="XLXN_12(15:0)" name="outPin(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="48" y="192" name="XLXI_5" orien="R0">
        </instance>
        <instance x="912" y="256" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_10(15:0)">
            <wire x2="672" y1="224" y2="224" x1="432" />
            <wire x2="672" y1="160" y2="224" x1="672" />
            <wire x2="912" y1="160" y2="160" x1="672" />
        </branch>
        <branch name="XLXN_11(15:0)">
            <wire x2="912" y1="224" y2="224" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="224" name="XLXN_11(15:0)" orien="R180" />
        <branch name="XLXN_12(15:0)">
            <wire x2="1392" y1="288" y2="288" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1392" y="288" name="XLXN_12(15:0)" orien="R0" />
    </sheet>
</drawing>