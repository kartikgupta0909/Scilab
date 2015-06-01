// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 4275 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=4275
//
// <-- Short Description -->
//   g_margin function does not work properly

s=poly(0,'s');
L = syslin('c',1,s*(1+s)^2);  
[g,f]=g_margin(L);
if abs(f*2*%pi-1)>100*%eps then pause,end
if abs(g-20*log10(2))>100*%eps then pause,end
