# PCBWay ordering guide - Hardware Rev. 1.0

The files are prepared for a turnkey manufacturing quote with component review. The finished mini-board remains an **unverified build candidate**. The BOM quantities are specified for **five fully assembled individual boards**; adjust quantities and the quotation when ordering a different number.

## Upload files

Download all files from [release v1.0.1](/Netfreak25/TB2-Dev-Board/releases/tag/v1.0.1). Do not mix files from different layout versions.

| PCBWay upload field | File |
|---|---|
| Upload Gerbers file | `Gerber.zip` |
| Parts List (BOM) Upload | `BOM.csv` |
| Upload Centroid file | `Centroid.csv` |
| Upload assembly other files | `Assembly-documents.zip` |

`Centroid.csv` intentionally contains positions and rotations for the 19 top-side SMD parts only. The three THT connectors are defined by the BOM, assembly drawings, and `Physical-pin-coordinates.csv` in the documentation archive. Select **Both sides** so PCBWay also assembles the bottom-side headers.

## PCB settings

| Field | Value |
|---|---|
| Board type / Different designs | Single pieces / 1 |
| Size / Quantity | 42 x 20 mm / 5 |
| Layers / Material | 2 / FR-4 |
| TG | 150-160 when available without surcharge |
| Thickness | 1.6 mm |
| Min track/spacing | 6/6 mil |
| Min hole size | 0.3 mm; the actual smallest drill is 0.35 mm |
| Solder mask / Silkscreen | Green / White |
| UV printing / Edge connector | None / No |
| Surface finish | HASL lead free |
| Via process / Copper | Tenting vias / 1 oz |
| Remove product No. | No; place it according to the fabrication notes |
| Separate SMD stencil | No |

## Assembly settings

| Field | Value |
|---|---|
| Assembly Service | Turnkey - PCBWay supplies and assembles the parts |
| Board type | Single pieces |
| Assembly sides / Quantity | Both sides / 5 |
| Unique Parts / SMD Parts | 17 / 19 per board |
| BGA/QFP / Through-Hole Parts | 0 / 3 per board |
| Chinese alternatives | Yes, only within the position-specific BOM rules |
| Contains sensitive components | No |
| Depanel before delivery | Yes, when a manufacturing panel is used |
| Function test / Firmware / Coating / Box assembly | No |
| Cable harness / Press-fit | No |
| Package box | Neutral box |

PCBWay may need temporary assembly rails or a manufacturing panel for this small board. Request **five good, fully assembled individual boards**, not five panels. Let the supplier quote and remove any required rails. X-out positions may remain unassembled, but the agreed delivery quantity remains five good boards.

## Detailed information of assembly

The following text stays below PCBWay's 600-character limit:

```text
Quote 5 fully assembled individual boards, 42 x 20 mm, not 5 panels. Include any required assembly rails/panelization and remove them before delivery. JZ1/JZ2 mount on BOTTOM, long mating pins down. Follow Assembly.pdf and physical pin coordinates. Use economical Chinese parts only where BOM rules permit; keep fixed manufacturer/MPNs. Identify proposed parts for review. Centroid lists 19 TOP SMD parts; also assemble all 3 THT connectors. See Supplier-notes.txt. Quote the lowest-cost assembly-compatible arrangement.
```

Before production approval, review the supplier's proposed parts, especially the J1 dimensions and pin-1 orientation, LED polarity and footprint, C2/C3 capacitance under DC bias, and switch ratings. JZ1/JZ2 must be mounted on the bottom with the long mating pins pointing down. `Supplier-notes.txt` in the assembly archive contains the complete requirements.

## Example cost for five assembled boards

The first mini-board order was placed on **2026-09-24** for delivery to Germany with import charges prepaid. The confirmed Klarna bank payment was **EUR 70.31** for five boards, or **EUR 14.06 per board** when rounded to cents.

### PCBWay checkout breakdown

All values apply to the complete five-board order:

| Item | Amount |
|---|---:|
| Bare PCBs | USD 5.00 |
| Assembly | USD 29.00 |
| Components | USD 18.13 |
| Shipping | USD 31.59 |
| Order discount | -USD 30.00 |
| Membership discount | -USD 0.34 |
| Bank Handling Fee | USD 3.66 |
| Duty & Tax | USD 3.48 |
| VAT Fee | USD 10.84 |
| IOSS Service Fee | USD 7.00 |
| **Checkout total** | **USD 78.36** |

The order discount offset all but USD 1.59 of the listed shipping cost. The actual euro payment is authoritative; a reference exchange-rate conversion may differ from the payment provider's rate.

- **Total paid:** EUR 70.31 for five boards.
- **Calculation:** EUR 70.31 / 5 = EUR 14.062.
- **Rounded unit cost:** EUR 14.06.

The payment included the PCBs, components, assembly, shipping, and all payment, tax, duty, and service entries shown at checkout. It did not include the Flipper Zero or SOP8 clip cable. Delivery and physical hardware acceptance were still pending when this example was recorded.

This is a concrete order example, not a price guarantee. In particular, the USD 30 order discount may not be available for another order. Component availability, shipping method, exchange rate, quantity, taxes, and fees can change the final price. Do not add prepaid import charges a second time.

Order form: [PCBWay Standard PCB](https://www.pcbway.com/orderonline.aspx). Field names reflect the ordering flow used for this order and may change on the website.
