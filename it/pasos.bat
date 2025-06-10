@echo off

it.exe /F nasa.all

copy it.qth itbup.qth
cambzona timezone = LUT3
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe B.Aires, Arg.;ba
REM copy pasos.htm d:\webs\amsat.org.ar\pasosba.htm
copy pasos.htm output\webs\amsat\pasosba.htm

copy itbb.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe B.Blanca Arg.;bb
REM copy pasos.htm d:\webs\amsat.org.ar\pasosbb.htm
copy pasos.htm output\webs\amsat\pasosbb.htm

copy itco.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe Cordoba, Arg.;co
REM copy pasos.htm d:\webs\amsat.org.ar\pasosco.htm
copy pasos.htm output\webs\amsat\pasosco.htm

copy itig.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe C.Iguazu Arg.;ig
REM copy pasos.htm d:\webs\amsat.org.ar\pasosig.htm
copy pasos.htm output\webs\amsat\pasosig.htm

copy itju.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe S.S.Jujuy Arg;ju
REM copy pasos.htm d:\webs\amsat.org.ar\pasosju.htm
copy pasos.htm output\webs\amsat\pasosju.htm

copy itme.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe Mendoza, Arg.;me
REM copy pasos.htm d:\webs\amsat.org.ar\pasosme.htm
copy pasos.htm output\webs\amsat\pasosme.htm

copy itst.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe S.M. Tucuman.;st
REM copy pasos.htm d:\webs\amsat.org.ar\pasosst.htm
copy pasos.htm output\webs\amsat\pasosst.htm

copy itcr.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe Com.Rivadavia;cr
REM copy pasos.htm d:\webs\amsat.org.ar\pasoscr.htm
copy pasos.htm output\webs\amsat\pasoscr.htm

copy itrg.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe Rio Gallegos.;rg
REM copy pasos.htm d:\webs\amsat.org.ar\pasosrg.htm
copy pasos.htm output\webs\amsat\pasosrg.htm

copy itmp.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe M. del Plata.;mp
REM copy pasos.htm d:\webs\amsat.org.ar\pasosmp.htm
copy pasos.htm output\webs\amsat\pasosmp.htm

copy itnq.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe Neuquen, Arg.;nq
REM copy pasos.htm d:\webs\amsat.org.ar\pasosnq.htm
copy pasos.htm output\webs\amsat\pasosnq.htm

copy itre.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe Resistencia..;re
REM copy pasos.htm d:\webs\amsat.org.ar\pasosre.htm
copy pasos.htm output\webs\amsat\pasosre.htm

copy itsc.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe S.C.Bariloche;sc
REM copy pasos.htm d:\webs\amsat.org.ar\pasossc.htm
copy pasos.htm output\webs\amsat\pasossc.htm

copy itsf.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe Santa Fe Arg.;sf
REM copy pasos.htm d:\webs\amsat.org.ar\pasossf.htm
copy pasos.htm output\webs\amsat\pasossf.htm

copy itsr.qth it.qth
itpass -g a -n 23 -z -o 60> pasos.txt
pasoshtm.exe Santa Rosa LP;sr
REM copy pasos.htm d:\webs\amsat.org.ar\pasossr.htm
copy pasos.htm output\webs\amsat\pasossr.htm

copy itbupori.qth it.qth

cambzona timezone = PST8PDT
itpass -g a -n 23 -z -o 60 -s Vancouver > pasos.txt
paseshtm.exe Vancouver CAN;va
REM copy pasos.htm d:\webs\amsat.org.ar\pasosva.htm
copy pasos.htm output\webs\amsat\pasosva.htm

cambzona timezone = EST6EDT
itpass -g a -n 23 -z -o 60 -s Chicago  > pasos.txt
paseshtm.exe Chicago Illin;ch
REM copy pasos.htm d:\webs\amsat.org.ar\pasosch.htm
copy pasos.htm output\webs\amsat\pasosch.htm

cambzona timezone = EST5EDT
itpass -g a -n 23 -z -o 60 -s Montreal > pasos.txt
paseshtm.exe Montreal. CAN;mo
REM copy pasos.htm d:\webs\amsat.org.ar\pasosmo.htm
copy pasos.htm output\webs\amsat\pasosmo.htm

cambzona timezone = PST8PDT
itpass -g a -n 23 -z -o 60 -s SFrancisco > pasos.txt
paseshtm.exe San Francisco;fr
REM copy pasos.htm d:\webs\amsat.org.ar\pasosfr.htm
copy pasos.htm output\webs\amsat\pasosfr.htm

cambzona timezone = PST8PDT
itpass -g a -n 23 -z -o 60 -s LAngeles > pasos.txt
paseshtm.exe Los Angeles.-;la
REM copy pasos.htm d:\webs\amsat.org.ar\pasosla.htm
copy pasos.htm output\webs\amsat\pasosla.htm

cambzona timezone = PST8PDT
itpass -g a -n 23 -z -o 60 -s Phoenix > pasos.txt
paseshtm.exe Phoenix. ARIZ;ph
REM copy pasos.htm d:\webs\amsat.org.ar\pasosph.htm
copy pasos.htm output\webs\amsat\pasosph.htm

cambzona timezone = CST6CDT
itpass -g a -n 23 -z -o 60 -s Houston > pasos.txt
paseshtm.exe Houston Texas;ho
REM copy pasos.htm d:\webs\amsat.org.ar\pasosho.htm
copy pasos.htm output\webs\amsat\pasosho.htm

cambzona timezone = EST5EDT
itpass -g a -n 23 -z -o 60 -s Atlanta > pasos.txt
paseshtm.exe Atlanta Georg;at
REM copy pasos.htm d:\webs\amsat.org.ar\pasosat.htm
copy pasos.htm output\webs\amsat\pasosat.htm

cambzona timezone = EST5EDT
itpass -g a -n 23 -z -o 60 -s NewYork > pasos.txt
paseshtm.exe New York - NY;ny
REM copy pasos.htm d:\webs\amsat.org.ar\pasosny.htm
copy pasos.htm output\webs\amsat\pasosny.htm

cambzona timezone = EST5EDT
itpass -g a -n 23 -z -o 60 -s Miami > pasos.txt
paseshtm.exe Miami Florida;mi
REM copy pasos.htm d:\webs\amsat.org.ar\pasosmi.htm
copy pasos.htm output\webs\amsat\pasosmi.htm

cambzona timezone = CST6CDT
itpass -g a -n 23 -z -o 60 -s Mexico > pasos.txt
pasoshtm.exe Mexico Mex-DF;mx
REM copy pasos.htm d:\webs\amsat.org.ar\pasosmx.htm
copy pasos.htm output\webs\amsat\pasosmx.htm

cambzona timezone = EST5
itpass -g a -n 23 -z -o 60 -s Bogota > pasos.txt
pasoshtm.exe Bogota Colomb;bo
REM copy pasos.htm d:\webs\amsat.org.ar\pasosbo.htm
copy pasos.htm output\webs\amsat\pasosbo.htm

cambzona timezone = EST4
itpass -g a -n 23 -z -o 60 -s Caracas > pasos.txt
pasoshtm.exe Caracas Venez;ca
REM copy pasos.htm d:\webs\amsat.org.ar\pasosca.htm
copy pasos.htm output\webs\amsat\pasosca.htm

cambzona timezone = EST5
itpass -g a -n 23 -z -o 60 -s Lima > pasos.txt
pasoshtm.exe Lima -  Peru;li
REM copy pasos.htm d:\webs\amsat.org.ar\pasosli.htm
copy pasos.htm output\webs\amsat\pasosli.htm

cambzona timezone = EST3
itpass -g a -n 23 -z -o 60 -s Rio > pasos.txt
pasoshtm.exe Rio de Jan BR;ri
REM copy pasos.htm d:\webs\amsat.org.ar\pasosri.htm
copy pasos.htm output\webs\amsat\pasosri.htm

cambzona timezone = CST-1CDT
itpass -g a -n 23 -z -o 60 -s Madrid > pasos.txt
pasoshtm.exe Madrid Espa�a;ma
REM copy pasos.htm d:\webs\amsat.org.ar\pasosma.htm
copy pasos.htm output\webs\amsat\pasosma.htm

cambzona timezone = CST0CDT
itpass -g a -n 23 -z -o 60 -s Londres > pasos.txt
paseshtm.exe London GBrit.;lo
REM copy pasos.htm d:\webs\amsat.org.ar\pasoslo.htm
copy pasos.htm output\webs\amsat\pasoslo.htm

cambzona timezone = CST-1CDT
itpass -g a -n 23 -z -o 60 -s Paris > pasos.txt
paseshtm.exe Paris, France;pa
REM copy pasos.htm d:\webs\amsat.org.ar\pasospa.htm
copy pasos.htm output\webs\amsat\pasospa.htm

cambzona timezone = CST-1CDT
itpass -g a -n 23 -z -o 60 -s Roma > pasos.txt
paseshtm.exe Rome - Italia;ro
REM copy pasos.htm d:\webs\amsat.org.ar\pasosro.htm
copy pasos.htm output\webs\amsat\pasosro.htm

cambzona timezone = PST8PDT
itpass -g a -n 23 -z -o 60 -s Vancouver > pasos.txt
paseshtm.exe Vancouver CAN;va
REM copy pasos.htm d:\webs\amsat.org.ar\pasosva.htm
copy pasos.htm output\webs\amsat\pasosva.htm

cambzona timezone = CST-1CDT
itpass -g a -n 23 -z -o 60 -s Stockholm > pasos.txt
paseshtm.exe Stockholm  SW;sk
REM copy pasos.htm d:\webs\amsat.org.ar\pasossk.htm
copy pasos.htm output\webs\amsat\pasossk.htm

cambzona timezone = CST-1CDT
itpass -g a -n 23 -z -o 60 -s Stutgart > pasos.txt
paseshtm.exe Stuttgart GER;su
REM copy pasos.htm d:\webs\amsat.org.ar\pasossu.htm
copy pasos.htm output\webs\amsat\pasossu.htm

cambzona timezone = CST-3CDT
itpass -g a -n 23 -z -o 60 -s SPetersburg > pasos.txt
paseshtm.exe SPetesburg RU;sp
REM copy pasos.htm d:\webs\amsat.org.ar\pasossp.htm
copy pasos.htm output\webs\amsat\pasossp.htm

cambzona timezone = CST-2CDT
itpass -g a -n 23 -z -o 60 -s Istambul > pasos.txt
paseshtm.exe Istambul Arab;is
REM copy pasos.htm d:\webs\amsat.org.ar\pasosis.htm
copy pasos.htm output\webs\amsat\pasosis.htm

cambzona timezone = CST-3CDT
itpass -g a -n 23 -z -o 60 -s Moscow > pasos.txt
paseshtm.exe Moscow Russia;mw
REM copy pasos.htm d:\webs\amsat.org.ar\pasosmw.htm
copy pasos.htm output\webs\amsat\pasosmw.htm

cambzona timezone = EST-1
itpass -g a -n 23 -z -o 60 -s Lagos > pasos.txt
paseshtm.exe Lagos Nigeria;lg
REM copy pasos.htm d:\webs\amsat.org.ar\pasoslg.htm
copy pasos.htm output\webs\amsat\pasoslg.htm

cambzona timezone = EST-2CDT
itpass -g a -n 23 -z -o 60 -s ElCairo > pasos.txt
paseshtm.exe El Cairo Egpt;aq
REM copy pasos.htm d:\webs\amsat.org.ar\pasosaq.htm
copy pasos.htm output\webs\amsat\pasosaq.htm

cambzona timezone = EST-2
itpass -g a -n 23 -z -o 60 -s Johanesburg > pasos.txt
paseshtm.exe Johanesbrg SA;jo
REM copy pasos.htm d:\webs\amsat.org.ar\pasosjo.htm
copy pasos.htm output\webs\amsat\pasosjo.htm

cambzona time_offset_seconds = -12600
itpass -g a -n 23 -z -o 60 -s Teheran > pasos.txt
paseshtm.exe Teheran Arab.;te
REM copy pasos.htm d:\webs\amsat.org.ar\pasoste.htm
copy pasos.htm output\webs\amsat\pasoste.htm

cambzona time_offset_seconds = -19800
itpass -g a -n 23 -z -o 60 -s Delhi > pasos.txt
paseshtm.exe New Delhi IND;de
REM copy pasos.htm d:\webs\amsat.org.ar\pasosde.htm
copy pasos.htm output\webs\amsat\pasosde.htm

cambzona time_offset_seconds = -19800
itpass -g a -n 23 -z -o 60 -s Bombay > pasos.txt
paseshtm.exe Bombay, India;by
REM copy pasos.htm d:\webs\amsat.org.ar\pasosby.htm
copy pasos.htm output\webs\amsat\pasosby.htm

cambzona timezone = EST-8
itpass -g a -n 23 -z -o 60 -s HongKong > pasos.txt
paseshtm.exe Hong Kong Chi;hk
REM copy pasos.htm d:\webs\amsat.org.ar\pasoshk.htm
copy pasos.htm output\webs\amsat\pasoshk.htm

cambzona timezone = EST-7
itpass -g a -n 23 -z -o 60 -s Jakarta > pasos.txt
paseshtm.exe Jakarta Indon;ja
REM copy pasos.htm d:\webs\amsat.org.ar\pasosja.htm
copy pasos.htm output\webs\amsat\pasosja.htm

cambzona timezone = EST-8
itpass -g a -n 23 -z -o 60 -s Beijing > pasos.txt
paseshtm.exe Beijing China;bj
REM copy pasos.htm d:\webs\amsat.org.ar\pasosbj.htm
copy pasos.htm output\webs\amsat\pasosbj.htm

cambzona timezone = EST-9
itpass -g a -n 23 -z -o 60 -s Seoul > pasos.txt
paseshtm.exe Seoul - Corea;sl
REM copy pasos.htm d:\webs\amsat.org.ar\pasossl.htm
copy pasos.htm output\webs\amsat\pasossl.htm

cambzona timezone = EST-9
itpass -g a -n 23 -z -o 60 -s Tokio > pasos.txt
paseshtm.exe Tokio - Japan;tk
REM copy pasos.htm d:\webs\amsat.org.ar\pasostk.htm
copy pasos.htm output\webs\amsat\pasostk.htm

cambzona timezone = EST-8
itpass -g a -n 23 -z -o 60 -s Manila > pasos.txt
paseshtm.exe Manila, Phill;ml
REM copy pasos.htm d:\webs\amsat.org.ar\pasosml.htm
copy pasos.htm output\webs\amsat\pasosml.htm

cambzona timezone = EST-8
itpass -g a -n 23 -z -o 60 -s Perth > pasos.txt
paseshtm.exe Perth Austral;pt
REM copy pasos.htm d:\webs\amsat.org.ar\pasospt.htm
copy pasos.htm output\webs\amsat\pasospt.htm

cambzona timezone = EST-10EDT
itpass -g a -n 23 -z -o 60 -s Melbourne > pasos.txt
paseshtm.exe Melbourne, AU;mb
REM copy pasos.htm d:\webs\amsat.org.ar\pasosmb.htm
copy pasos.htm output\webs\amsat\pasosmb.htm

cambzona timezone = EST-10EDT
itpass -g a -n 23 -z -o 60 -s Sydney > pasos.txt
paseshtm.exe Sydney Austr.;sd
REM copy pasos.htm d:\webs\amsat.org.ar\pasossd.htm
copy pasos.htm output\webs\amsat\pasossd.htm

cambzona timezone = EST-12EDT
itpass -g a -n 23 -z -o 60 -s Wellington > pasos.txt
paseshtm.exe Wellington NZ;we
REM copy pasos.htm d:\webs\amsat.org.ar\pasoswe.htm
copy pasos.htm output\webs\amsat\pasoswe.htm

cambzona timezone = EST-3
itpass -g a -n 23 -z -o 60 -s Riyadh > pasos.txt
paseshtm.exe Riyadh SArab.;ry
REM copy pasos.htm d:\webs\amsat.org.ar\pasosry.htm
copy pasos.htm output\webs\amsat\pasosry.htm

cambzona timezone = EST4EDT
itpass -g a -n 23 -z -o 60 -s Santiago > pasos.txt
pasoshtm.exe Sgo. de Chile;sg
REM copy pasos.htm d:\webs\amsat.org.ar\pasossg.htm
copy pasos.htm output\webs\amsat\pasossg.htm

cambzona timezone = CXT3
itpass -g a -n 23 -z -o 60 -s Montevideo > pasos.txt
pasoshtm.exe Montevideo U.;mv
REM copy pasos.htm d:\webs\amsat.org.ar\pasosmv.htm
copy pasos.htm output\webs\amsat\pasosmv.htm

copy itini.bup it.ini

exit
