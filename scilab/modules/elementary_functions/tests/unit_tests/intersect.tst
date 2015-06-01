// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

[v,ka,kb] = intersect([],[]);
if v <> [] then pause,end
if ka <> [] then pause,end
if kb <> [] then pause,end

[v,ka,kb] = intersect([1 2],[3 4]);
if v <> [] then pause,end
if ka <> [] then pause,end
if kb <> [] then pause,end




A = [ 1 8 4 5 2 1];
B = [ 9 7 4 2 1 4];

[v,ka,kb] = intersect(A,B);
if or(A(ka) <> B(kb)) then pause,end
if or(A(ka) <> v) then pause,end
if or(v<>intersect(A,B))  then pause,end
if (or(v<>[1,2,4])) then pause,end

A = 'a'+string(A);
B = 'b'+string(B);
[v,ka,kb] = intersect(A,B);
if or(A(ka) <> B(kb)) then pause,end
if or(A(ka) <> v) then pause,end
if or(v<>intersect(A,B))  then pause,end
if v <> [] then pause,end


A = [ "elt1" "elt3" "elt4"];
B = [ "elt5" "elt1" "elt3"];
[v, ka, kb] = intersect(A,B);
if or(A(ka) <> B(kb)) then pause,end
if or(A(ka) <> v) then pause,end
if or(v<>intersect(A,B))  then pause,end
if (or(v<>["elt1","elt3"])) then pause,end


A = [ "elt1" "elt3" "elt4"];
B = [ "elt5" "elt6" "elt2" "elt1" "elt3"];

[v, ka, kb] = intersect(A,B);
if or(A(ka) <> B(kb)) then pause,end
if or(A(ka) <> v) then pause,end
if or(v<>intersect(A,B))  then pause,end
if (or(v<>["elt1","elt3"])) then pause,end

//with integers
A = int16([ 1 8 4 5 2 1]);
B = int16([ 9 7 4 2 1 4]);

[v, ka, kb]=intersect(A,B);
if or(A(ka) <> B(kb)) then pause,end
if or(A(ka) <> v) then pause,end
if or(v<>intersect(A,B))  then pause,end
if (or(v<>int16([1,2,4]))) then pause,end

A = uint8([ 1 8 4 5 2 1]);
B = uint8([ 9 7 4 2 1 4]);

[v, ka, kb]=intersect(A,B);
if or(A(ka) <> B(kb)) then pause,end
if or(A(ka) <> v) then pause,end
if or(v<>intersect(A,B))  then pause,end
if (or(v<>uint8([1,2,4]))) then pause,end

//with matrices
 A = [0,0,1,1 1;
      0,1,1,1,1;
      2,0,1,1,1;
      0,2,2,2,2;
      2,0,1,1,1;
      0,0,1,1,3];
B = [1,0,1;
     1,0,2;
     1,2,3;
     2,0,4;
     1,2,5;
     3,0,6];
[v,ka,kb] = intersect(A,B,'c');
if or(A(:,ka) <> B(:,kb)) then pause,end
if or(A(:,ka) <> v) then pause,end
if or(v<>intersect(A,B,'c'))  then pause,end
if (or(v<>[0,1;0,1;2,1;0,2;2,1;0,3])) then pause,end

A=A';B=B';
[v,ka,kb] = intersect(A,B,'r');
if or(A(ka,:) <> B(kb,:)) then pause,end
if or(A(ka,:) <> v) then pause,end
if or(v<>intersect(A,B,'r'))  then pause,end
if (or(v<>[0,0,2,0,2,0;1,1,1,2,1,3])) then pause,end

A=uint32(A);B=uint32(B);
[v,ka,kb] = intersect(A,B,'r');
if or(A(ka,:) <> B(kb,:)) then pause,end
if or(A(ka,:) <> v) then pause,end
if or(v<>intersect(A,B,'r'))  then pause,end
if (or(v<>uint32([0,0,2,0,2,0;1,1,1,2,1,3]))) then pause,end

//with Nan
 A = [0,0,1,1 1;
      0,1,1,1,1;
      2,0,1,1,1;
      0,2,2,2,2;
      2,0,1,1,1;
      0,0,1,1,%nan];
B = [1,0,1;
     1,0,2;
     1,2,3;
     2,0,4;
     1,2,5;
     %nan,0,6];

[v,ka,kb] = intersect(A,B,'c');
if or(A(:,ka) <> B(:,kb)) then pause,end
if or(A(:,ka) <> v) then pause,end
if or(v<>intersect(A,B,'c'))  then pause,end
if (or(v<>[0;0;2;0;2;0])) then pause,end



// =============================================================================
