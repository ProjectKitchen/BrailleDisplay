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
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="87832-14">
<description>&lt;b&gt;PCB Headers&lt;/b&gt;&lt;p&gt; 
2.00mm (.079") Pitch Milli-Grid Header, Vertical, Shrouded</description>
<wire x1="8.4" y1="3.75" x2="8.4" y2="-3.75" width="0.2032" layer="21"/>
<wire x1="8.4" y1="-3.75" x2="-8.4" y2="-3.75" width="0.2032" layer="21"/>
<wire x1="-8.4" y1="-3.75" x2="-8.4" y2="3.75" width="0.2032" layer="21"/>
<wire x1="-8.4" y1="3.75" x2="8.4" y2="3.75" width="0.2032" layer="21"/>
<wire x1="1" y1="-3.75" x2="1" y2="-3.25" width="0.0508" layer="51"/>
<wire x1="1" y1="-3.25" x2="1" y2="-3" width="0.0508" layer="51"/>
<wire x1="1" y1="-3" x2="2.75" y2="-3" width="0.0508" layer="51"/>
<wire x1="2.75" y1="-3" x2="2.75" y2="-2.75" width="0.0508" layer="51"/>
<wire x1="2.75" y1="-2.75" x2="3.25" y2="-2.75" width="0.0508" layer="51"/>
<wire x1="3.25" y1="-2.75" x2="3.25" y2="-3" width="0.0508" layer="51"/>
<wire x1="3.25" y1="-3" x2="7.5" y2="-3" width="0.0508" layer="51"/>
<wire x1="7.5" y1="-3" x2="7.5" y2="1" width="0.0508" layer="51"/>
<wire x1="7.5" y1="1" x2="7.5" y2="1.75" width="0.0508" layer="51"/>
<wire x1="7.5" y1="1.75" x2="7.5" y2="3" width="0.0508" layer="51"/>
<wire x1="7.5" y1="3" x2="6.25" y2="3" width="0.0508" layer="51"/>
<wire x1="6.25" y1="3" x2="6.25" y2="2.75" width="0.0508" layer="51"/>
<wire x1="6.25" y1="2.75" x2="5.75" y2="2.75" width="0.0508" layer="51"/>
<wire x1="5.75" y1="2.75" x2="5.75" y2="3" width="0.0508" layer="51"/>
<wire x1="5.75" y1="3" x2="4.25" y2="3" width="0.0508" layer="51"/>
<wire x1="4.25" y1="3" x2="4.25" y2="2.75" width="0.0508" layer="51"/>
<wire x1="4.25" y1="2.75" x2="3.75" y2="2.75" width="0.0508" layer="51"/>
<wire x1="3.75" y1="2.75" x2="3.75" y2="3" width="0.0508" layer="51"/>
<wire x1="3.75" y1="3" x2="2.25" y2="3" width="0.0508" layer="51"/>
<wire x1="2.25" y1="3" x2="2.25" y2="2.75" width="0.0508" layer="51"/>
<wire x1="2.25" y1="2.75" x2="1.75" y2="2.75" width="0.0508" layer="51"/>
<wire x1="1.75" y1="2.75" x2="1.75" y2="3" width="0.0508" layer="51"/>
<wire x1="1.75" y1="3" x2="0.25" y2="3" width="0.0508" layer="51"/>
<wire x1="0.25" y1="3" x2="0.25" y2="2.75" width="0.0508" layer="51"/>
<wire x1="0.25" y1="2.75" x2="-0.25" y2="2.75" width="0.0508" layer="51"/>
<wire x1="-0.25" y1="2.75" x2="-0.25" y2="3" width="0.0508" layer="51"/>
<wire x1="-0.25" y1="3" x2="-1.75" y2="3" width="0.0508" layer="51"/>
<wire x1="-1.75" y1="3" x2="-1.75" y2="2.75" width="0.0508" layer="51"/>
<wire x1="-1.75" y1="2.75" x2="-2.25" y2="2.75" width="0.0508" layer="51"/>
<wire x1="-2.25" y1="2.75" x2="-2.25" y2="3" width="0.0508" layer="51"/>
<wire x1="-2.25" y1="3" x2="-3.75" y2="3" width="0.0508" layer="51"/>
<wire x1="-3.75" y1="3" x2="-3.75" y2="2.75" width="0.0508" layer="51"/>
<wire x1="-3.75" y1="2.75" x2="-4.25" y2="2.75" width="0.0508" layer="51"/>
<wire x1="-4.25" y1="2.75" x2="-4.25" y2="3" width="0.0508" layer="51"/>
<wire x1="-4.25" y1="3" x2="-5.75" y2="3" width="0.0508" layer="51"/>
<wire x1="-5.75" y1="3" x2="-5.75" y2="2.75" width="0.0508" layer="51"/>
<wire x1="-5.75" y1="2.75" x2="-6.25" y2="2.75" width="0.0508" layer="51"/>
<wire x1="-6.25" y1="2.75" x2="-6.25" y2="3" width="0.0508" layer="51"/>
<wire x1="-6.25" y1="3" x2="-7.5" y2="3" width="0.0508" layer="51"/>
<wire x1="-7.5" y1="3" x2="-7.5" y2="-0.75" width="0.0508" layer="51"/>
<wire x1="-7.5" y1="-0.75" x2="-7.5" y2="-1.75" width="0.0508" layer="51"/>
<wire x1="-7.5" y1="-1.75" x2="-7.5" y2="-3" width="0.0508" layer="51"/>
<wire x1="-7.5" y1="-3" x2="-3.25" y2="-3" width="0.0508" layer="51"/>
<wire x1="-3.25" y1="-3" x2="-3.25" y2="-2.75" width="0.0508" layer="51"/>
<wire x1="-3.25" y1="-2.75" x2="-2.75" y2="-2.75" width="0.0508" layer="51"/>
<wire x1="-2.75" y1="-2.75" x2="-2.75" y2="-3" width="0.0508" layer="51"/>
<wire x1="-2.75" y1="-3" x2="-1" y2="-3" width="0.0508" layer="51"/>
<wire x1="-1" y1="-3" x2="-1" y2="-3.25" width="0.0508" layer="51"/>
<wire x1="-1" y1="-3.25" x2="-1" y2="-3.75" width="0.0508" layer="51"/>
<wire x1="-7.5" y1="-0.75" x2="-8" y2="-0.75" width="0.0508" layer="51"/>
<wire x1="-8" y1="-0.75" x2="-8.25" y2="-0.75" width="0.0508" layer="51"/>
<wire x1="-7.5" y1="-1.75" x2="-8" y2="-1.75" width="0.0508" layer="51"/>
<wire x1="-8" y1="-1.75" x2="-8.25" y2="-1.75" width="0.0508" layer="51"/>
<wire x1="7.5" y1="1.75" x2="8" y2="1.75" width="0.0508" layer="51"/>
<wire x1="8" y1="1.75" x2="8.25" y2="1.75" width="0.0508" layer="51"/>
<wire x1="7.5" y1="1" x2="8" y2="1" width="0.0508" layer="51"/>
<wire x1="8" y1="1" x2="8.25" y2="1" width="0.0508" layer="51"/>
<wire x1="-8" y1="-0.75" x2="-8" y2="3.25" width="0.0508" layer="51"/>
<wire x1="-8" y1="3.25" x2="8" y2="3.25" width="0.0508" layer="51"/>
<wire x1="8" y1="3.25" x2="8" y2="1.75" width="0.0508" layer="51"/>
<wire x1="8" y1="1" x2="8" y2="-3.25" width="0.0508" layer="51"/>
<wire x1="8" y1="-3.25" x2="1" y2="-3.25" width="0.0508" layer="51"/>
<wire x1="-1" y1="-3.25" x2="-8" y2="-3.25" width="0.0508" layer="51"/>
<wire x1="-8" y1="-3.25" x2="-8" y2="-1.75" width="0.0508" layer="51"/>
<smd name="2" x="-6" y="2.15" dx="1" dy="2.75" layer="1"/>
<smd name="4" x="-4" y="2.15" dx="1" dy="2.75" layer="1"/>
<smd name="1" x="-6" y="-2.15" dx="1" dy="2.75" layer="1"/>
<smd name="3" x="-4" y="-2.15" dx="1" dy="2.75" layer="1"/>
<smd name="5" x="-2" y="-2.15" dx="1" dy="2.75" layer="1"/>
<smd name="6" x="-2" y="2.15" dx="1" dy="2.75" layer="1"/>
<smd name="7" x="0" y="-2.15" dx="1" dy="2.75" layer="1"/>
<smd name="8" x="0" y="2.15" dx="1" dy="2.75" layer="1"/>
<smd name="9" x="2" y="-2.15" dx="1" dy="2.75" layer="1" rot="R180"/>
<smd name="10" x="2" y="2.15" dx="1" dy="2.75" layer="1" rot="R180"/>
<smd name="11" x="4" y="-2.15" dx="1" dy="2.75" layer="1"/>
<smd name="12" x="4" y="2.15" dx="1" dy="2.75" layer="1"/>
<smd name="13" x="6" y="-2.15" dx="1" dy="2.75" layer="1"/>
<smd name="14" x="6" y="2.15" dx="1" dy="2.75" layer="1"/>
<text x="-9.0325" y="-3.4925" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="9.985" y="-3.4925" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-7.25" y="-2.75" size="0.6096" layer="51" ratio="10">1</text>
<rectangle x1="-6.5" y1="0.5" x2="-5.5" y2="1.5" layer="51"/>
<rectangle x1="-4.5" y1="0.5" x2="-3.5" y2="1.5" layer="51"/>
<rectangle x1="-2.5" y1="0.5" x2="-1.5" y2="1.5" layer="51"/>
<rectangle x1="-0.5" y1="0.5" x2="0.5" y2="1.5" layer="51"/>
<rectangle x1="-6.5" y1="-1.5" x2="-5.5" y2="-0.5" layer="51"/>
<rectangle x1="-4.5" y1="-1.5" x2="-3.5" y2="-0.5" layer="51"/>
<rectangle x1="-2.5" y1="-1.5" x2="-1.5" y2="-0.5" layer="51"/>
<rectangle x1="-0.5" y1="-1.5" x2="0.5" y2="-0.5" layer="51"/>
<rectangle x1="1.5" y1="0.5" x2="2.5" y2="1.5" layer="51"/>
<rectangle x1="1.5" y1="-1.5" x2="2.5" y2="-0.5" layer="51"/>
<rectangle x1="3.5" y1="0.5" x2="4.5" y2="1.5" layer="51"/>
<rectangle x1="3.5" y1="-1.5" x2="4.5" y2="-0.5" layer="51"/>
<rectangle x1="5.5" y1="0.5" x2="6.5" y2="1.5" layer="51"/>
<rectangle x1="5.5" y1="-1.5" x2="6.5" y2="-0.5" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="CON-2X07">
<wire x1="4.445" y1="8.89" x2="-1.905" y2="8.89" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-8.89" x2="-1.905" y2="8.89" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-8.89" x2="4.445" y2="-8.89" width="0.254" layer="94"/>
<wire x1="4.445" y1="8.89" x2="4.445" y2="-8.89" width="0.254" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-0.635" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-0.635" y2="5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="7.62" x2="3.175" y2="7.62" width="0.1524" layer="94"/>
<wire x1="5.08" y1="5.08" x2="3.175" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="3.175" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-0.635" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-0.635" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="3.175" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="3.175" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="-0.635" y1="7.62" x2="0.635" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="5.08" x2="0.635" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="-5.08" x2="0.635" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="-7.62" x2="0.635" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.905" y1="7.62" x2="3.175" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.905" y1="5.08" x2="3.175" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.4064" layer="94"/>
<wire x1="1.905" y1="0" x2="3.175" y2="0" width="0.4064" layer="94"/>
<wire x1="1.905" y1="-2.54" x2="3.175" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.905" y1="-5.08" x2="3.175" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.905" y1="-7.62" x2="3.175" y2="-7.62" width="0.4064" layer="94"/>
<text x="-1.905" y="10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.905" y="-11.7475" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="7.62" visible="pad" length="short" direction="pas"/>
<pin name="2" x="7.62" y="7.62" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="3" x="-5.08" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="4" x="7.62" y="5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="5" x="-5.08" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="6" x="7.62" y="2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="7" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="8" x="7.62" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="9" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="10" x="7.62" y="-2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="11" x="-5.08" y="-5.08" visible="pad" length="short" direction="pas"/>
<pin name="12" x="7.62" y="-5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="13" x="-5.08" y="-7.62" visible="pad" length="short" direction="pas"/>
<pin name="14" x="7.62" y="-7.62" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="87832-14" prefix="X">
<description>&lt;b&gt;Milli-Grid Header&lt;/b&gt;&lt;p&gt; 
2.00mm (.079") Pitch</description>
<gates>
<gate name="G$1" symbol="CON-2X07" x="0" y="-7.62"/>
</gates>
<devices>
<device name="" package="87832-14">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="2" pad="2"/>
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
<attribute name="OC_FARNELL" value="7434698" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="wirepad">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1,6/0,8">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-0.762" y1="0.762" x2="-0.508" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.508" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.508" x2="0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.762" x2="0.508" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="-0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-0.762" y2="-0.508" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-0.762" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="1,6/0,9">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-0.508" y1="0.762" x2="-0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.508" x2="-0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-0.508" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.508" y1="-0.762" x2="0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.762" x2="0.762" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.508" x2="0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.508" y2="0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9144" diameter="1.6002" shape="octagon"/>
<text x="-0.762" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,15/1,0">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.143" y1="-1.143" x2="1.143" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-1.143" x2="0.635" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.635" x2="1.143" y2="1.143" width="0.1524" layer="21"/>
<wire x1="1.143" y1="1.143" x2="0.635" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.143" x2="-1.143" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="1.143" x2="-1.143" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.635" x2="-1.143" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-1.143" x2="-0.635" y2="-1.143" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-1.143" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/0,8">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.762" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.8128" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/0,9">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.762" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9144" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/1,0">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/1,1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,17/1,1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="-1.016" x2="1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.524" x2="1.016" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.524" x2="-1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="3.175" shape="octagon"/>
<text x="-1.524" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,17/1,2">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="-1.016" x2="1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.524" x2="1.016" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.524" x2="-1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1938" diameter="3.175" shape="octagon"/>
<text x="-1.524" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,17/1,3">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="-1.016" x2="1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.524" x2="1.016" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.524" x2="-1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3208" diameter="3.175" shape="octagon"/>
<text x="-1.524" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,81/1,1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,81/1,3">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3208" diameter="3.81" shape="octagon"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,81/1,4">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.397" diameter="3.81" shape="octagon"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="4,16O1,6">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<pad name="1" x="0" y="0" drill="1.6002" diameter="4.1656" shape="octagon"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-2.1" y="2.2" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="5-1,8">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.1684" y1="2.794" x2="-1.1684" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.1684" y1="-2.794" x2="-1.1684" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.1684" y1="-2.794" x2="1.1684" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="1.1684" y1="2.794" x2="1.1684" y2="-2.794" width="0.1524" layer="21"/>
<smd name="1" x="0" y="0" dx="1.8288" dy="5.08" layer="1"/>
<text x="-1.524" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-0.1" y="2.8" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="5-2,5">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="2.794" x2="-1.524" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-2.794" x2="-1.524" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-2.794" x2="1.524" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="1.524" y1="2.794" x2="1.524" y2="-2.794" width="0.1524" layer="21"/>
<smd name="1" x="0" y="0" dx="2.54" dy="5.08" layer="1"/>
<text x="-1.778" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-0.1" y="2.8" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="SMD1,27-2,54">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="0" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-0.8" y="-2.4" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
<package name="SMD2,54-5,08">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="0" y="0" dx="2.54" dy="5.08" layer="1"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.5" y="-2.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="PAD">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="WIREPAD" prefix="PAD">
<description>&lt;b&gt;Wire PAD&lt;/b&gt; connect wire on PCB</description>
<gates>
<gate name="G$1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="1,6/0,8" package="1,6/0,8">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1,6/0,9" package="1,6/0,9">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,15/1,0" package="2,15/1,0">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/0,8" package="2,54/0,8">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/0,9" package="2,54/0,9">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/1,0" package="2,54/1,0">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/1,1" package="2,54/1,1">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,17/1,1" package="3,17/1,1">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,17/1,2" package="3,17/1,2">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,17/1,3" package="3,17/1,3">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,81/1,1" package="3,81/1,1">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,81/1,3" package="3,81/1,3">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,81/1,4" package="3,81/1,4">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4,16O1,6" package="4,16O1,6">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD5-1,8" package="5-1,8">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD5-2,5" package="5-2,5">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD1,27-254" package="SMD1,27-2,54">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2,54-5,08" package="SMD2,54-5,08">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
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
<part name="MOTOR1_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR1_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR2_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR2_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR3_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR3_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR4_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR4_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR5_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR5_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR6_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR6_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="MOTOR7_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR7_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR8_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR8_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR9_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR9_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="MOTOR10_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR10_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR11_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR11_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR12_1" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="MOTOR12_2" library="wirepad" deviceset="WIREPAD" device="SMD5-1,8"/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="X1" library="con-molex" deviceset="87832-14" device=""/>
<part name="FRAME1" library="frames" deviceset="DINA4_P" device="">
<attribute name="AUTHOR" value="Christoph Ulbinger, BSc"/>
<attribute name="TITLE" value="Braille Cell"/>
</part>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="MOTOR1_1" gate="G$1" x="106.68" y="43.18" rot="R270"/>
<instance part="MOTOR1_2" gate="G$1" x="114.3" y="43.18" rot="R270"/>
<instance part="MOTOR2_1" gate="G$1" x="137.16" y="43.18" rot="R270"/>
<instance part="MOTOR2_2" gate="G$1" x="144.78" y="43.18" rot="R270"/>
<instance part="MOTOR3_1" gate="G$1" x="167.64" y="43.18" rot="R270"/>
<instance part="MOTOR3_2" gate="G$1" x="175.26" y="43.18" rot="R270"/>
<instance part="MOTOR4_1" gate="G$1" x="121.92" y="81.28" rot="R270"/>
<instance part="MOTOR4_2" gate="G$1" x="129.54" y="81.28" rot="R270"/>
<instance part="MOTOR5_1" gate="G$1" x="152.4" y="81.28" rot="R270"/>
<instance part="MOTOR5_2" gate="G$1" x="160.02" y="81.28" rot="R270"/>
<instance part="MOTOR6_1" gate="G$1" x="182.88" y="81.28" rot="R270"/>
<instance part="MOTOR6_2" gate="G$1" x="190.5" y="81.28" rot="R270"/>
<instance part="GND1" gate="1" x="231.14" y="73.66"/>
<instance part="GND2" gate="1" x="111.76" y="71.12"/>
<instance part="GND3" gate="1" x="142.24" y="71.12"/>
<instance part="GND4" gate="1" x="172.72" y="71.12"/>
<instance part="GND5" gate="1" x="96.52" y="33.02"/>
<instance part="GND6" gate="1" x="127" y="33.02"/>
<instance part="GND7" gate="1" x="157.48" y="33.02"/>
<instance part="MOTOR7_1" gate="G$1" x="106.68" y="129.54" rot="R270"/>
<instance part="MOTOR7_2" gate="G$1" x="114.3" y="129.54" rot="R270"/>
<instance part="MOTOR8_1" gate="G$1" x="137.16" y="129.54" rot="R270"/>
<instance part="MOTOR8_2" gate="G$1" x="144.78" y="129.54" rot="R270"/>
<instance part="MOTOR9_1" gate="G$1" x="167.64" y="129.54" rot="R270"/>
<instance part="MOTOR9_2" gate="G$1" x="175.26" y="129.54" rot="R270"/>
<instance part="GND8" gate="1" x="96.52" y="119.38"/>
<instance part="GND9" gate="1" x="127" y="119.38"/>
<instance part="GND10" gate="1" x="157.48" y="119.38"/>
<instance part="MOTOR10_1" gate="G$1" x="124.46" y="172.72" rot="R270"/>
<instance part="MOTOR10_2" gate="G$1" x="132.08" y="172.72" rot="R270"/>
<instance part="MOTOR11_1" gate="G$1" x="154.94" y="172.72" rot="R270"/>
<instance part="MOTOR11_2" gate="G$1" x="162.56" y="172.72" rot="R270"/>
<instance part="MOTOR12_1" gate="G$1" x="185.42" y="172.72" rot="R270"/>
<instance part="MOTOR12_2" gate="G$1" x="193.04" y="172.72" rot="R270"/>
<instance part="GND11" gate="1" x="114.3" y="162.56"/>
<instance part="GND12" gate="1" x="144.78" y="162.56"/>
<instance part="GND13" gate="1" x="175.26" y="162.56"/>
<instance part="X1" gate="G$1" x="254" y="86.36"/>
<instance part="FRAME1" gate="G$2" x="190.5" y="-5.08">
<attribute name="AUTHOR" x="190.5" y="-5.08" size="1.778" layer="96" display="off"/>
<attribute name="TITLE" x="190.5" y="-5.08" size="1.778" layer="96" display="off"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<wire x1="248.92" y1="78.74" x2="231.14" y2="78.74" width="0.1524" layer="91"/>
<wire x1="231.14" y1="78.74" x2="231.14" y2="76.2" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="X1" gate="G$1" pin="13"/>
</segment>
<segment>
<pinref part="MOTOR4_1" gate="G$1" pin="P"/>
<wire x1="121.92" y1="78.74" x2="121.92" y2="76.2" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="121.92" y1="76.2" x2="111.76" y2="76.2" width="0.1524" layer="91"/>
<wire x1="111.76" y1="76.2" x2="111.76" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR5_1" gate="G$1" pin="P"/>
<wire x1="152.4" y1="78.74" x2="152.4" y2="76.2" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="152.4" y1="76.2" x2="142.24" y2="76.2" width="0.1524" layer="91"/>
<wire x1="142.24" y1="76.2" x2="142.24" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR6_1" gate="G$1" pin="P"/>
<wire x1="182.88" y1="78.74" x2="182.88" y2="76.2" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="182.88" y1="76.2" x2="172.72" y2="76.2" width="0.1524" layer="91"/>
<wire x1="172.72" y1="76.2" x2="172.72" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR3_1" gate="G$1" pin="P"/>
<wire x1="167.64" y1="40.64" x2="167.64" y2="38.1" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="167.64" y1="38.1" x2="157.48" y2="38.1" width="0.1524" layer="91"/>
<wire x1="157.48" y1="38.1" x2="157.48" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR2_1" gate="G$1" pin="P"/>
<wire x1="137.16" y1="40.64" x2="137.16" y2="38.1" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="137.16" y1="38.1" x2="127" y2="38.1" width="0.1524" layer="91"/>
<wire x1="127" y1="38.1" x2="127" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR1_1" gate="G$1" pin="P"/>
<wire x1="106.68" y1="40.64" x2="106.68" y2="38.1" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="106.68" y1="38.1" x2="96.52" y2="38.1" width="0.1524" layer="91"/>
<wire x1="96.52" y1="38.1" x2="96.52" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR7_1" gate="G$1" pin="P"/>
<wire x1="106.68" y1="127" x2="106.68" y2="124.46" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="106.68" y1="124.46" x2="96.52" y2="124.46" width="0.1524" layer="91"/>
<wire x1="96.52" y1="124.46" x2="96.52" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR8_1" gate="G$1" pin="P"/>
<wire x1="137.16" y1="127" x2="137.16" y2="124.46" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="137.16" y1="124.46" x2="127" y2="124.46" width="0.1524" layer="91"/>
<wire x1="127" y1="124.46" x2="127" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR9_1" gate="G$1" pin="P"/>
<wire x1="167.64" y1="127" x2="167.64" y2="124.46" width="0.1524" layer="91"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="167.64" y1="124.46" x2="157.48" y2="124.46" width="0.1524" layer="91"/>
<wire x1="157.48" y1="124.46" x2="157.48" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR10_1" gate="G$1" pin="P"/>
<wire x1="124.46" y1="170.18" x2="124.46" y2="167.64" width="0.1524" layer="91"/>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="124.46" y1="167.64" x2="114.3" y2="167.64" width="0.1524" layer="91"/>
<wire x1="114.3" y1="167.64" x2="114.3" y2="165.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR11_1" gate="G$1" pin="P"/>
<wire x1="154.94" y1="170.18" x2="154.94" y2="167.64" width="0.1524" layer="91"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="154.94" y1="167.64" x2="144.78" y2="167.64" width="0.1524" layer="91"/>
<wire x1="144.78" y1="167.64" x2="144.78" y2="165.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MOTOR12_1" gate="G$1" pin="P"/>
<wire x1="185.42" y1="170.18" x2="185.42" y2="167.64" width="0.1524" layer="91"/>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="185.42" y1="167.64" x2="175.26" y2="167.64" width="0.1524" layer="91"/>
<wire x1="175.26" y1="167.64" x2="175.26" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIN_MOTOR_8" class="0">
<segment>
<wire x1="248.92" y1="83.82" x2="228.6" y2="83.82" width="0.1524" layer="91"/>
<label x="228.6" y="83.82" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="9"/>
</segment>
<segment>
<pinref part="MOTOR8_2" gate="G$1" pin="P"/>
<wire x1="144.78" y1="127" x2="144.78" y2="91.44" width="0.1524" layer="91"/>
<label x="147.32" y="91.44" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_9" class="0">
<segment>
<wire x1="248.92" y1="86.36" x2="228.6" y2="86.36" width="0.1524" layer="91"/>
<label x="228.6" y="86.36" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="7"/>
</segment>
<segment>
<pinref part="MOTOR9_2" gate="G$1" pin="P"/>
<wire x1="175.26" y1="127" x2="175.26" y2="91.44" width="0.1524" layer="91"/>
<label x="177.8" y="91.44" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_10" class="0">
<segment>
<wire x1="248.92" y1="88.9" x2="228.6" y2="88.9" width="0.1524" layer="91"/>
<label x="228.6" y="88.9" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="MOTOR10_2" gate="G$1" pin="P"/>
<wire x1="132.08" y1="170.18" x2="132.08" y2="134.62" width="0.1524" layer="91"/>
<label x="134.62" y="134.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_11" class="0">
<segment>
<wire x1="248.92" y1="91.44" x2="228.6" y2="91.44" width="0.1524" layer="91"/>
<label x="228.6" y="91.44" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="3"/>
</segment>
<segment>
<pinref part="MOTOR11_2" gate="G$1" pin="P"/>
<wire x1="162.56" y1="170.18" x2="162.56" y2="134.62" width="0.1524" layer="91"/>
<label x="165.1" y="134.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_12" class="0">
<segment>
<wire x1="248.92" y1="93.98" x2="228.6" y2="93.98" width="0.1524" layer="91"/>
<label x="228.6" y="93.98" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="MOTOR12_2" gate="G$1" pin="P"/>
<wire x1="193.04" y1="170.18" x2="193.04" y2="134.62" width="0.1524" layer="91"/>
<label x="195.58" y="134.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_1" class="0">
<segment>
<wire x1="261.62" y1="93.98" x2="279.4" y2="93.98" width="0.1524" layer="91"/>
<label x="264.16" y="93.98" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="MOTOR1_2" gate="G$1" pin="P"/>
<wire x1="114.3" y1="40.64" x2="114.3" y2="15.24" width="0.1524" layer="91"/>
<label x="116.84" y="10.16" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_2" class="0">
<segment>
<wire x1="279.4" y1="91.44" x2="261.62" y2="91.44" width="0.1524" layer="91"/>
<label x="264.16" y="91.44" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="4"/>
</segment>
<segment>
<pinref part="MOTOR2_2" gate="G$1" pin="P"/>
<wire x1="144.78" y1="40.64" x2="144.78" y2="15.24" width="0.1524" layer="91"/>
<label x="147.32" y="10.16" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_3" class="0">
<segment>
<wire x1="261.62" y1="88.9" x2="279.4" y2="88.9" width="0.1524" layer="91"/>
<label x="264.16" y="88.9" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="MOTOR3_2" gate="G$1" pin="P"/>
<wire x1="175.26" y1="40.64" x2="175.26" y2="15.24" width="0.1524" layer="91"/>
<label x="177.8" y="10.16" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_4" class="0">
<segment>
<wire x1="261.62" y1="86.36" x2="279.4" y2="86.36" width="0.1524" layer="91"/>
<label x="264.16" y="86.36" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="8"/>
</segment>
<segment>
<pinref part="MOTOR4_2" gate="G$1" pin="P"/>
<wire x1="129.54" y1="78.74" x2="129.54" y2="43.18" width="0.1524" layer="91"/>
<label x="132.08" y="45.72" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_5" class="0">
<segment>
<wire x1="261.62" y1="83.82" x2="279.4" y2="83.82" width="0.1524" layer="91"/>
<label x="264.16" y="83.82" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="10"/>
</segment>
<segment>
<pinref part="MOTOR5_2" gate="G$1" pin="P"/>
<wire x1="160.02" y1="78.74" x2="160.02" y2="43.18" width="0.1524" layer="91"/>
<label x="162.56" y="45.72" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_6" class="0">
<segment>
<wire x1="261.62" y1="81.28" x2="279.4" y2="81.28" width="0.1524" layer="91"/>
<label x="264.16" y="81.28" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="12"/>
</segment>
<segment>
<pinref part="MOTOR6_2" gate="G$1" pin="P"/>
<wire x1="190.5" y1="78.74" x2="190.5" y2="43.18" width="0.1524" layer="91"/>
<label x="193.04" y="45.72" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="PIN_MOTOR_7" class="0">
<segment>
<wire x1="261.62" y1="78.74" x2="279.4" y2="78.74" width="0.1524" layer="91"/>
<label x="264.16" y="78.74" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="14"/>
</segment>
<segment>
<pinref part="MOTOR7_2" gate="G$1" pin="P"/>
<wire x1="114.3" y1="127" x2="114.3" y2="91.44" width="0.1524" layer="91"/>
<label x="116.84" y="91.44" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
