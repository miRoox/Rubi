
(* ::Section:: *)
(* 2.1 (c+d x)^m (a+b (F^(g (e+f x)))^n)^p *)

(* ::Subsection::Closed:: *)
(* 2.1 (c+d x)^m (a+b (F^(g (e+f x)))^n)^p *)
$UseGamma = False; 
Int[((c_.) + (d_.)*(x_))^(m_.)*((b_.)*(F_)^((g_.)*((e_.) + (f_.)*(x_))))^(n_.), x_Symbol] := (c + d*x)^m*((b*F^(g*(e + f*x)))^n/(f*g*n*Log[F])) - d*(m/(f*g*n*Log[F]))*Int[(c + d*x)^(m - 1)*(b*F^(g*(e + f*x)))^n, x] /; FreeQ[{F, b, c, d, e, f, g, n}, x] && GtQ[m, 0] && IntegerQ[2*m] &&  !$UseGamma === True
Int[((c_.) + (d_.)*(x_))^(m_)*((b_.)*(F_)^((g_.)*((e_.) + (f_.)*(x_))))^(n_.), x_Symbol] := (c + d*x)^(m + 1)*((b*F^(g*(e + f*x)))^n/(d*(m + 1))) - f*g*n*(Log[F]/(d*(m + 1)))*Int[(c + d*x)^(m + 1)*(b*F^(g*(e + f*x)))^n, x] /; FreeQ[{F, b, c, d, e, f, g, n}, x] && LtQ[m, -1] && IntegerQ[2*m] &&  !$UseGamma === True
Int[(F_)^((g_.)*((e_.) + (f_.)*(x_)))/((c_.) + (d_.)*(x_)), x_Symbol] := (F^(g*(e - c*(f/d)))/d)*ExpIntegralEi[f*g*(c + d*x)*(Log[F]/d)] /; FreeQ[{F, c, d, e, f, g}, x] &&  !$UseGamma === True
Int[((c_.) + (d_.)*(x_))^(m_.)*(F_)^((g_.)*((e_.) + (f_.)*(x_))), x_Symbol] := (-d)^m*(F^(g*(e - c*(f/d)))/(f^(m + 1)*g^(m + 1)*Log[F]^(m + 1)))*Gamma[m + 1, (-f)*g*(Log[F]/d)*(c + d*x)] /; FreeQ[{F, c, d, e, f, g}, x] && IntegerQ[m]
Int[(F_)^((g_.)*((e_.) + (f_.)*(x_)))/Sqrt[(c_.) + (d_.)*(x_)], x_Symbol] := (2/d)*Subst[Int[F^(g*(e - c*(f/d)) + f*g*(x^2/d)), x], x, Sqrt[c + d*x]] /; FreeQ[{F, c, d, e, f, g}, x] &&  !$UseGamma === True
Int[((c_.) + (d_.)*(x_))^(m_)*(F_)^((g_.)*((e_.) + (f_.)*(x_))), x_Symbol] := (-F^(g*(e - c*(f/d))))*((c + d*x)^FracPart[m]/(d*((-f)*g*(Log[F]/d))^(IntPart[m] + 1)*((-f)*g*Log[F]*((c + d*x)/d))^FracPart[m]))*Gamma[m + 1, ((-f)*g*(Log[F]/d))*(c + d*x)] /; FreeQ[{F, c, d, e, f, g, m}, x] &&  !IntegerQ[m]
Int[((c_.) + (d_.)*(x_))^(m_.)*((b_.)*(F_)^((g_.)*((e_.) + (f_.)*(x_))))^(n_), x_Symbol] := ((b*F^(g*(e + f*x)))^n/F^(g*n*(e + f*x)))*Int[(c + d*x)^m*F^(g*n*(e + f*x)), x] /; FreeQ[{F, b, c, d, e, f, g, m, n}, x]
Int[((c_.) + (d_.)*(x_))^(m_.)*((a_) + (b_.)*((F_)^((g_.)*((e_.) + (f_.)*(x_))))^(n_.))^(p_.), x_Symbol] := Int[ExpandIntegrand[(c + d*x)^m, (a + b*(F^(g*(e + f*x)))^n)^p, x], x] /; FreeQ[{F, a, b, c, d, e, f, g, m, n}, x] && IGtQ[p, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)/((a_) + (b_.)*((F_)^((g_.)*((e_.) + (f_.)*(x_))))^(n_.)), x_Symbol] := (c + d*x)^(m + 1)/(a*d*(m + 1)) - (b/a)*Int[(c + d*x)^m*((F^(g*(e + f*x)))^n/(a + b*(F^(g*(e + f*x)))^n)), x] /; FreeQ[{F, a, b, c, d, e, f, g, n}, x] && IGtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)*((a_) + (b_.)*((F_)^((g_.)*((e_.) + (f_.)*(x_))))^(n_.))^(p_), x_Symbol] := (1/a)*Int[(c + d*x)^m*(a + b*(F^(g*(e + f*x)))^n)^(p + 1), x] - (b/a)*Int[(c + d*x)^m*(F^(g*(e + f*x)))^n*(a + b*(F^(g*(e + f*x)))^n)^p, x] /; FreeQ[{F, a, b, c, d, e, f, g, n}, x] && ILtQ[p, 0] && IGtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)*((a_) + (b_.)*((F_)^((g_.)*((e_.) + (f_.)*(x_))))^(n_.))^(p_), x_Symbol] := With[{u = IntHide[(a + b*(F^(g*(e + f*x)))^n)^p, x]}, Dist[(c + d*x)^m, u, x] - d*m*Int[(c + d*x)^(m - 1)*u, x]] /; FreeQ[{F, a, b, c, d, e, f, g, n}, x] && IGtQ[m, 0] && LtQ[p, -1]
Int[(u_)^(m_.)*((a_.) + (b_.)*((F_)^((g_.)*(v_)))^(n_.))^(p_.), x_Symbol] := Int[NormalizePowerOfLinear[u, x]^m*(a + b*(F^(g*ExpandToSum[v, x]))^n)^p, x] /; FreeQ[{F, a, b, g, n, p}, x] && LinearQ[v, x] && PowerOfLinearQ[u, x] &&  !(LinearMatchQ[v, x] && PowerOfLinearMatchQ[u, x]) && IntegerQ[m]
Int[(u_)^(m_.)*((a_.) + (b_.)*((F_)^((g_.)*(v_)))^(n_.))^(p_.), x_Symbol] := Module[{uu = NormalizePowerOfLinear[u, x], z}, z = If[PowerQ[uu] && FreeQ[uu[[2]], x], uu[[1]]^(m*uu[[2]]), uu^m]; (uu^m/z)*Int[z*(a + b*(F^(g*ExpandToSum[v, x]))^n)^p, x]] /; FreeQ[{F, a, b, g, m, n, p}, x] && LinearQ[v, x] && PowerOfLinearQ[u, x] &&  !(LinearMatchQ[v, x] && PowerOfLinearMatchQ[u, x]) &&  !IntegerQ[m]
Int[((c_.) + (d_.)*(x_))^(m_.)*((a_) + (b_.)*((F_)^((g_.)*((e_.) + (f_.)*(x_))))^(n_.))^(p_.), x_Symbol] := Unintegrable[(c + d*x)^m*(a + b*(F^(g*(e + f*x)))^n)^p, x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x]