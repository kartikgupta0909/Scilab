// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 13150 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/13150
//
// <-- Short Description -->
// Vectorial export used too much memory for grayplot


driver("png")
xinit(TMPDIR+"/plop.png")
m = rand(500,500);
grayplot(1:500, 1:500, m);
xend();