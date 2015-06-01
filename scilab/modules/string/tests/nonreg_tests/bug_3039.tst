// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 3039 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=3039
//
a = emptystr([ %F %F ; %T %T]);
if size(a)<>[2 2] then pause,end
if length(a) <> [ 0 0 ; 0 0 ] then pause,end

b = emptystr([ poly(0,"s")  poly(0,"s")  ; poly(0,"s")  poly(0,"s")  ]);
if size(b)<>[2 2] then pause,end
if length(b) <> [ 0 0 ; 0 0 ] then pause,end
