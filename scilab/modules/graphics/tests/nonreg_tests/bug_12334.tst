// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 12334 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/12334
//
// <-- Short Description -->
// Invalid mark color in legend

clf();
plot2d();
c=color("red");
legends("cos(t)", style=[-1; c],opt="lr")
e = gce();
assert_checkequal(c, e.children(2).mark_foreground);