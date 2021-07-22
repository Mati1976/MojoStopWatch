<?xml version="1.0" encoding="UTF-8"?>
<project name="StopWatch" board="Mojo V3" language="Lucid">
  <files>
    <src>stopwatch.luc</src>
    <src>multi_seven_seg.luc</src>
    <src top="true">mojo_top.luc</src>
    <src>digit_lut.luc</src>
    <ucf lib="true">io_shield.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <component>decoder.luc</component>
    <component>bin_to_dec.luc</component>
    <component>reset_conditioner.luc</component>
    <component>counter.luc</component>
  </files>
</project>
