gap> START_TEST("HAP library");
gap> # Bockstein at p=2 must come from an integral resolution (issue #164).
gap> # H^*(C_4,F_2): the degree 2 generator u reduces an integral class, so Sq^1(u)=0.
gap> G:=CyclicGroup(4);;
gap> A:=ModPSteenrodAlgebra(G,5);;
gap> u:=First(Basis(A),v->A!.degree(v)=2);;
gap> Sq(A,1,u);
0*v.1
gap> A:=ModPSteenrodAlgebra(G,4,ResolutionPrimePowerGroup(G,5));;
gap> u:=First(Basis(A),v->A!.degree(v)=2);;
gap> Sq(A,1,u);
0*v.1
gap> STOP_TEST( "tst.tst", 1000 );
