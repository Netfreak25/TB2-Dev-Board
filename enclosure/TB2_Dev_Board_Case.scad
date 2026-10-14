// TB2 Dev Board enclosure mesh entry point.
// The 3MF file is the source of truth for colors and slicer settings.

part = "print_layout"; // [print_layout,base,lid,power_slider,reset_button,power_brim,reset_brim]

module base() {
    import("TB2_Dev_Board_Case_base.stl", convexity = 50);
}

module lid() {
    import("TB2_Dev_Board_Case_lid.stl", convexity = 30);
}

module power_slider() {
    import("TB2_Dev_Board_Case_power_slider.stl", convexity = 20);
}

module reset_button() {
    import("TB2_Dev_Board_Case_reset_button.stl", convexity = 20);
}

module power_brim() {
    import("TB2_Dev_Board_Case_power_brim.stl", convexity = 10);
}

module reset_brim() {
    import("TB2_Dev_Board_Case_reset_brim.stl", convexity = 10);
}

module print_layout() {
    import("TB2_Dev_Board_Case_print_layout.stl", convexity = 50);
}

if (part == "print_layout") {
    print_layout();
} else if (part == "base") {
    base();
} else if (part == "lid") {
    lid();
} else if (part == "power_slider") {
    power_slider();
} else if (part == "reset_button") {
    reset_button();
} else if (part == "power_brim") {
    power_brim();
} else if (part == "reset_brim") {
    reset_brim();
} else {
    assert(false, str("Unknown part: ", part));
}
