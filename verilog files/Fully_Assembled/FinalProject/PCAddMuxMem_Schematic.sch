<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PC_OUT(15:0)" />
        <signal name="AiACOPY(15:0)" />
        <signal name="wDatCTRL(1:0)" />
        <signal name="wAdrsCTRL" />
        <signal name="useFirstRegCTRL" />
        <signal name="useRegCTRL" />
        <signal name="IRwrtCTRL" />
        <signal name="MemOWCTRL" />
        <signal name="RegWrtCTRL" />
        <signal name="iorCTRL" />
        <signal name="AiAOUT(15:0)" />
        <signal name="AiBOUT(15:0)" />
        <signal name="CTRLJUMP" />
        <signal name="CTRLBRIZ" />
        <signal name="PCWRT" />
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="MemWCTRL" />
        <signal name="MemDatOUT(15:0)" />
        <signal name="XLXN_24(15:0)" />
        <signal name="ALUOut(15:0)" />
        <signal name="MUX_MemAdr(15:0)" />
        <signal name="MemAdrsSlctCTRL" />
        <signal name="MUX_MemAdr(9:0)" />
        <signal name="SEIMM(15:0)" />
        <signal name="COMBINED(15:0)" />
        <signal name="IR_OUT(15:0)" />
        <port polarity="Input" name="AiACOPY(15:0)" />
        <port polarity="Input" name="wDatCTRL(1:0)" />
        <port polarity="Input" name="wAdrsCTRL" />
        <port polarity="Input" name="useFirstRegCTRL" />
        <port polarity="Input" name="useRegCTRL" />
        <port polarity="Input" name="IRwrtCTRL" />
        <port polarity="Input" name="MemOWCTRL" />
        <port polarity="Input" name="RegWrtCTRL" />
        <port polarity="Input" name="iorCTRL" />
        <port polarity="Output" name="AiAOUT(15:0)" />
        <port polarity="Output" name="AiBOUT(15:0)" />
        <port polarity="Input" name="CTRLJUMP" />
        <port polarity="Input" name="CTRLBRIZ" />
        <port polarity="Input" name="PCWRT" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="MemWCTRL" />
        <port polarity="Output" name="MemDatOUT(15:0)" />
        <port polarity="Input" name="ALUOut(15:0)" />
        <port polarity="Input" name="MemAdrsSlctCTRL" />
        <port polarity="Input" name="SEIMM(15:0)" />
        <port polarity="Output" name="IR_OUT(15:0)" />
        <blockdef name="PCAdderMuxes_Schematic">
            <timestamp>2015-2-13T8:8:52</timestamp>
            <rect width="64" x="352" y="20" height="24" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="288" x="64" y="-448" height="512" />
        </blockdef>
        <blockdef name="MEMORY">
            <timestamp>2015-2-13T8:10:39</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="336" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="RegFileALU_Schematic">
            <timestamp>2015-2-13T9:28:17</timestamp>
            <rect width="64" x="432" y="20" height="24" />
            <line x2="496" y1="32" y2="32" x1="432" />
            <rect width="64" x="0" y="-940" height="24" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <rect width="64" x="0" y="-876" height="24" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-812" height="24" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-940" height="24" />
            <line x2="496" y1="-928" y2="-928" x1="432" />
            <rect width="64" x="432" y="-492" height="24" />
            <line x2="496" y1="-480" y2="-480" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
            <rect width="368" x="64" y="-960" height="1024" />
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
        <blockdef name="CombineIRwPCJUMP">
            <timestamp>2015-2-13T8:52:51</timestamp>
            <rect width="320" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
        </blockdef>
        <block symbolname="PCAdderMuxes_Schematic" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="PCWRT" name="PCWRT" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="SEIMM(15:0)" name="SEIMM(15:0)" />
            <blockpin signalname="COMBINED(15:0)" name="IR(15:0)" />
            <blockpin signalname="CTRLBRIZ" name="CTRLBRIZ" />
            <blockpin signalname="CTRLJUMP" name="CTRLJUMP" />
            <blockpin signalname="PC_OUT(15:0)" name="PC_OUT(15:0)" />
        </block>
        <block symbolname="RegFileALU_Schematic" name="XLXI_3">
            <blockpin signalname="ALUOut(15:0)" name="ALUOut(15:0)" />
            <blockpin signalname="AiACOPY(15:0)" name="AiACOPY(15:0)" />
            <blockpin signalname="wDatCTRL(1:0)" name="wDatCTRL(1:0)" />
            <blockpin signalname="wAdrsCTRL" name="wAdrsCTRL" />
            <blockpin signalname="useFirstRegCTRL" name="useFirstRegCTRL" />
            <blockpin signalname="useRegCTRL" name="useRegCTRL" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="IRwrtCTRL" name="IRwrtCTRL" />
            <blockpin signalname="MemOWCTRL" name="memOWCTRL" />
            <blockpin signalname="RegWrtCTRL" name="RegWrtCTRL" />
            <blockpin signalname="SEIMM(15:0)" name="SEIMM(15:0)" />
            <blockpin signalname="iorCTRL" name="iorCTRL" />
            <blockpin signalname="MemDatOUT(15:0)" name="IR_IN(15:0)" />
            <blockpin signalname="MemDatOUT(15:0)" name="MemO_IN(15:0)" />
            <blockpin signalname="XLXN_24(15:0)" name="REG0OUT(15:0)" />
            <blockpin signalname="AiAOUT(15:0)" name="AiAOUT(15:0)" />
            <blockpin signalname="AiBOUT(15:0)" name="AiBOUT(15:0)" />
            <blockpin signalname="IR_OUT(15:0)" name="IR_OUT(15:0)" />
        </block>
        <block symbolname="MEMORY" name="XLXI_2">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="MUX_MemAdr(9:0)" name="ADDR_IN(9:0)" />
            <blockpin signalname="MemWCTRL" name="MemWCTRL" />
            <blockpin signalname="MemDatOUT(15:0)" name="DAT_OUT(15:0)" />
            <blockpin signalname="XLXN_24(15:0)" name="DAT_IN(15:0)" />
        </block>
        <block symbolname="MUX_OneBit" name="XLXI_5">
            <blockpin signalname="MemAdrsSlctCTRL" name="ctrlSlct" />
            <blockpin signalname="PC_OUT(15:0)" name="in1(15:0)" />
            <blockpin signalname="ALUOut(15:0)" name="in2(15:0)" />
            <blockpin signalname="MUX_MemAdr(15:0)" name="muxOut(15:0)" />
        </block>
        <block symbolname="CombineIRwPCJUMP" name="XLXI_7">
            <blockpin signalname="MemDatOUT(15:0)" name="irIN(15:0)" />
            <blockpin signalname="PC_OUT(15:0)" name="pcIN(15:0)" />
            <blockpin signalname="COMBINED(15:0)" name="jumpAddrOUT(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1584" y="1136" name="XLXI_3" orien="R0">
        </instance>
        <instance x="224" y="720" name="XLXI_1" orien="R0">
        </instance>
        <branch name="PC_OUT(15:0)">
            <wire x2="704" y1="752" y2="752" x1="640" />
        </branch>
        <branch name="ALUOut(15:0)">
            <wire x2="1584" y1="208" y2="208" x1="1520" />
        </branch>
        <branch name="AiACOPY(15:0)">
            <wire x2="1584" y1="272" y2="272" x1="1504" />
        </branch>
        <branch name="wDatCTRL(1:0)">
            <wire x2="1584" y1="336" y2="336" x1="1504" />
        </branch>
        <branch name="wAdrsCTRL">
            <wire x2="1584" y1="400" y2="400" x1="1504" />
        </branch>
        <branch name="useFirstRegCTRL">
            <wire x2="1584" y1="464" y2="464" x1="1504" />
        </branch>
        <branch name="useRegCTRL">
            <wire x2="1584" y1="528" y2="528" x1="1504" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="592" type="branch" />
            <wire x2="1584" y1="592" y2="592" x1="1504" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="656" type="branch" />
            <wire x2="1584" y1="656" y2="656" x1="1520" />
        </branch>
        <branch name="IRwrtCTRL">
            <wire x2="1584" y1="720" y2="720" x1="1504" />
        </branch>
        <branch name="MemOWCTRL">
            <wire x2="1584" y1="784" y2="784" x1="1504" />
        </branch>
        <branch name="RegWrtCTRL">
            <wire x2="1584" y1="848" y2="848" x1="1504" />
        </branch>
        <branch name="SEIMM(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="912" type="branch" />
            <wire x2="1584" y1="912" y2="912" x1="1488" />
        </branch>
        <branch name="iorCTRL">
            <wire x2="1584" y1="976" y2="976" x1="1488" />
        </branch>
        <branch name="MemDatOUT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1040" type="branch" />
            <wire x2="1584" y1="1040" y2="1040" x1="1488" />
        </branch>
        <branch name="MemDatOUT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1104" type="branch" />
            <wire x2="1584" y1="1104" y2="1104" x1="1488" />
        </branch>
        <branch name="AiAOUT(15:0)">
            <wire x2="2144" y1="656" y2="656" x1="2080" />
        </branch>
        <branch name="AiBOUT(15:0)">
            <wire x2="2144" y1="1104" y2="1104" x1="2080" />
        </branch>
        <branch name="CTRLJUMP">
            <wire x2="224" y1="688" y2="688" x1="160" />
        </branch>
        <branch name="CTRLBRIZ">
            <wire x2="224" y1="624" y2="624" x1="176" />
        </branch>
        <branch name="COMBINED(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="560" type="branch" />
            <wire x2="224" y1="560" y2="560" x1="176" />
        </branch>
        <branch name="SEIMM(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="496" type="branch" />
            <wire x2="224" y1="496" y2="496" x1="176" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="432" type="branch" />
            <wire x2="224" y1="432" y2="432" x1="176" />
        </branch>
        <branch name="PCWRT">
            <wire x2="224" y1="368" y2="368" x1="176" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="304" type="branch" />
            <wire x2="224" y1="304" y2="304" x1="176" />
        </branch>
        <branch name="CLK">
            <wire x2="352" y1="112" y2="112" x1="208" />
        </branch>
        <branch name="RESET">
            <wire x2="352" y1="176" y2="176" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="112" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="208" y="176" name="RESET" orien="R180" />
        <branch name="MemWCTRL">
            <wire x2="832" y1="816" y2="816" x1="784" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="624" type="branch" />
            <wire x2="832" y1="624" y2="624" x1="784" />
        </branch>
        <branch name="MemDatOUT(15:0)">
            <wire x2="1344" y1="624" y2="624" x1="1296" />
            <wire x2="1360" y1="624" y2="624" x1="1344" />
        </branch>
        <instance x="832" y="848" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_24(15:0)">
            <wire x2="752" y1="48" y2="880" x1="752" />
            <wire x2="784" y1="880" y2="880" x1="752" />
            <wire x2="832" y1="880" y2="880" x1="784" />
            <wire x2="2240" y1="48" y2="48" x1="752" />
            <wire x2="2240" y1="48" y2="208" x1="2240" />
            <wire x2="2160" y1="208" y2="208" x1="2080" />
            <wire x2="2240" y1="208" y2="208" x1="2160" />
        </branch>
        <branch name="PC_OUT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="352" y="1072" type="branch" />
            <wire x2="400" y1="1072" y2="1072" x1="352" />
        </branch>
        <branch name="ALUOut(15:0)">
            <wire x2="400" y1="1136" y2="1136" x1="352" />
        </branch>
        <branch name="MUX_MemAdr(15:0)">
            <wire x2="848" y1="1008" y2="1008" x1="784" />
        </branch>
        <branch name="MemAdrsSlctCTRL">
            <wire x2="400" y1="1008" y2="1008" x1="352" />
        </branch>
        <instance x="400" y="1168" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="352" y="1136" name="ALUOut(15:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="1008" name="MemAdrsSlctCTRL" orien="R180" />
        <branch name="MUX_MemAdr(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="688" type="branch" />
            <wire x2="832" y1="688" y2="688" x1="768" />
        </branch>
        <branch name="MemDatOUT(15:0)">
            <wire x2="928" y1="1104" y2="1104" x1="832" />
        </branch>
        <iomarker fontsize="28" x="928" y="1104" name="MemDatOUT(15:0)" orien="R0" />
        <branch name="SEIMM(15:0)">
            <wire x2="368" y1="864" y2="864" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="864" name="SEIMM(15:0)" orien="R180" />
        <instance x="832" y="432" name="XLXI_7" orien="R0">
        </instance>
        <branch name="MemDatOUT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="336" type="branch" />
            <wire x2="832" y1="336" y2="336" x1="800" />
        </branch>
        <branch name="PC_OUT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="400" type="branch" />
            <wire x2="832" y1="400" y2="400" x1="800" />
        </branch>
        <branch name="COMBINED(15:0)">
            <wire x2="1328" y1="336" y2="336" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1520" y="208" name="ALUOut(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1504" y="272" name="AiACOPY(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1504" y="400" name="wAdrsCTRL" orien="R180" />
        <iomarker fontsize="28" x="1504" y="464" name="useFirstRegCTRL" orien="R180" />
        <iomarker fontsize="28" x="1504" y="528" name="useRegCTRL" orien="R180" />
        <iomarker fontsize="28" x="1504" y="720" name="IRwrtCTRL" orien="R180" />
        <iomarker fontsize="28" x="1504" y="784" name="MemOWCTRL" orien="R180" />
        <iomarker fontsize="28" x="1504" y="848" name="RegWrtCTRL" orien="R180" />
        <iomarker fontsize="28" x="1488" y="976" name="iorCTRL" orien="R180" />
        <iomarker fontsize="28" x="784" y="816" name="MemWCTRL" orien="R180" />
        <iomarker fontsize="28" x="160" y="688" name="CTRLJUMP" orien="R180" />
        <iomarker fontsize="28" x="176" y="624" name="CTRLBRIZ" orien="R180" />
        <iomarker fontsize="28" x="176" y="368" name="PCWRT" orien="R180" />
        <iomarker fontsize="28" x="1504" y="336" name="wDatCTRL(1:0)" orien="R180" />
        <iomarker fontsize="28" x="2144" y="1104" name="AiBOUT(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2144" y="656" name="AiAOUT(15:0)" orien="R0" />
        <branch name="IR_OUT(15:0)">
            <wire x2="2224" y1="1168" y2="1168" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1168" name="IR_OUT(15:0)" orien="R0" />
    </sheet>
</drawing>