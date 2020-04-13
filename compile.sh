#!/bin/bash

gfortran -shared -o obj/cklib.o  -c src/cklib.f -fPIC
gfortran -shared -o obj/dasac.o  -c src/dasac.f -fPIC
gfortran -shared -o obj/driv.o   -c src/driv.f
gfortran -shared -o obj/senkin.o -c src/senkin.f -fPIC

gfortran -shared -o senkinlib.so obj/cklib.o obj/dasac.o obj/driv.o obj/senkin.o