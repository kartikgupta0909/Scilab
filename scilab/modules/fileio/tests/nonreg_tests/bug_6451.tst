// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 6451 -->
//
// <-- CLI SHELL MODE -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=6451
//
// <-- Short Description -->
// length() does not support properly ANSI-encoded strings
// mgetl problem in fact

fid = mopen("SCI/modules/fileio/tests/nonreg_tests/bug_6449_ANSI.txt", "rt");
lines_result = mgetl(fid);
mclose(fid);

r1 = length(lines_result);
ref1 = [56;42;6;12;8];
if ~and(r1 == ref1) then pause, end

fid = mopen("SCI/modules/fileio/tests/nonreg_tests/bug_6449_UTF.txt", "rt");
lines_result = mgetl(fid);
mclose(fid);

r2 = length(lines_result);
ref2 = [60;46;6;12;8;0;4;7;8;11;11;6];
if ~and(r2 == ref2) then pause, end
