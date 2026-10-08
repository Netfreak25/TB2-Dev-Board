# Editing the Fritzing design

[TB2-Dev-Board-Rev1.0.fzz](../hardware/TB2-Dev-Board-Rev1.0.fzz) contains the current design and its required custom part definitions. Open it in Fritzing, make changes, and save the result under a new revision name.

## Manufacturing files and native export

**Use the supplied `Gerber.zip` when ordering this unchanged revision.** A native Fritzing export is not identical to the prepared manufacturing package:

- The finished board outline is exactly 42 x 20 mm.
- IC solder-mask openings were adjusted; the documented nominal minimum mask web is 0.15 mm.
- All 21 via holes are tented on both sides.
- Plated and non-plated drill files are separated.

After any layout change, repeat and verify these export corrections. Gerber, BOM, centroid, assembly drawings, and mechanical data must always describe the same layout revision.

Do not derive physical manufacturer pin numbers from logical Fritzing pin names. Use the physical pin coordinates and mechanical drawings. IDC connector contacts and SOP8 chip pins use different numbering.

Before sharing a modified design, check nets, footprints, drills, solder masks, clearances, assembly sides, and actual component dimensions. A successful layout check does not replace physical hardware validation.
