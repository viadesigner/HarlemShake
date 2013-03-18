* Command file for design: harlemshakedetector
* Top Spice file: ..\..\genhdl\harlemshakedetector\harlemshakedetector.cir
.op
.tran 0 8s 0
* .ac dec 100  
.plot tran SG(avdd#defhook#0) SG(deep_voice_detected) SG(do_the_harlem_shake) V(avdd) V(avss) V(deep_voice_filtered) V(music) V(slice_level) V(vcm)
* .plot ac V(avdd) V(avss) V(deep_voice_filtered) V(music) V(slice_level) V(vcm)
.option eps=1.0e-7
.option hmin=1.0e-12
.option print_dc=2
* save tr toplevel
* save ac toplevel
* save ba

.save file=harlemshakedetector.iic end no_save_wdb
* .plot dc V(avdd) V(avss) V(deep_voice_filtered) V(music) V(slice_level) V(vcm)
.include ..\..\genhdl\harlemshakedetector\harlemshakedetector.cir
