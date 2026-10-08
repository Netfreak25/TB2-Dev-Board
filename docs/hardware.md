# Pin mapping and operation

## Flipper to flash

**SOP8 chip pin numbers and physical IDC connector contacts are different.** This mapping applies to the clip cable used for this design.

| Flipper pin | Signal | SOP8 chip pin | Physical J1 contact |
|---|---|---|---|
| 4 | /CS | 1 | 1 |
| 3 | MISO | 2 | 3 |
| 9, switched | /WP, HIGH | 3 | 5 |
| 11 | GND | 4 | 7 |
| 2 | MOSI | 5 | 8 |
| 5 | CLK | 6 | 6 |
| 9, switched | /HOLD, HIGH | 7 | 4 |
| 9, switched | VCC | 8 | 2 |

J1 top view: the notch points left and physical contact 1 is at the upper left. Contacts 1/3/5/7 run down the left side and 2/4/6/8 run down the right side. For any other cable, verify its actual continuity with power disconnected before use.

JZ1 occupies Flipper pins 2-8 and JZ2 occupies pins 9-11. Pins 6, 7, 8, and 10 are isolated on the PCB. Flipper pin 1, which supplies 5 V, is not fitted. The two innermost header centers are 17.78 mm apart, corresponding to six unused grid positions. Both headers are centered at Y = 10 mm. The mechanical layout is intended for a Flipper without a silicone case.

Flipper ground pins are electrically common. The PCB uses pin 11 for GND even though some compatible software wiring diagrams use pin 8.

## Switches and indicators

- Switch POWER on to enable the external 3.3 V target supply.
- Press and hold RESET to make Q1 interrupt that supply. Releasing RESET restores power while POWER remains on.
- Use RESET between operations, never during a write or erase operation.
- Green POWER indicates the target supply. Red ACCESS indicates activity and blinks during sustained access; it does not confirm success.

R5 pulls /CS up to the target supply with 10 kOhm. RESET disconnects neither SPI nor GND. The preceding setup established that interrupting the supply was sufficient for reset in this use case; the mini-board still requires physical validation.

## Hardware validation status

The [export report](export-check.json) records a 42 x 20 mm outline, 39 plated and two non-plated drill locations, and vias tented on both sides. The rear Gerber QR code was decoded as `Netfreak`; the physical print has not yet been scan-tested.

The mini-board remains an **unverified build candidate**. Acceptance requires unpowered continuity and short-circuit checks, measurement of chip voltage and reset behavior, LED verification, mechanical fit, and comparison of a complete 16 MiB read dump with a known working setup. No write or erase operation is required for this acceptance test.

The [assembly drawing](Assembly.pdf), [mechanical requirements](Mechanical-requirements.pdf), and [physical pin coordinates](Physical-pin-coordinates.csv) define the manufacturing geometry.
