// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - Digiteo - Jean-Baptiste Silvy
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
// <-- ENGLISH IMPOSED -->

// <-- Non-regression test for bug 4108 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=4108
//
// <-- Short Description -->
// Argument location of function caption has no effect.
//

legend_positions = ["in_upper_right", "in_upper_left", "in_lower_right",..
"in_lower_left", "out_upper_right", "out_upper_left",..
"out_lower_right", "out_lower_left", "upper_caption",..
"lower_caption", "by_coordinates"];

x = 1:10;
plot(x,[x;x.^2]);
curves = gce();

// check all cases
for loc = legend_positions,
    captions(curves.children, ["x","x.^2"], loc);
    leg = gce();
    assert_checktrue(leg.legend_location == loc);
end
