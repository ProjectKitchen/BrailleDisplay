<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="switch-omron">
<description>&lt;b&gt;Omron Switches&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="B3F-10XX">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<wire x1="3.302" y1="-0.762" x2="3.048" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.762" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0.762" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.762" x2="-3.048" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.762" x2="-3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.762" x2="-3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="-1.27" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="2.794" width="0.0508" layer="21"/>
<wire x1="1.27" y1="2.794" x2="-1.27" y2="2.794" width="0.0508" layer="21"/>
<wire x1="1.27" y1="2.794" x2="1.27" y2="3.048" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.794" x2="-1.27" y2="-2.794" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.794" x2="1.143" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="-1.27" y1="-2.794" x2="-1.27" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-3.048" x2="-1.27" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.159" y1="3.048" x2="1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="3.048" x2="-2.159" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="1.143" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-3.048" x2="2.159" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-0.762" x2="3.048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0.762" x2="3.048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.762" x2="-3.048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="0.762" x2="-3.048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="1.27" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.286" x2="-1.27" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="-0.508" x2="-2.413" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="0.508" x2="-2.159" y2="-0.381" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.1524" layer="21"/>
<circle x="-2.159" y="-2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="2.159" y="-2.032" radius="0.508" width="0.1524" layer="51"/>
<circle x="2.159" y="2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="-2.159" y="2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.635" width="0.0508" layer="51"/>
<circle x="0" y="0" radius="0.254" width="0.1524" layer="21"/>
<pad name="1" x="-3.2512" y="2.2606" drill="1.016" shape="long"/>
<pad name="3" x="-3.2512" y="-2.2606" drill="1.016" shape="long"/>
<pad name="2" x="3.2512" y="2.2606" drill="1.016" shape="long"/>
<pad name="4" x="3.2512" y="-2.2606" drill="1.016" shape="long"/>
<text x="-3.048" y="3.683" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.048" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.318" y="1.651" size="1.27" layer="51" ratio="10">1</text>
<text x="3.556" y="1.524" size="1.27" layer="51" ratio="10">2</text>
<text x="-4.572" y="-2.794" size="1.27" layer="51" ratio="10">3</text>
<text x="3.556" y="-2.794" size="1.27" layer="51" ratio="10">4</text>
</package>
</packages>
<symbols>
<symbol name="TS2">
<wire x1="0" y1="1.905" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-3.175" y2="1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="-1.905" x2="-3.175" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-4.445" y2="0" width="0.254" layer="94"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="0" x2="-3.175" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.127" width="0.4064" layer="94"/>
<circle x="0" y="2.54" radius="0.127" width="0.4064" layer="94"/>
<text x="-6.35" y="-2.54" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="3.175" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="P" x="0" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S" x="0" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="S1" x="2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="P1" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="10-XX" prefix="S" uservalue="yes">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="TS2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B3F-10XX">
<connects>
<connect gate="1" pin="P" pad="3"/>
<connect gate="1" pin="P1" pad="4"/>
<connect gate="1" pin="S" pad="1"/>
<connect gate="1" pin="S1" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="B3F-1000" constant="no"/>
<attribute name="OC_FARNELL" value="176432" constant="no"/>
<attribute name="OC_NEWARK" value="36M3542" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lsta">
<description>&lt;b&gt;Female Headers etc.&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
FE = female&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FE10-2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<wire x1="-12.7" y1="-2.413" x2="-12.7" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.413" x2="-12.065" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-12.7" y1="-2.413" x2="-12.065" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-12.065" y1="3.048" x2="12.065" y2="3.048" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-2.413" x2="12.7" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-3.048" x2="12.065" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="12.065" y1="3.048" x2="12.7" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.065" y1="-3.048" x2="12.7" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<circle x="-11.43" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-11.43" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-8.89" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-8.89" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-6.35" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-3.81" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-11.43" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-11.43" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-8.89" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-8.89" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-6.35" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="1.27" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="3.81" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="3.81" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="6.35" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="6.35" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="8.89" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="8.89" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="11.43" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="11.43" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="8.89" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="11.43" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="8.89" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="11.43" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-11.43" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="2" x="-11.43" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="-8.89" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="-8.89" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="-6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="-6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="7" x="-3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="8" x="-3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="9" x="-1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="10" x="-1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="11" x="1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="12" x="1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="13" x="3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="14" x="3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="15" x="6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="16" x="6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="17" x="8.89" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="18" x="8.89" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="19" x="11.43" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="20" x="11.43" y="-1.27" drill="0.9144" shape="octagon"/>
<text x="-7.62" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-11.811" y="3.429" size="1.27" layer="21" ratio="10">1</text>
<text x="10.541" y="-4.699" size="1.27" layer="21" ratio="10">20</text>
<text x="-12.7" y="-4.699" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="FE10-2">
<wire x1="3.81" y1="-12.7" x2="-3.81" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="-5.715" x2="-1.905" y2="-4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-8.255" x2="-1.905" y2="-6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-10.795" x2="-1.905" y2="-9.525" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-6.985" x2="1.905" y2="-8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-9.525" x2="1.905" y2="-10.795" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-0.635" x2="-1.905" y2="0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-3.175" x2="-1.905" y2="-1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="6.985" x2="-1.905" y2="8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="4.445" x2="-1.905" y2="5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="1.905" x2="-1.905" y2="3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="8.255" x2="1.905" y2="6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-3.81" y1="15.24" x2="-3.81" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-12.7" x2="3.81" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="15.24" x2="3.81" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="12.065" x2="-1.905" y2="13.335" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="9.525" x2="-1.905" y2="10.795" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="13.335" x2="1.905" y2="12.065" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="10.795" x2="1.905" y2="9.525" width="0.254" layer="94" curve="-180" cap="flat"/>
<text x="-3.81" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="16.002" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="13" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="15" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="17" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="19" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="18" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="20" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FE10-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FE10-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FE10-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD2">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DINA4_P">
<frame x1="0" y1="0" x2="180.34" y2="264.16" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">1</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">Title:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Author:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;TITLE</text>
<text x="17.78" y="8.89" size="2.54" layer="94">&gt;AUTHOR</text>
<text x="91.44" y="6.35" size="2.54" layer="94">1</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA4_P" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, portrait with extra doc field</description>
<gates>
<gate name="G$1" symbol="DINA4_P" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="78.74" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="SW_1" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_2" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_3" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_7" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_SPACE" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_8" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_NAV_SELECT" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_NAV_DOWN" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_NAV_LEFT" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_NAV_RIGHT" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_NAV_UP" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_4" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_5" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_6" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_EXTRA1" library="switch-omron" deviceset="10-XX" device=""/>
<part name="SW_EXTRA2" library="switch-omron" deviceset="10-XX" device=""/>
<part name="JP_PAN_LEFT" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="JP_PAN_RIGHT" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="SV2" library="con-lsta" deviceset="FE10-2" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="FRAME1" library="frames" deviceset="DINA4_P" device="">
<attribute name="AUTHOR" value="Christoph Ulbinger, BSc"/>
<attribute name="TITLE" value="Keyboard"/>
</part>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="SW_1" gate="1" x="-63.5" y="35.56"/>
<instance part="SW_2" gate="1" x="-38.1" y="35.56"/>
<instance part="SW_3" gate="1" x="-5.08" y="35.56"/>
<instance part="SW_7" gate="1" x="-5.08" y="0"/>
<instance part="SW_SPACE" gate="1" x="35.56" y="0"/>
<instance part="SW_8" gate="1" x="83.82" y="0"/>
<instance part="SW_NAV_SELECT" gate="1" x="35.56" y="40.64"/>
<instance part="SW_NAV_DOWN" gate="1" x="35.56" y="17.78"/>
<instance part="SW_NAV_LEFT" gate="1" x="17.78" y="40.64"/>
<instance part="SW_NAV_RIGHT" gate="1" x="55.88" y="40.64"/>
<instance part="SW_NAV_UP" gate="1" x="35.56" y="63.5"/>
<instance part="SW_4" gate="1" x="86.36" y="35.56"/>
<instance part="SW_5" gate="1" x="124.46" y="35.56"/>
<instance part="SW_6" gate="1" x="152.4" y="35.56"/>
<instance part="SW_EXTRA1" gate="1" x="104.14" y="53.34"/>
<instance part="SW_EXTRA2" gate="1" x="-22.86" y="53.34"/>
<instance part="JP_PAN_LEFT" gate="G$1" x="-66.04" y="-17.78" rot="R270"/>
<instance part="JP_PAN_RIGHT" gate="G$1" x="129.54" y="-20.32" rot="R270"/>
<instance part="GND1" gate="1" x="35.56" y="-12.7"/>
<instance part="SV2" gate="G$1" x="35.56" y="-45.72" rot="R180"/>
<instance part="GND3" gate="1" x="-7.62" y="-40.64"/>
<instance part="FRAME1" gate="G$2" x="86.36" y="-78.74">
<attribute name="AUTHOR" x="86.36" y="-78.74" size="1.778" layer="96" display="off"/>
<attribute name="TITLE" x="86.36" y="-78.74" size="1.778" layer="96" display="off"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="SW_1" gate="1" pin="P"/>
<wire x1="-63.5" y1="30.48" x2="-63.5" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_6" gate="1" pin="P"/>
<wire x1="-63.5" y1="25.4" x2="-38.1" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="25.4" x2="17.78" y2="25.4" width="0.1524" layer="91"/>
<wire x1="17.78" y1="25.4" x2="35.56" y2="25.4" width="0.1524" layer="91"/>
<wire x1="35.56" y1="25.4" x2="43.18" y2="25.4" width="0.1524" layer="91"/>
<wire x1="43.18" y1="25.4" x2="55.88" y2="25.4" width="0.1524" layer="91"/>
<wire x1="55.88" y1="25.4" x2="86.36" y2="25.4" width="0.1524" layer="91"/>
<wire x1="86.36" y1="25.4" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
<wire x1="104.14" y1="25.4" x2="124.46" y2="25.4" width="0.1524" layer="91"/>
<wire x1="124.46" y1="25.4" x2="152.4" y2="25.4" width="0.1524" layer="91"/>
<wire x1="152.4" y1="25.4" x2="152.4" y2="30.48" width="0.1524" layer="91"/>
<pinref part="SW_2" gate="1" pin="P"/>
<wire x1="-38.1" y1="30.48" x2="-38.1" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_3" gate="1" pin="P"/>
<wire x1="-38.1" y1="25.4" x2="-22.86" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="25.4" x2="-5.08" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="25.4" x2="-5.08" y2="30.48" width="0.1524" layer="91"/>
<pinref part="SW_NAV_LEFT" gate="1" pin="P"/>
<wire x1="17.78" y1="35.56" x2="17.78" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_NAV_SELECT" gate="1" pin="P"/>
<wire x1="35.56" y1="35.56" x2="35.56" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_NAV_RIGHT" gate="1" pin="P"/>
<wire x1="55.88" y1="35.56" x2="55.88" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_4" gate="1" pin="P"/>
<wire x1="86.36" y1="30.48" x2="86.36" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_5" gate="1" pin="P"/>
<wire x1="124.46" y1="30.48" x2="124.46" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_EXTRA2" gate="1" pin="P"/>
<wire x1="-22.86" y1="48.26" x2="-22.86" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_NAV_UP" gate="1" pin="P"/>
<wire x1="35.56" y1="58.42" x2="35.56" y2="55.88" width="0.1524" layer="91"/>
<wire x1="35.56" y1="55.88" x2="43.18" y2="55.88" width="0.1524" layer="91"/>
<wire x1="43.18" y1="55.88" x2="43.18" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_NAV_DOWN" gate="1" pin="P"/>
<wire x1="35.56" y1="12.7" x2="35.56" y2="10.16" width="0.1524" layer="91"/>
<wire x1="35.56" y1="10.16" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
<wire x1="43.18" y1="10.16" x2="43.18" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_EXTRA1" gate="1" pin="P"/>
<wire x1="104.14" y1="48.26" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SW_SPACE" gate="1" pin="P"/>
<wire x1="35.56" y1="-5.08" x2="35.56" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-7.62" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
<pinref part="SW_7" gate="1" pin="P"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-7.62" x2="35.56" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-7.62" x2="43.18" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="SW_8" gate="1" pin="P"/>
<wire x1="43.18" y1="-7.62" x2="83.82" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-7.62" x2="83.82" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="JP_PAN_LEFT" gate="G$1" pin="2"/>
<wire x1="-66.04" y1="-15.24" x2="-66.04" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-7.62" x2="-5.08" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="JP_PAN_RIGHT" gate="G$1" pin="2"/>
<wire x1="129.54" y1="-17.78" x2="129.54" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-7.62" x2="83.82" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-7.62" x2="35.56" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="2"/>
<wire x1="27.94" y1="-35.56" x2="-7.62" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-35.56" x2="-7.62" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
</net>
<net name="PORT_KB_1" class="0">
<segment>
<pinref part="SW_3" gate="1" pin="S"/>
<wire x1="-5.08" y1="40.64" x2="-5.08" y2="53.34" width="0.1524" layer="91"/>
<label x="-5.08" y="45.72" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="1"/>
<wire x1="43.18" y1="-35.56" x2="66.04" y2="-35.56" width="0.1524" layer="91"/>
<label x="45.72" y="-35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_KB_2" class="0">
<segment>
<pinref part="SW_2" gate="1" pin="S"/>
<wire x1="-38.1" y1="40.64" x2="-38.1" y2="53.34" width="0.1524" layer="91"/>
<label x="-38.1" y="45.72" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="3"/>
<wire x1="43.18" y1="-38.1" x2="66.04" y2="-38.1" width="0.1524" layer="91"/>
<label x="45.72" y="-38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_EXTRA_2" class="0">
<segment>
<pinref part="SW_EXTRA2" gate="1" pin="S"/>
<wire x1="-22.86" y1="58.42" x2="-22.86" y2="71.12" width="0.1524" layer="91"/>
<label x="-22.86" y="60.96" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PORT_KB_3" class="0">
<segment>
<pinref part="SW_1" gate="1" pin="S"/>
<wire x1="-63.5" y1="40.64" x2="-63.5" y2="53.34" width="0.1524" layer="91"/>
<label x="-63.5" y="45.72" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="5"/>
<wire x1="43.18" y1="-40.64" x2="66.04" y2="-40.64" width="0.1524" layer="91"/>
<label x="45.72" y="-40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_LEFT" class="0">
<segment>
<pinref part="SW_NAV_LEFT" gate="1" pin="S"/>
<wire x1="17.78" y1="45.72" x2="17.78" y2="53.34" width="0.1524" layer="91"/>
<label x="17.78" y="48.26" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="18"/>
<wire x1="27.94" y1="-55.88" x2="7.62" y2="-55.88" width="0.1524" layer="91"/>
<label x="10.16" y="-55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="6"/>
<wire x1="27.94" y1="-40.64" x2="7.62" y2="-40.64" width="0.1524" layer="91"/>
<label x="10.16" y="-40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_UP" class="0">
<segment>
<pinref part="SW_NAV_UP" gate="1" pin="S"/>
<wire x1="35.56" y1="68.58" x2="35.56" y2="78.74" width="0.1524" layer="91"/>
<label x="35.56" y="71.12" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="19"/>
<wire x1="43.18" y1="-58.42" x2="66.04" y2="-58.42" width="0.1524" layer="91"/>
<label x="45.72" y="-58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_RIGHT" class="0">
<segment>
<pinref part="SW_NAV_RIGHT" gate="1" pin="S"/>
<wire x1="55.88" y1="45.72" x2="55.88" y2="53.34" width="0.1524" layer="91"/>
<label x="55.88" y="48.26" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="16"/>
<wire x1="27.94" y1="-53.34" x2="7.62" y2="-53.34" width="0.1524" layer="91"/>
<label x="10.16" y="-53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_KB_4" class="0">
<segment>
<pinref part="SW_4" gate="1" pin="S"/>
<wire x1="86.36" y1="40.64" x2="86.36" y2="53.34" width="0.1524" layer="91"/>
<label x="86.36" y="45.72" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="7"/>
<wire x1="43.18" y1="-43.18" x2="66.04" y2="-43.18" width="0.1524" layer="91"/>
<label x="45.72" y="-43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_KB_5" class="0">
<segment>
<pinref part="SW_5" gate="1" pin="S"/>
<wire x1="124.46" y1="40.64" x2="124.46" y2="53.34" width="0.1524" layer="91"/>
<label x="124.46" y="45.72" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="9"/>
<wire x1="43.18" y1="-45.72" x2="66.04" y2="-45.72" width="0.1524" layer="91"/>
<label x="45.72" y="-45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_EXTRA_1" class="0">
<segment>
<pinref part="SW_EXTRA1" gate="1" pin="S"/>
<wire x1="104.14" y1="58.42" x2="104.14" y2="71.12" width="0.1524" layer="91"/>
<label x="104.14" y="60.96" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PORT_KB_6" class="0">
<segment>
<pinref part="SW_6" gate="1" pin="S"/>
<wire x1="152.4" y1="40.64" x2="152.4" y2="53.34" width="0.1524" layer="91"/>
<label x="152.4" y="45.72" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="11"/>
<wire x1="43.18" y1="-48.26" x2="66.04" y2="-48.26" width="0.1524" layer="91"/>
<label x="45.72" y="-48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_KB_8" class="0">
<segment>
<pinref part="SW_8" gate="1" pin="S"/>
<wire x1="83.82" y1="5.08" x2="83.82" y2="17.78" width="0.1524" layer="91"/>
<label x="83.82" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="15"/>
<wire x1="43.18" y1="-53.34" x2="66.04" y2="-53.34" width="0.1524" layer="91"/>
<label x="45.72" y="-53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_KB_7" class="0">
<segment>
<pinref part="SW_7" gate="1" pin="S"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="20.32" width="0.1524" layer="91"/>
<label x="-5.08" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="13"/>
<wire x1="43.18" y1="-50.8" x2="66.04" y2="-50.8" width="0.1524" layer="91"/>
<label x="45.72" y="-50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_SPACE" class="0">
<segment>
<pinref part="SW_SPACE" gate="1" pin="S"/>
<wire x1="35.56" y1="5.08" x2="20.32" y2="5.08" width="0.1524" layer="91"/>
<wire x1="20.32" y1="5.08" x2="20.32" y2="17.78" width="0.1524" layer="91"/>
<label x="20.32" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="17"/>
<wire x1="43.18" y1="-55.88" x2="66.04" y2="-55.88" width="0.1524" layer="91"/>
<label x="45.72" y="-55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_DOWN" class="0">
<segment>
<pinref part="SW_NAV_DOWN" gate="1" pin="S"/>
<wire x1="35.56" y1="22.86" x2="15.24" y2="22.86" width="0.1524" layer="91"/>
<wire x1="15.24" y1="22.86" x2="15.24" y2="7.62" width="0.1524" layer="91"/>
<label x="15.24" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="20"/>
<wire x1="27.94" y1="-58.42" x2="7.62" y2="-58.42" width="0.1524" layer="91"/>
<label x="10.16" y="-58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_SELECT" class="0">
<segment>
<wire x1="25.4" y1="48.26" x2="25.4" y2="63.5" width="0.1524" layer="91"/>
<pinref part="SW_NAV_SELECT" gate="1" pin="S"/>
<wire x1="25.4" y1="48.26" x2="35.56" y2="48.26" width="0.1524" layer="91"/>
<wire x1="35.56" y1="48.26" x2="35.56" y2="45.72" width="0.1524" layer="91"/>
<label x="25.4" y="53.34" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="14"/>
<wire x1="27.94" y1="-50.8" x2="7.62" y2="-50.8" width="0.1524" layer="91"/>
<label x="10.16" y="-50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_PAN_LEFT" class="0">
<segment>
<pinref part="JP_PAN_LEFT" gate="G$1" pin="1"/>
<wire x1="-63.5" y1="-15.24" x2="-63.5" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-10.16" x2="-43.18" y2="-10.16" width="0.1524" layer="91"/>
<label x="-55.88" y="-10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_PAN_RIGHT" class="0">
<segment>
<pinref part="JP_PAN_RIGHT" gate="G$1" pin="1"/>
<wire x1="132.08" y1="-17.78" x2="132.08" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-5.08" x2="106.68" y2="-5.08" width="0.1524" layer="91"/>
<label x="109.22" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="8"/>
<wire x1="27.94" y1="-43.18" x2="7.62" y2="-43.18" width="0.1524" layer="91"/>
<label x="10.16" y="-43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_EXTRA2" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="12"/>
<wire x1="27.94" y1="-48.26" x2="7.62" y2="-48.26" width="0.1524" layer="91"/>
<label x="10.16" y="-48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="PORT_EXTRA1" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="10"/>
<wire x1="27.94" y1="-45.72" x2="7.62" y2="-45.72" width="0.1524" layer="91"/>
<label x="10.16" y="-45.72" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
