## FE16re Project
a protatype to remake FE16-Three-Houses on gba version of FE8.

Main features: see [Proj.Lysithea Thread in FEU](https://feuniverse.us/t/fe8-w-i-p-proj-lysithea-a-prototype-of-fe16-rework-on-fe8u/14329).


Compile: put FireEmblem8 clean rom named ```FE8U.gba```, and [EventAssembler](https://feuniverse.us/t/event-assembler/1749) at here.

Then, make sure [DevKitPro](https://devkitpro.org/) and Python3 installed, open Msys2 and cd current folder:
```
sh MakeAll.sh
```

## To Do:

1. Remove the whole B/W/L Table, and make a definition for another Unit Extension Struct(UnitBwl) space.
2. Cp/Ai Rework on Big Monster.
3. PrepScreen for equip skills.
4. Try to rework on Sram Functions, take a free-RAM-space for Mila's Turnwheel.