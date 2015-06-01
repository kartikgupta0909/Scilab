// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) INRIA - Serge Steer
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt

function [s]=%lss_m_p(s1,d2)
    //   [s]=%lss_m_p(s1,d2)
    //   s=s1*d2
    //
    //   s1 : state-space
    //   d2 : polynomial matrix
    //!
    s=s1*tlist(["lss","A","B","C","D","X0","dt"],[],[],[],d2,[],[])
endfunction
