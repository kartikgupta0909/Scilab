// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 4315 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=4315
//
// <-- Short Description -->
// --> completion("",["commands","macros"])
// it will only returns commands


// <-- CLI SHELL MODE -->

w = "";
c = ["commands","macros"];

ierr = execstr("a=completion(w,c);","errcatch");
if ierr <> 999 then pause,end
