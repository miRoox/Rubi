
(* ::Subsection::Closed:: *)
(* 4.3.10 (c+d x)^m (a+b tan)^n *)
Int[(c_. + d_.*x_)^m_.*tan[e_. + k_.*Pi + f_.*Complex[0, fz_]*x_], x_Symbol, _:RubiNotebookReference["2af488c6"]] := -I*(c + d*x)^(m + 1)/(d*(m + 1)) + 2*I*Int[(c + d*x)^m*E^(-2*I*k*Pi)* E^(2*(-I*e + f*fz*x))/(1 + E^(-2*I*k*Pi)*E^(2*(-I*e + f*fz*x))), x] /; FreeQ[{c, d, e, f, fz}, x] && IntegerQ[4*k] && IGtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*tan[e_. + k_.*Pi + f_.*x_], x_Symbol, _:RubiNotebookReference["28b2369f"]] := I*(c + d*x)^(m + 1)/(d*(m + 1)) - 2*I*Int[(c + d*x)^m*E^(2*I*k*Pi)* E^(2*I*(e + f*x))/(1 + E^(2*I*k*Pi)*E^(2*I*(e + f*x))), x] /; FreeQ[{c, d, e, f}, x] && IntegerQ[4*k] && IGtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*tan[e_. + f_.*Complex[0, fz_]*x_], x_Symbol, _:RubiNotebookReference["29705ca8"]] := -I*(c + d*x)^(m + 1)/(d*(m + 1)) + 2*I*Int[(c + d*x)^m* E^(2*(-I*e + f*fz*x))/(1 + E^(2*(-I*e + f*fz*x))), x] /; FreeQ[{c, d, e, f, fz}, x] && IGtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*tan[e_. + f_.*x_], x_Symbol, _:RubiNotebookReference["2c3f4a2d"]] := I*(c + d*x)^(m + 1)/(d*(m + 1)) - 2*I*Int[(c + d*x)^m*E^(2*I*(e + f*x))/(1 + E^(2*I*(e + f*x))), x] /; FreeQ[{c, d, e, f}, x] && IGtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*(b_.*tan[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["2dfd201a"]] := b*(c + d*x)^m*(b*Tan[e + f*x])^(n - 1)/(f*(n - 1)) - b*d*m/(f*(n - 1))* Int[(c + d*x)^(m - 1)*(b*Tan[e + f*x])^(n - 1), x] - b^2*Int[(c + d*x)^m*(b*Tan[e + f*x])^(n - 2), x] /; FreeQ[{b, c, d, e, f}, x] && GtQ[n, 1] && GtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*(b_.*tan[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["2fbb9e43"]] := (c + d*x)^m*(b*Tan[e + f*x])^(n + 1)/(b*f*(n + 1)) - d*m/(b*f*(n + 1))* Int[(c + d*x)^(m - 1)*(b*Tan[e + f*x])^(n + 1), x] - 1/b^2*Int[(c + d*x)^m*(b*Tan[e + f*x])^(n + 2), x] /; FreeQ[{b, c, d, e, f}, x] && LtQ[n, -1] && GtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*(a_ + b_.*tan[e_. + f_.*x_])^n_., x_Symbol, _:RubiNotebookReference["2e79f474"]] := Int[ExpandIntegrand[(c + d*x)^m, (a + b*Tan[e + f*x])^n, x], x] /; FreeQ[{a, b, c, d, e, f, m}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[(c_. + d_.*x_)^m_./(a_ + b_.*tan[e_. + f_.*x_]), x_Symbol, _:RubiNotebookReference["2525b349"]] := (c + d*x)^(m + 1)/(2*a*d*(m + 1)) - a*(c + d*x)^m/(2*b*f*(a + b*Tan[e + f*x])) + a*d*m/(2*b*f)*Int[(c + d*x)^(m - 1)/(a + b*Tan[e + f*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[a^2 + b^2, 0] && GtQ[m, 0]
Int[1/((c_. + d_.*x_)^2*(a_ + b_.*tan[e_. + f_.*x_])), x_Symbol, _:RubiNotebookReference["24e7d97e"]] := -1/(d*(c + d*x)*(a + b*Tan[e + f*x])) + f/(b*d)*Int[Cos[2*e + 2*f*x]/(c + d*x), x] - f/(a*d)*Int[Sin[2*e + 2*f*x]/(c + d*x), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[a^2 + b^2, 0]
Int[(c_. + d_.*x_)^m_/(a_ + b_.*tan[e_. + f_.*x_]), x_Symbol, _:RubiNotebookReference["f5fa09ba"]] := f*(c + d*x)^(m + 2)/(b*d^2*(m + 1)*(m + 2)) + (c + d*x)^(m + 1)/(d*(m + 1)*(a + b*Tan[e + f*x])) + 2*b*f/(a*d*(m + 1))* Int[(c + d*x)^(m + 1)/(a + b*Tan[e + f*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[a^2 + b^2, 0] && LtQ[m, -1] && NeQ[m, -2]
(* Int[(c_.+d_.*x_)^m_/(a_+b_.*tan[e_.+f_.*x_]),x_Symbol] :=  (c+d*x)^(m+1)/(d*(m+1)*(a+b*Tan[e+f*x])) + f/(b*d*(m+1))*Int[(c+d*x)^(m+1),x] + 2*b*f/(a*d*(m+1))*Int[(c+d*x)^(m+1)/(a+b*Tan[e+f*x]),x] /;  FreeQ[{a,b,c,d,e,f},x] && EqQ[a^2+b^2,0] && LtQ[m,-1] *)
Int[1/((c_. + d_.*x_)*(a_ + b_.*tan[e_. + f_.*x_])), x_Symbol, _:RubiNotebookReference["f67eddd4"]] := Log[c + d*x]/(2*a*d) + 1/(2*a)*Int[Cos[2*e + 2*f*x]/(c + d*x), x] + 1/(2*b)*Int[Sin[2*e + 2*f*x]/(c + d*x), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[a^2 + b^2, 0]
Int[(c_. + d_.*x_)^m_/(a_ + b_.*tan[e_. + f_.*x_]), x_Symbol, _:RubiNotebookReference["f7bcb7e3"]] := (c + d*x)^(m + 1)/(2*a*d*(m + 1)) + 1/(2*a)*Int[(c + d*x)^m*E^(2*a/b*(e + f*x)), x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[a^2 + b^2, 0] && Not[IntegerQ[m]]
Int[(c_. + d_.*x_)^m_*(a_ + b_.*tan[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["f2f3a166"]] := Int[ExpandIntegrand[(c + d*x)^ m, (1/(2*a) + Cos[2*e + 2*f*x]/(2*a) + Sin[2*e + 2*f*x]/(2*b))^(-n), x], x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[a^2 + b^2, 0] && ILtQ[m, 0] && ILtQ[n, 0]
Int[(c_. + d_.*x_)^m_*(a_ + b_.*tan[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["f331cb51"]] := Int[ExpandIntegrand[(c + d*x)^ m, (1/(2*a) + E^(2*a/b*(e + f*x))/(2*a))^(-n), x], x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[a^2 + b^2, 0] && ILtQ[n, 0]
Int[(c_. + d_.*x_)^m_.*(a_ + b_.*tan[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["f1777508"]] := With[{u = IntHide[(a + b*Tan[e + f*x])^n, x]}, Dist[(c + d*x)^m, u, x] - d*m*Int[Dist[(c + d*x)^(m - 1), u, x], x]] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[a^2 + b^2, 0] && ILtQ[n, -1] && GtQ[m, 0]
Int[(c_. + d_.*x_)^m_./(a_ + b_.*tan[e_. + k_.*Pi + f_.*x_]), x_Symbol, _:RubiNotebookReference["f0b51f3f"]] := (c + d*x)^(m + 1)/(d*(m + 1)*(a + I*b)) + 2*I*b* Int[(c + d*x)^m*E^(2*I*k*Pi)* E^Simp[2*I*(e + f*x), x]/((a + I*b)^2 + (a^2 + b^2)*E^(2*I*k*Pi)* E^Simp[2*I*(e + f*x), x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IntegerQ[4*k] && NeQ[a^2 + b^2, 0] && IGtQ[m, 0]
Int[(c_. + d_.*x_)^m_./(a_ + b_.*tan[e_. + f_.*x_]), x_Symbol, _:RubiNotebookReference["fbe95802"]] := (c + d*x)^(m + 1)/(d*(m + 1)*(a + I*b)) + 2*I*b* Int[(c + d*x)^m* E^Simp[2*I*(e + f*x), x]/((a + I*b)^2 + (a^2 + b^2)*E^Simp[2*I*(e + f*x), x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[a^2 + b^2, 0] && IGtQ[m, 0]
Int[(c_. + d_.*x_)/(a_ + b_.*tan[e_. + f_.*x_])^2, x_Symbol, _:RubiNotebookReference["fa2b3235"]] := -(c + d*x)^2/(2*d*(a^2 + b^2)) - b*(c + d*x)/(f*(a^2 + b^2)*(a + b*Tan[e + f*x])) + 1/(f*(a^2 + b^2))* Int[(b*d + 2*a*c*f + 2*a*d*f*x)/(a + b*Tan[e + f*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[a^2 + b^2, 0]
Int[(c_. + d_.*x_)^m_.*(a_ + b_.*tan[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["e74fa654"]] := Int[ExpandIntegrand[(c + d*x)^ m, (1/(a - I*b) - 2*I*b/(a^2 + b^2 + (a - I*b)^2*E^(2*I*(e + f*x))))^(-n), x], x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[a^2 + b^2, 0] && ILtQ[n, 0] && IGtQ[m, 0]
Int[(c_. + d_.*x_)*Sqrt[a_ + b_.*tan[e_. + f_.*x_]], x_Symbol, _:RubiNotebookReference["e68dcc63"]] := -Sqrt[2]*b*(c + d*x)* ArcTanh[Sqrt[a + b*Tan[e + f*x]]/(Sqrt[2]*Rt[a, 2])]/(Rt[a, 2]* f) + Sqrt[2]*b*d/(Rt[a, 2]*f)* Int[ArcTanh[Sqrt[a + b*Tan[e + f*x]]/(Sqrt[2]*Rt[a, 2])], x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[a^2 + b^2, 0]
Int[(c_. + d_.*x_)*Sqrt[a_. + b_.*tan[e_. + f_.*x_]], x_Symbol, _:RubiNotebookReference["e4cb723a"]] := -I*Rt[a - I*b, 2]*(c + d*x)/f* ArcTanh[Sqrt[a + b*Tan[e + f*x]]/Rt[a - I*b, 2]] + I*Rt[a + I*b, 2]*(c + d*x)/f* ArcTanh[Sqrt[a + b*Tan[e + f*x]]/Rt[a + I*b, 2]] + I*d*Rt[a - I*b, 2]/f* Int[ArcTanh[Sqrt[a + b*Tan[e + f*x]]/Rt[a - I*b, 2]], x] - I*d*Rt[a + I*b, 2]/f* Int[ArcTanh[Sqrt[a + b*Tan[e + f*x]]/Rt[a + I*b, 2]], x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[a^2 + b^2, 0]
Int[(c_. + d_.*x_)/Sqrt[a_ + b_.*tan[e_. + f_.*x_]], x_Symbol, _:RubiNotebookReference["e509180d"]] := 1/(2*a)*Int[(c + d*x)*Sqrt[a + b*Tan[e + f*x]], x] + a/2*Int[(c + d*x)*Sec[e + f*x]^2/(a + b*Tan[e + f*x])^(3/2), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[a^2 + b^2, 0]
Int[(c_. + d_.*x_)/Sqrt[a_. + b_.*tan[e_. + f_.*x_]], x_Symbol, _:RubiNotebookReference["e0460e88"]] := -I*(c + d*x)/(f*Rt[a - I*b, 2])* ArcTanh[Sqrt[a + b*Tan[e + f*x]]/Rt[a - I*b, 2]] + I*(c + d*x)/(f*Rt[a + I*b, 2])* ArcTanh[Sqrt[a + b*Tan[e + f*x]]/Rt[a + I*b, 2]] + I*d/(f*Rt[a - I*b, 2])* Int[ArcTanh[Sqrt[a + b*Tan[e + f*x]]/Rt[a - I*b, 2]], x] - I*d/(f*Rt[a + I*b, 2])* Int[ArcTanh[Sqrt[a + b*Tan[e + f*x]]/Rt[a + I*b, 2]], x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[a^2 + b^2, 0]
Int[(c_. + d_.*x_)^m_.*tan[e_. + f_.*x_]^n_., x_Symbol, _:RubiNotebookReference["e18464bf"]] := If[MatchQ[f, f1_.*Complex[0, j_]], If[MatchQ[e, e1_. + Pi/2], I^n*Unintegrable[(c + d*x)^m*Coth[-I*(e - Pi/2) - I*f*x]^n, x], I^n*Unintegrable[(c + d*x)^m*Tanh[-I*e - I*f*x]^n, x]], If[MatchQ[e, e1_. + Pi/2], (-1)^n*Unintegrable[(c + d*x)^m*Cot[e - Pi/2 + f*x]^n, x], Unintegrable[(c + d*x)^m*Tan[e + f*x]^n, x]]] /; FreeQ[{c, d, e, f, m, n}, x] && IntegerQ[n]
Int[(c_. + d_.*x_)^m_.*(a_. + b_.*tan[e_. + f_.*x_])^n_., x_Symbol, _:RubiNotebookReference["e3c2dae6"]] := Unintegrable[(c + d*x)^m*(a + b*Tan[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, m, n}, x]
Int[u_^m_.*(a_. + b_.*Tan[v_])^n_., x_Symbol, _:RubiNotebookReference["e200b0d1"]] := Int[ExpandToSum[u, x]^m*(a + b*Tan[ExpandToSum[v, x]])^n, x] /; FreeQ[{a, b, m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
Int[u_^m_.*(a_. + b_.*Cot[v_])^n_., x_Symbol, _:RubiNotebookReference["e95cf7ec"]] := Int[ExpandToSum[u, x]^m*(a + b*Cot[ExpandToSum[v, x]])^n, x] /; FreeQ[{a, b, m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
