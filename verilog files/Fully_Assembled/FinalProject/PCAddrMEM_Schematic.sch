<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="PCAdderMuxes_Schematic">
            <timestamp>2015-2-13T4:34:25</timestamp>
            <rect width="288" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-428" height="24" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
        </blockdef>
        <blockdef name="MEMORY">
            <timestamp>2015-2-13T8:2:12</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
        </blockdef>
        <block symbolname="PCAdderMuxes_Schematic" name="XLXI_1">
            <blockpin name="CLK" />
            <blockpin name="PCWRT" />
            <blockpin name="RESET" />
            <blockpin name="SEIMM(15:0)" />
            <blockpin name="IR(15:0)" />
            <blockpin name="CTRLBRIZ" />
            <blockpin name="CTRLJUMP" />
            <blockpin name="PC_IN(15:0)" />
        </block>
        <block symbolname="MEMORY" name="XLXI_2">
            <blockpin name="CLK" />
            <blockpin name="ADDR_IN(9:0)" />
            <blockpin name="XLXN_4(15:0)" />
            <blockpin name="MemWCTRL" />
            <blockpin name="DAT_OUT(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1040" y="1120" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1696" y="1024" name="XLXI_2" orien="R0">
        </instance>
    </sheet>
</drawing>