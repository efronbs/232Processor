<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17(1:0)" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19(3:0)" />
        <signal name="CODE(15:0)" />
        <signal name="CODE(5:2)" />
        <signal name="CODE(15:12)" />
        <signal name="CLK" />
        <signal name="RESET" />
        <blockdef name="EverythingButALU_Schematic">
            <timestamp>2015-2-13T9:53:32</timestamp>
            <rect width="384" x="64" y="-1344" height="1344" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <rect width="64" x="0" y="-1196" height="24" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
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
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-1324" height="24" />
            <line x2="512" y1="-1312" y2="-1312" x1="448" />
        </blockdef>
        <blockdef name="ALUcontrol">
            <timestamp>2015-2-13T9:55:25</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MainControl">
            <timestamp>2015-2-13T10:16:10</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <line x2="0" y1="-768" y2="-768" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="384" y1="-1120" y2="-1120" x1="320" />
            <line x2="384" y1="-1056" y2="-1056" x1="320" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-1152" height="1216" />
        </blockdef>
        <blockdef name="clockModule">
            <timestamp>2015-2-13T1:35:49</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="EverythingButALU_Schematic" name="XLXI_1">
            <blockpin signalname="XLXN_7" name="BWrtCTRL" />
            <blockpin signalname="XLXN_6" name="AWrtCTRL" />
            <blockpin signalname="XLXN_19(3:0)" name="ALUOpCTRL(3:0)" />
            <blockpin signalname="XLXN_13" name="ImSlctCTRL" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_12" name="MemAdrsSlctCTRL" />
            <blockpin signalname="XLXN_10" name="MemWCTRL" />
            <blockpin signalname="XLXN_3" name="PCWrtCTRL" />
            <blockpin signalname="XLXN_2" name="JumpCTRL" />
            <blockpin signalname="XLXN_18" name="iorCTRL" />
            <blockpin signalname="XLXN_9" name="RegWrtCTRL" />
            <blockpin signalname="XLXN_5" name="MemOWCTRL" />
            <blockpin signalname="XLXN_4" name="IRwrtCTRL" />
            <blockpin signalname="XLXN_15" name="useRegCTRL" />
            <blockpin signalname="XLXN_16" name="useFirstRegCTRL" />
            <blockpin signalname="XLXN_11" name="wAdrsCTRL" />
            <blockpin signalname="XLXN_17(1:0)" name="wDatCTRL(1:0)" />
            <blockpin signalname="XLXN_14" name="BEQoBNECTRL" />
            <blockpin signalname="XLXN_1" name="BranchCTRL" />
            <blockpin signalname="XLXN_8" name="ALUwrtCTRL" />
            <blockpin signalname="CODE(15:0)" name="MemDatOut(15:0)" />
        </block>
        <block symbolname="ALUcontrol" name="XLXI_2">
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="CODE(15:12)" name="op(3:0)" />
            <blockpin signalname="CODE(5:2)" name="func(3:0)" />
            <blockpin signalname="XLXN_19(3:0)" name="ALUop(3:0)" />
        </block>
        <block symbolname="MainControl" name="XLXI_3">
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="CODE(15:12)" name="op(3:0)" />
            <blockpin signalname="CODE(5:2)" name="func(3:0)" />
            <blockpin signalname="XLXN_1" name="branch" />
            <blockpin signalname="XLXN_2" name="jump" />
            <blockpin signalname="XLXN_3" name="PCwrt" />
            <blockpin signalname="XLXN_4" name="IRwrt" />
            <blockpin signalname="XLXN_5" name="memOWrt" />
            <blockpin signalname="XLXN_6" name="Awrt" />
            <blockpin signalname="XLXN_7" name="Bwrt" />
            <blockpin signalname="XLXN_8" name="ALUwrt" />
            <blockpin signalname="XLXN_9" name="regWrt" />
            <blockpin signalname="XLXN_10" name="memWrt" />
            <blockpin signalname="XLXN_11" name="wAdrs" />
            <blockpin signalname="XLXN_12" name="memAdrsSlct" />
            <blockpin signalname="XLXN_13" name="immSlct" />
            <blockpin signalname="XLXN_14" name="BNEoBEQ" />
            <blockpin signalname="XLXN_15" name="useReg" />
            <blockpin signalname="XLXN_16" name="useFirstReg" />
            <blockpin signalname="XLXN_17(1:0)" name="wDat(1:0)" />
            <blockpin signalname="XLXN_18" name="imOrR" />
        </block>
        <block symbolname="clockModule" name="XLXI_4">
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="CLK" name="clk" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="1952" name="XLXI_1" orien="R0">
        </instance>
        <instance x="304" y="1792" name="XLXI_3" orien="R0">
        </instance>
        <instance x="304" y="2096" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="896" y1="672" y2="672" x1="688" />
            <wire x2="896" y1="672" y2="1856" x1="896" />
            <wire x2="1120" y1="1856" y2="1856" x1="896" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="880" y1="736" y2="736" x1="688" />
            <wire x2="880" y1="736" y2="1216" x1="880" />
            <wire x2="1120" y1="1216" y2="1216" x1="880" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="864" y1="800" y2="800" x1="688" />
            <wire x2="864" y1="800" y2="1152" x1="864" />
            <wire x2="1120" y1="1152" y2="1152" x1="864" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="848" y1="864" y2="864" x1="688" />
            <wire x2="848" y1="864" y2="1472" x1="848" />
            <wire x2="1120" y1="1472" y2="1472" x1="848" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="832" y1="928" y2="928" x1="688" />
            <wire x2="832" y1="928" y2="1408" x1="832" />
            <wire x2="1120" y1="1408" y2="1408" x1="832" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="912" y1="992" y2="992" x1="688" />
            <wire x2="912" y1="704" y2="992" x1="912" />
            <wire x2="1120" y1="704" y2="704" x1="912" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="928" y1="1056" y2="1056" x1="688" />
            <wire x2="928" y1="640" y2="1056" x1="928" />
            <wire x2="1120" y1="640" y2="640" x1="928" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="816" y1="1120" y2="1120" x1="688" />
            <wire x2="816" y1="1120" y2="1920" x1="816" />
            <wire x2="1120" y1="1920" y2="1920" x1="816" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="864" y1="1184" y2="1184" x1="688" />
            <wire x2="864" y1="1184" y2="1344" x1="864" />
            <wire x2="1120" y1="1344" y2="1344" x1="864" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="912" y1="1248" y2="1248" x1="688" />
            <wire x2="912" y1="1088" y2="1248" x1="912" />
            <wire x2="1120" y1="1088" y2="1088" x1="912" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="800" y1="1312" y2="1312" x1="688" />
            <wire x2="800" y1="1312" y2="1664" x1="800" />
            <wire x2="1120" y1="1664" y2="1664" x1="800" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="944" y1="1376" y2="1376" x1="688" />
            <wire x2="944" y1="1024" y2="1376" x1="944" />
            <wire x2="1120" y1="1024" y2="1024" x1="944" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="960" y1="1440" y2="1440" x1="688" />
            <wire x2="960" y1="832" y2="1440" x1="960" />
            <wire x2="1120" y1="832" y2="832" x1="960" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="880" y1="1504" y2="1504" x1="688" />
            <wire x2="880" y1="1504" y2="1792" x1="880" />
            <wire x2="1120" y1="1792" y2="1792" x1="880" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="864" y1="1568" y2="1568" x1="688" />
            <wire x2="864" y1="1536" y2="1568" x1="864" />
            <wire x2="1120" y1="1536" y2="1536" x1="864" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="864" y1="1632" y2="1632" x1="688" />
            <wire x2="864" y1="1600" y2="1632" x1="864" />
            <wire x2="1120" y1="1600" y2="1600" x1="864" />
        </branch>
        <branch name="XLXN_17(1:0)">
            <wire x2="864" y1="1696" y2="1696" x1="688" />
            <wire x2="864" y1="1696" y2="1728" x1="864" />
            <wire x2="1120" y1="1728" y2="1728" x1="864" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="912" y1="1824" y2="1824" x1="688" />
            <wire x2="912" y1="1280" y2="1824" x1="912" />
            <wire x2="1120" y1="1280" y2="1280" x1="912" />
        </branch>
        <branch name="XLXN_19(3:0)">
            <wire x2="976" y1="1936" y2="1936" x1="688" />
            <wire x2="976" y1="768" y2="1936" x1="976" />
            <wire x2="1120" y1="768" y2="768" x1="976" />
        </branch>
        <branch name="CODE(15:0)">
            <wire x2="1696" y1="640" y2="640" x1="1632" />
        </branch>
        <branch name="CODE(5:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="2064" type="branch" />
            <wire x2="304" y1="2064" y2="2064" x1="240" />
        </branch>
        <branch name="CODE(15:12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="2000" type="branch" />
            <wire x2="304" y1="2000" y2="2000" x1="256" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1936" type="branch" />
            <wire x2="304" y1="1936" y2="1936" x1="240" />
        </branch>
        <branch name="CODE(5:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1728" type="branch" />
            <wire x2="304" y1="1728" y2="1728" x1="256" />
        </branch>
        <branch name="CODE(15:12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1376" type="branch" />
            <wire x2="272" y1="1376" y2="1376" x1="256" />
            <wire x2="304" y1="1376" y2="1376" x1="272" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1024" type="branch" />
            <wire x2="304" y1="1024" y2="1024" x1="256" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="672" type="branch" />
            <wire x2="304" y1="672" y2="672" x1="256" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="896" type="branch" />
            <wire x2="1120" y1="896" y2="896" x1="1072" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="960" type="branch" />
            <wire x2="1120" y1="960" y2="960" x1="1056" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="496" type="branch" />
            <wire x2="384" y1="496" y2="496" x1="288" />
        </branch>
        <instance x="208" y="352" name="XLXI_4" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="688" y1="320" y2="320" x1="592" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="144" y="320" type="branch" />
            <wire x2="208" y1="320" y2="320" x1="144" />
        </branch>
    </sheet>
</drawing>