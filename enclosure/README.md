# 3D-printable enclosure

This directory contains the current enclosure for the TB2 Dev Board.

## Recommended file

Open [`TB2_Dev_Board_Case.3mf`](TB2_Dev_Board_Case.3mf) as a project in
PrusaSlicer. It contains the four printable enclosure parts and two separate
first-layer brim helpers in their intended bed layout:

- base
- lid
- POWER slider
- RESET button
- POWER brim helper
- RESET brim helper

The embedded project was prepared with PrusaSlicer 2.9.6 for PLA, a 0.4 mm
nozzle, and a Prusa XL 5-tool printer. It preserves the material assignments,
painted outer-wall fuzzy skin, object placement, and the 115% first-layer flow
configuration. Check the printer, material, tool, and flow settings before
printing on a different machine.

No logo, logo mesh, or logo modifier is embedded in the 3MF or STL files.

The two orange brim helpers replace the automatic brims for the POWER slider
and RESET button. When moving either control, move its matching brim with it.

## Individual models

The STL files contain geometry only and do not preserve colors, painted fuzzy
skin, tool assignments, or slicer settings:

| File | Part |
|---|---|
| `TB2_Dev_Board_Case_base.stl` | Base with integrated PCB carrier |
| `TB2_Dev_Board_Case_lid.stl` | Lid |
| `TB2_Dev_Board_Case_power_slider.stl` | POWER slider |
| `TB2_Dev_Board_Case_reset_button.stl` | RESET button |
| `TB2_Dev_Board_Case_power_brim.stl` | 0.2 mm POWER brim helper |
| `TB2_Dev_Board_Case_reset_brim.stl` | 0.2 mm RESET brim helper |
| `TB2_Dev_Board_Case_print_layout.stl` | All six objects in the saved bed layout |

[`TB2_Dev_Board_Case.scad`](TB2_Dev_Board_Case.scad) is a self-contained
OpenSCAD entry point for selecting individual meshes or reproducing the saved
print layout. The current enclosure geometry is mesh based; edit the supplied
STLs or replace their imports when changing the mechanical design.

## Hardware and status

The enclosure is designed for two M2x8 cylinder-head screws and two
M2x3x3.2 mm heat-set inserts. Its nominal body size is 58 x 28.8 x 10 mm,
excluding the side ears and protruding screw heads.

This enclosure is an **unverified build candidate**. Its meshes and slicer
project passed digital geometry and toolpath checks, but the fit, screw
tolerances, control travel, and brim removal still require physical validation.
