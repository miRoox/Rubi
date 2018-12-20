(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[FresnelS[a_.+b_.*x_],x_Symbol] :=
  (a+b*x)*FresnelS[a+b*x]/b + Cos[Pi/2*(a+b*x)^2]/(b*Pi) /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[FresnelC[a_.+b_.*x_],x_Symbol] :=
  (a+b*x)*FresnelC[a+b*x]/b - Sin[Pi/2*(a+b*x)^2]/(b*Pi) /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[FresnelS[a_.+b_.*x_]^2,x_Symbol] :=
  (a+b*x)*FresnelS[a+b*x]^2/b -
  2*Int[(a+b*x)*Sin[Pi/2*(a+b*x)^2]*FresnelS[a+b*x],x] /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[FresnelC[a_.+b_.*x_]^2,x_Symbol] :=
  (a+b*x)*FresnelC[a+b*x]^2/b -
  2*Int[(a+b*x)*Cos[Pi/2*(a+b*x)^2]*FresnelC[a+b*x],x] /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[FresnelS[a_.+b_.*x_]^n_,x_Symbol] :=
  Unintegrable[FresnelS[a+b*x]^n,x] /;
FreeQ[{a,b,n},x] && NeQ[n,1] && NeQ[n,2]


(* ::Code:: *)
Int[FresnelC[a_.+b_.*x_]^n_,x_Symbol] :=
  Unintegrable[FresnelC[a+b*x]^n,x] /;
FreeQ[{a,b,n},x] && NeQ[n,1] && NeQ[n,2]


(* ::Code:: *)
Int[FresnelS[b_.*x_]/x_,x_Symbol] :=
  (1+I)/4*Int[Erf[Sqrt[Pi]/2*(1+I)*b*x]/x,x] + (1-I)/4*Int[Erf[Sqrt[Pi]/2*(1-I)*b*x]/x,x] /;
FreeQ[b,x]


(* ::Code:: *)
Int[FresnelC[b_.*x_]/x_,x_Symbol] :=
  (1-I)/4*Int[Erf[Sqrt[Pi]/2*(1+I)*b*x]/x,x] + (1+I)/4*Int[Erf[Sqrt[Pi]/2*(1-I)*b*x]/x,x] /;
FreeQ[b,x]


(* ::Code:: *)
Int[(d_.*x_)^m_.*FresnelS[b_.*x_],x_Symbol] :=
  (d*x)^(m+1)*FresnelS[b*x]/(d*(m+1)) - b/(d*(m+1))*Int[(d*x)^(m+1)*Sin[Pi/2*b^2*x^2],x] /;
FreeQ[{b,d,m},x] && NeQ[m,-1]


(* ::Code:: *)
Int[(d_.*x_)^m_.*FresnelC[b_.*x_],x_Symbol] :=
  (d*x)^(m+1)*FresnelC[b*x]/(d*(m+1)) - b/(d*(m+1))*Int[(d*x)^(m+1)*Cos[Pi/2*b^2*x^2],x] /;
FreeQ[{b,d,m},x] && NeQ[m,-1]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*FresnelS[a_.+b_.*x_],x_Symbol] :=
  (c+d*x)^(m+1)*FresnelS[a+b*x]/(d*(m+1)) - 
  b/(d*(m+1))*Int[(c+d*x)^(m+1)*Sin[Pi/2*(a+b*x)^2],x] /;
FreeQ[{a,b,c,d},x] && IGtQ[m,0]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*FresnelC[a_.+b_.*x_],x_Symbol] :=
  (c+d*x)^(m+1)*FresnelC[a+b*x]/(d*(m+1)) - 
  b/(d*(m+1))*Int[(c+d*x)^(m+1)*Cos[Pi/2*(a+b*x)^2],x] /;
FreeQ[{a,b,c,d},x] && IGtQ[m,0]


(* ::Code:: *)
Int[x_^m_.*FresnelS[b_.*x_]^2,x_Symbol] :=
  x^(m+1)*FresnelS[b*x]^2/(m+1) -
  2*b/(m+1)*Int[x^(m+1)*Sin[Pi/2*b^2*x^2]*FresnelS[b*x],x] /;
FreeQ[b,x] && IntegerQ[m] && NeQ[m,-1]


(* ::Code:: *)
Int[x_^m_.*FresnelC[b_.*x_]^2,x_Symbol] :=
  x^(m+1)*FresnelC[b*x]^2/(m+1) -
  2*b/(m+1)*Int[x^(m+1)*Cos[Pi/2*b^2*x^2]*FresnelC[b*x],x] /;
FreeQ[b,x] && IntegerQ[m] && NeQ[m,-1]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*FresnelS[a_+b_.*x_]^2,x_Symbol] :=
  1/b^(m+1)*Subst[Int[ExpandIntegrand[FresnelS[x]^2,(b*c-a*d+d*x)^m,x],x],x,a+b*x] /;
FreeQ[{a,b,c,d},x] && IGtQ[m,0]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*FresnelC[a_+b_.*x_]^2,x_Symbol] :=
  1/b^(m+1)*Subst[Int[ExpandIntegrand[FresnelC[x]^2,(b*c-a*d+d*x)^m,x],x],x,a+b*x] /;
FreeQ[{a,b,c,d},x] && IGtQ[m,0]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*FresnelS[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[(c+d*x)^m*FresnelS[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,m,n},x]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*FresnelC[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[(c+d*x)^m*FresnelC[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,m,n},x]


(* ::Code:: *)
Int[E^(c_.+d_.*x_^2)*FresnelS[b_.*x_],x_Symbol] :=
  (1+I)/4*Int[E^(c+d*x^2)*Erf[Sqrt[Pi]/2*(1+I)*b*x],x] + (1-I)/4*Int[E^(c+d*x^2)*Erf[Sqrt[Pi]/2*(1-I)*b*x],x] /;
FreeQ[{b,c,d},x] && EqQ[d^2,-Pi^2/4*b^4]


(* ::Code:: *)
Int[E^(c_.+d_.*x_^2)*FresnelC[b_.*x_],x_Symbol] :=
  (1-I)/4*Int[E^(c+d*x^2)*Erf[Sqrt[Pi]/2*(1+I)*b*x],x] + (1+I)/4*Int[E^(c+d*x^2)*Erf[Sqrt[Pi]/2*(1-I)*b*x],x] /;
FreeQ[{b,c,d},x] && EqQ[d^2,-Pi^2/4*b^4]


(* ::Code:: *)
Int[E^(c_.+d_.*x_^2)*FresnelS[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[E^(c+d*x^2)*FresnelS[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[E^(c_.+d_.*x_^2)*FresnelC[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[E^(c+d*x^2)*FresnelC[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[Sin[d_.*x_^2]*FresnelS[b_.*x_]^n_.,x_Symbol] :=
  Pi*b/(2*d)*Subst[Int[x^n,x],x,FresnelS[b*x]] /;
FreeQ[{b,d,n},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[Cos[d_.*x_^2]*FresnelC[b_.*x_]^n_.,x_Symbol] :=
  Pi*b/(2*d)*Subst[Int[x^n,x],x,FresnelC[b*x]] /;
FreeQ[{b,d,n},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[Sin[c_+d_.*x_^2]*FresnelS[b_.*x_],x_Symbol] :=
  Sin[c]*Int[Cos[d*x^2]*FresnelS[b*x],x] + Cos[c]*Int[Sin[d*x^2]*FresnelS[b*x],x] /;
FreeQ[{b,c,d},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[Cos[c_+d_.*x_^2]*FresnelC[b_.*x_],x_Symbol] :=
  Cos[c]*Int[Cos[d*x^2]*FresnelC[b*x],x] - Sin[c]*Int[Sin[d*x^2]*FresnelC[b*x],x] /;
FreeQ[{b,c,d},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[Sin[c_.+d_.*x_^2]*FresnelS[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[Sin[c+d*x^2]*FresnelS[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[Cos[c_.+d_.*x_^2]*FresnelC[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[Cos[c+d*x^2]*FresnelC[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[Cos[d_.*x_^2]*FresnelS[b_.*x_],x_Symbol] :=
  FresnelC[b*x]*FresnelS[b*x]/(2*b) - 
  1/8*I*b*x^2*HypergeometricPFQ[{1,1},{3/2,2},-1/2*I*b^2*Pi*x^2] + 
  1/8*I*b*x^2*HypergeometricPFQ[{1,1},{3/2,2},1/2*I*b^2*Pi*x^2] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[Sin[d_.*x_^2]*FresnelC[b_.*x_],x_Symbol] :=
  b*Pi*FresnelC[b*x]*FresnelS[b*x]/(4*d) + 
  1/8*I*b*x^2*HypergeometricPFQ[{1,1},{3/2,2},-I*d*x^2] - 
  1/8*I*b*x^2*HypergeometricPFQ[{1,1},{3/2,2},I*d*x^2] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[Cos[c_+d_.*x_^2]*FresnelS[b_.*x_],x_Symbol] :=
  Cos[c]*Int[Cos[d*x^2]*FresnelS[b*x],x] - Sin[c]*Int[Sin[d*x^2]*FresnelS[b*x],x] /;
FreeQ[{b,c,d},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[Sin[c_+d_.*x_^2]*FresnelC[b_.*x_],x_Symbol] :=
  Sin[c]*Int[Cos[d*x^2]*FresnelC[b*x],x] + Cos[c]*Int[Sin[d*x^2]*FresnelC[b*x],x] /;
FreeQ[{b,c,d},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[Cos[c_.+d_.*x_^2]*FresnelS[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[Cos[c+d*x^2]*FresnelS[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[Sin[c_.+d_.*x_^2]*FresnelC[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[Sin[c+d*x^2]*FresnelC[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[x_*Sin[d_.*x_^2]*FresnelS[b_.*x_],x_Symbol] :=
  -Cos[d*x^2]*FresnelS[b*x]/(2*d) + 1/(2*b*Pi)*Int[Sin[2*d*x^2],x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[x_*Cos[d_.*x_^2]*FresnelC[b_.*x_],x_Symbol] :=
  Sin[d*x^2]*FresnelC[b*x]/(2*d) - b/(4*d)*Int[Sin[2*d*x^2],x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[x_^m_*Sin[d_.*x_^2]*FresnelS[b_.*x_],x_Symbol] :=
  -x^(m-1)*Cos[d*x^2]*FresnelS[b*x]/(2*d) + 
  1/(2*b*Pi)*Int[x^(m-1)*Sin[2*d*x^2],x] + 
  (m-1)/(2*d)*Int[x^(m-2)*Cos[d*x^2]*FresnelS[b*x],x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4] && IGtQ[m,1]


(* ::Code:: *)
Int[x_^m_*Cos[d_.*x_^2]*FresnelC[b_.*x_],x_Symbol] :=
  x^(m-1)*Sin[d*x^2]*FresnelC[b*x]/(2*d) - 
  b/(4*d)*Int[x^(m-1)*Sin[2*d*x^2],x] - 
  (m-1)/(2*d)*Int[x^(m-2)*Sin[d*x^2]*FresnelC[b*x],x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4] && IGtQ[m,1]


(* ::Code:: *)
Int[x_^m_*Sin[d_.*x_^2]*FresnelS[b_.*x_],x_Symbol] :=
  x^(m+1)*Sin[d*x^2]*FresnelS[b*x]/(m+1) - 
  d*x^(m+2)/(Pi*b*(m+1)*(m+2)) + 
  d/(Pi*b*(m+1))*Int[x^(m+1)*Cos[2*d*x^2],x] - 
  2*d/(m+1)*Int[x^(m+2)*Cos[d*x^2]*FresnelS[b*x],x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4] && ILtQ[m,-2]


(* ::Code:: *)
Int[x_^m_*Cos[d_.*x_^2]*FresnelC[b_.*x_],x_Symbol] :=
  x^(m+1)*Cos[d*x^2]*FresnelC[b*x]/(m+1) - 
  b*x^(m+2)/(2*(m+1)*(m+2)) - 
  b/(2*(m+1))*Int[x^(m+1)*Cos[2*d*x^2],x] + 
  2*d/(m+1)*Int[x^(m+2)*Sin[d*x^2]*FresnelC[b*x],x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4] && ILtQ[m,-2]


(* ::Code:: *)
Int[(e_.*x_)^m_.*Sin[c_.+d_.*x_^2]*FresnelS[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[(e*x)^m*Sin[c+d*x^2]*FresnelS[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,e,m,n},x]


(* ::Code:: *)
Int[(e_.*x_)^m_.*Cos[c_.+d_.*x_^2]*FresnelC[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[(e*x)^m*Cos[c+d*x^2]*FresnelC[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,e,m,n},x]


(* ::Code:: *)
Int[x_*Cos[d_.*x_^2]*FresnelS[b_.*x_],x_Symbol] :=
  Sin[d*x^2]*FresnelS[b*x]/(2*d) - 1/(Pi*b)*Int[Sin[d*x^2]^2,x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[x_*Sin[d_.*x_^2]*FresnelC[b_.*x_],x_Symbol] :=
  -Cos[d*x^2]*FresnelC[b*x]/(2*d) + b/(2*d)*Int[Cos[d*x^2]^2,x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4]


(* ::Code:: *)
Int[x_^m_*Cos[d_.*x_^2]*FresnelS[b_.*x_],x_Symbol] :=
  x^(m-1)*Sin[d*x^2]*FresnelS[b*x]/(2*d) - 
  1/(Pi*b)*Int[x^(m-1)*Sin[d*x^2]^2,x] - 
  (m-1)/(2*d)*Int[x^(m-2)*Sin[d*x^2]*FresnelS[b*x],x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4] && IGtQ[m,1]


(* ::Code:: *)
Int[x_^m_*Sin[d_.*x_^2]*FresnelC[b_.*x_],x_Symbol] :=
  -x^(m-1)*Cos[d*x^2]*FresnelC[b*x]/(2*d) + 
  b/(2*d)*Int[x^(m-1)*Cos[d*x^2]^2,x] + 
  (m-1)/(2*d)*Int[x^(m-2)*Cos[d*x^2]*FresnelC[b*x],x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4] && IGtQ[m,1]


(* ::Code:: *)
Int[x_^m_*Cos[d_.*x_^2]*FresnelS[b_.*x_],x_Symbol] :=
  x^(m+1)*Cos[d*x^2]*FresnelS[b*x]/(m+1) - 
  d/(Pi*b*(m+1))*Int[x^(m+1)*Sin[2*d*x^2],x] + 
  2*d/(m+1)*Int[x^(m+2)*Sin[d*x^2]*FresnelS[b*x],x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4] && ILtQ[m,-1]


(* ::Code:: *)
Int[x_^m_*Sin[d_.*x_^2]*FresnelC[b_.*x_],x_Symbol] :=
  x^(m+1)*Sin[d*x^2]*FresnelC[b*x]/(m+1) - 
  b/(2*(m+1))*Int[x^(m+1)*Sin[2*d*x^2],x] - 
  2*d/(m+1)*Int[x^(m+2)*Cos[d*x^2]*FresnelC[b*x],x] /;
FreeQ[{b,d},x] && EqQ[d^2,Pi^2/4*b^4] && ILtQ[m,-1]


(* ::Code:: *)
Int[(e_.*x_)^m_.*Cos[c_.+d_.*x_^2]*FresnelS[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[(e*x)^m*Cos[c+d*x^2]*FresnelS[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,e,m,n},x]


(* ::Code:: *)
Int[(e_.*x_)^m_.*Sin[c_.+d_.*x_^2]*FresnelC[a_.+b_.*x_]^n_.,x_Symbol] :=
  Unintegrable[(e*x)^m*Sin[c+d*x^2]*FresnelC[a+b*x]^n,x] /;
FreeQ[{a,b,c,d,e,m,n},x]


(* ::Code:: *)
Int[FresnelS[d_.*(a_.+b_.*Log[c_.*x_^n_.])],x_Symbol] :=
  x*FresnelS[d*(a+b*Log[c*x^n])] - b*d*n*Int[Sin[Pi/2*(d*(a+b*Log[c*x^n]))^2],x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[FresnelC[d_.*(a_.+b_.*Log[c_.*x_^n_.])],x_Symbol] :=
  x*FresnelC[d*(a+b*Log[c*x^n])] - b*d*n*Int[Cos[Pi/2*(d*(a+b*Log[c*x^n]))^2],x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[F_[d_.*(a_.+b_.*Log[c_.*x_^n_.])]/x_,x_Symbol] :=
  1/n*Subst[F[d*(a+b*x)],x,Log[c*x^n]] /;
FreeQ[{a,b,c,d,n},x] && MemberQ[{FresnelS,FresnelC},F]


(* ::Code:: *)
Int[(e_.*x_)^m_.*FresnelS[d_.*(a_.+b_.*Log[c_.*x_^n_.])],x_Symbol] :=
  (e*x)^(m+1)*FresnelS[d*(a+b*Log[c*x^n])]/(e*(m+1)) - 
  b*d*n/(m+1)*Int[(e*x)^m*Sin[Pi/2*(d*(a+b*Log[c*x^n]))^2],x] /;
FreeQ[{a,b,c,d,e,m,n},x] && NeQ[m,-1]


(* ::Code:: *)
Int[(e_.*x_)^m_.*FresnelC[d_.*(a_.+b_.*Log[c_.*x_^n_.])],x_Symbol] :=
  (e*x)^(m+1)*FresnelC[d*(a+b*Log[c*x^n])]/(e*(m+1)) - 
  b*d*n/(m+1)*Int[(e*x)^m*Cos[Pi/2*(d*(a+b*Log[c*x^n]))^2],x] /;
FreeQ[{a,b,c,d,e,m,n},x] && NeQ[m,-1]



