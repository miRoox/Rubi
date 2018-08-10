
(* ::Section:: *)
(* 4.1.10 (c+d x)^m (a+b sin)^n *)

(* ::Subsection::Closed:: *)
(* 4.1.10 (c+d x)^m (a+b sin)^n *)
Int[((c_.) + (d_.)*(x_))^(m_.)*sin[(e_.) + (f_.)*(x_)], x_Symbol] := (-(c + d*x)^m)*(Cos[e + f*x]/f) + d*(m/f)*Int[(c + d*x)^(m - 1)*Cos[e + f*x], x] /; FreeQ[{c, d, e, f}, x] && GtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_)*sin[(e_.) + (f_.)*(x_)], x_Symbol] := (c + d*x)^(m + 1)*(Sin[e + f*x]/(d*(m + 1))) - (f/(d*(m + 1)))*Int[(c + d*x)^(m + 1)*Cos[e + f*x], x] /; FreeQ[{c, d, e, f}, x] && LtQ[m, -1]
Int[sin[(e_.) + (f_.)*(Complex[0, fz_])*(x_)]/((c_.) + (d_.)*(x_)), x_Symbol] := I*(SinhIntegral[c*f*(fz/d) + f*fz*x]/d) /; FreeQ[{c, d, e, f, fz}, x] && EqQ[d*e - c*f*fz*I, 0]
Int[sin[(e_.) + (f_.)*(x_)]/((c_.) + (d_.)*(x_)), x_Symbol] := SinIntegral[e + f*x]/d /; FreeQ[{c, d, e, f}, x] && EqQ[d*e - c*f, 0]
Int[sin[(e_.) + (f_.)*(Complex[0, fz_])*(x_)]/((c_.) + (d_.)*(x_)), x_Symbol] := CoshIntegral[(-c)*f*(fz/d) - f*fz*x]/d /; FreeQ[{c, d, e, f, fz}, x] && EqQ[d*(e - Pi/2) - c*f*fz*I, 0] && NegQ[c*f*(fz/d), 0]
Int[sin[(e_.) + (f_.)*(Complex[0, fz_])*(x_)]/((c_.) + (d_.)*(x_)), x_Symbol] := CoshIntegral[c*f*(fz/d) + f*fz*x]/d /; FreeQ[{c, d, e, f, fz}, x] && EqQ[d*(e - Pi/2) - c*f*fz*I, 0]
Int[sin[(e_.) + (f_.)*(x_)]/((c_.) + (d_.)*(x_)), x_Symbol] := CosIntegral[e - Pi/2 + f*x]/d /; FreeQ[{c, d, e, f}, x] && EqQ[d*(e - Pi/2) - c*f, 0]
Int[sin[(e_.) + (f_.)*(x_)]/((c_.) + (d_.)*(x_)), x_Symbol] := Cos[(d*e - c*f)/d]*Int[Sin[c*(f/d) + f*x]/(c + d*x), x] + Sin[(d*e - c*f)/d]*Int[Cos[c*(f/d) + f*x]/(c + d*x), x] /; FreeQ[{c, d, e, f}, x] && NeQ[d*e - c*f, 0]
Int[sin[(e_.) + Pi/2 + (f_.)*(x_)]/Sqrt[(c_.) + (d_.)*(x_)], x_Symbol] := (2/d)*Subst[Int[Cos[f*(x^2/d)], x], x, Sqrt[c + d*x]] /; FreeQ[{c, d, e, f}, x] && ComplexFreeQ[f] && EqQ[d*e - c*f, 0]
Int[sin[(e_.) + (f_.)*(x_)]/Sqrt[(c_.) + (d_.)*(x_)], x_Symbol] := (2/d)*Subst[Int[Sin[f*(x^2/d)], x], x, Sqrt[c + d*x]] /; FreeQ[{c, d, e, f}, x] && ComplexFreeQ[f] && EqQ[d*e - c*f, 0]
Int[sin[(e_.) + (f_.)*(x_)]/Sqrt[(c_.) + (d_.)*(x_)], x_Symbol] := Cos[(d*e - c*f)/d]*Int[Sin[c*(f/d) + f*x]/Sqrt[c + d*x], x] + Sin[(d*e - c*f)/d]*Int[Cos[c*(f/d) + f*x]/Sqrt[c + d*x], x] /; FreeQ[{c, d, e, f}, x] && ComplexFreeQ[f] && NeQ[d*e - c*f, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)*sin[(e_.) + (k_.)*Pi + (f_.)*(x_)], x_Symbol] := (I/2)*Int[(c + d*x)^m/(E^(I*k*Pi)*E^(I*(e + f*x))), x] - (I/2)*Int[(c + d*x)^m*E^(I*k*Pi)*E^(I*(e + f*x)), x] /; FreeQ[{c, d, e, f, m}, x] && IntegerQ[2*k]
Int[((c_.) + (d_.)*(x_))^(m_.)*sin[(e_.) + (f_.)*(x_)], x_Symbol] := (I/2)*Int[(c + d*x)^m/E^(I*(e + f*x)), x] - (I/2)*Int[(c + d*x)^m*E^(I*(e + f*x)), x] /; FreeQ[{c, d, e, f, m}, x]
Int[((c_.) + (d_.)*(x_))^(m_.)*sin[(e_.) + (f_.)*((x_)/2)]^2, x_Symbol] := (1/2)*Int[(c + d*x)^m, x] - (1/2)*Int[(c + d*x)^m*Cos[2*e + f*x], x] /; FreeQ[{c, d, e, f, m}, x]
Int[((c_.) + (d_.)*(x_))*((b_.)*sin[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := d*((b*Sin[e + f*x])^n/(f^2*n^2)) - b*(c + d*x)*Cos[e + f*x]*((b*Sin[e + f*x])^(n - 1)/(f*n)) + b^2*((n - 1)/n)*Int[(c + d*x)*(b*Sin[e + f*x])^(n - 2), x] /; FreeQ[{b, c, d, e, f}, x] && GtQ[n, 1]
Int[((c_.) + (d_.)*(x_))^(m_)*((b_.)*sin[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := d*m*(c + d*x)^(m - 1)*((b*Sin[e + f*x])^n/(f^2*n^2)) - b*(c + d*x)^m*Cos[e + f*x]*((b*Sin[e + f*x])^(n - 1)/(f*n)) + b^2*((n - 1)/n)*Int[(c + d*x)^m*(b*Sin[e + f*x])^(n - 2), x] - d^2*m*((m - 1)/(f^2*n^2))*Int[(c + d*x)^(m - 2)*(b*Sin[e + f*x])^n, x] /; FreeQ[{b, c, d, e, f}, x] && GtQ[n, 1] && GtQ[m, 1]
Int[((c_.) + (d_.)*(x_))^(m_)*sin[(e_.) + (f_.)*(x_)]^(n_), x_Symbol] := Int[ExpandTrigReduce[(c + d*x)^m, Sin[e + f*x]^n, x], x] /; FreeQ[{c, d, e, f, m}, x] && IGtQ[n, 1] && ( !RationalQ[m] || (GeQ[m, -1] && LtQ[m, 1]))
Int[((c_.) + (d_.)*(x_))^(m_)*sin[(e_.) + (f_.)*(x_)]^(n_), x_Symbol] := (c + d*x)^(m + 1)*(Sin[e + f*x]^n/(d*(m + 1))) - f*(n/(d*(m + 1)))*Int[ExpandTrigReduce[(c + d*x)^(m + 1), Cos[e + f*x]*Sin[e + f*x]^(n - 1), x], x] /; FreeQ[{c, d, e, f, m}, x] && IGtQ[n, 1] && GeQ[m, -2] && LtQ[m, -1]
Int[((c_.) + (d_.)*(x_))^(m_)*((b_.)*sin[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := (c + d*x)^(m + 1)*((b*Sin[e + f*x])^n/(d*(m + 1))) - b*f*n*(c + d*x)^(m + 2)*Cos[e + f*x]*((b*Sin[e + f*x])^(n - 1)/(d^2*(m + 1)*(m + 2))) - f^2*(n^2/(d^2*(m + 1)*(m + 2)))*Int[(c + d*x)^(m + 2)*(b*Sin[e + f*x])^n, x] + b^2*f^2*n*((n - 1)/(d^2*(m + 1)*(m + 2)))*Int[(c + d*x)^(m + 2)*(b*Sin[e + f*x])^(n - 2), x] /; FreeQ[{b, c, d, e, f}, x] && GtQ[n, 1] && LtQ[m, -2]
Int[((c_.) + (d_.)*(x_))*((b_.)*sin[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := (c + d*x)*Cos[e + f*x]*((b*Sin[e + f*x])^(n + 1)/(b*f*(n + 1))) - d*((b*Sin[e + f*x])^(n + 2)/(b^2*f^2*(n + 1)*(n + 2))) + ((n + 2)/(b^2*(n + 1)))*Int[(c + d*x)*(b*Sin[e + f*x])^(n + 2), x] /; FreeQ[{b, c, d, e, f}, x] && LtQ[n, -1] && NeQ[n, -2]
Int[((c_.) + (d_.)*(x_))^(m_.)*((b_.)*sin[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := (c + d*x)^m*Cos[e + f*x]*((b*Sin[e + f*x])^(n + 1)/(b*f*(n + 1))) - d*m*(c + d*x)^(m - 1)*((b*Sin[e + f*x])^(n + 2)/(b^2*f^2*(n + 1)*(n + 2))) + ((n + 2)/(b^2*(n + 1)))*Int[(c + d*x)^m*(b*Sin[e + f*x])^(n + 2), x] + d^2*m*((m - 1)/(b^2*f^2*(n + 1)*(n + 2)))*Int[(c + d*x)^(m - 2)*(b*Sin[e + f*x])^(n + 2), x] /; FreeQ[{b, c, d, e, f}, x] && LtQ[n, -1] && NeQ[n, -2] && GtQ[m, 1]
Int[((c_.) + (d_.)*(x_))^(m_.)*((a_) + (b_.)*sin[(e_.) + (f_.)*(x_)])^(n_.), x_Symbol] := Int[ExpandIntegrand[(c + d*x)^m, (a + b*Sin[e + f*x])^n, x], x] /; FreeQ[{a, b, c, d, e, f, m}, x] && IGtQ[n, 0] && (EqQ[n, 1] || IGtQ[m, 0] || NeQ[a^2 - b^2, 0])
Int[((c_.) + (d_.)*(x_))^(m_.)*((a_) + (b_.)*sin[(e_.) + (f_.)*(x_)])^(n_.), x_Symbol] := (2*a)^n*Int[(c + d*x)^m*Sin[(1/2)*(e + Pi*(a/(2*b))) + f*(x/2)]^(2*n), x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[n] && (GtQ[n, 0] || IGtQ[m, 0])
Int[((c_.) + (d_.)*(x_))^(m_.)*((a_) + (b_.)*sin[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := (2*a)^IntPart[n]*((a + b*Sin[e + f*x])^FracPart[n]/Sin[e/2 + a*(Pi/(4*b)) + f*(x/2)]^(2*FracPart[n]))*Int[(c + d*x)^m*Sin[e/2 + a*(Pi/(4*b)) + f*(x/2)]^(2*n), x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[n + 1/2] && (GtQ[n, 0] || IGtQ[m, 0])
Int[((c_.) + (d_.)*(x_))^(m_.)/((a_) + (b_.)*sin[(e_.) + (k_.)*Pi + (f_.)*(Complex[0, fz_])*(x_)]), x_Symbol] := 2*Int[((c + d*x)^m*(E^((-I)*e + f*fz*x)/(b + (2*a*E^((-I)*e + f*fz*x))/E^(I*Pi*(k - 1/2)) - (b*E^(2*((-I)*e + f*fz*x)))/E^(2*I*k*Pi))))/E^(I*Pi*(k - 1/2)), x] /; FreeQ[{a, b, c, d, e, f, fz}, x] && IntegerQ[2*k] && NeQ[a^2 - b^2, 0] && IGtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)/((a_) + (b_.)*sin[(e_.) + (k_.)*Pi + (f_.)*(x_)]), x_Symbol] := 2*Int[(c + d*x)^m*E^(I*Pi*(k - 1/2))*(E^(I*(e + f*x))/(b + 2*a*E^(I*Pi*(k - 1/2))*E^(I*(e + f*x)) - b*E^(2*I*k*Pi)*E^(2*I*(e + f*x)))), x] /; FreeQ[{a, b, c, d, e, f}, x] && IntegerQ[2*k] && NeQ[a^2 - b^2, 0] && IGtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)/((a_) + (b_.)*sin[(e_.) + (f_.)*(Complex[0, fz_])*(x_)]), x_Symbol] := 2*Int[(c + d*x)^m*(E^((-I)*e + f*fz*x)/((-I)*b + 2*a*E^((-I)*e + f*fz*x) + I*b*E^(2*((-I)*e + f*fz*x)))), x] /; FreeQ[{a, b, c, d, e, f, fz}, x] && NeQ[a^2 - b^2, 0] && IGtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)/((a_) + (b_.)*sin[(e_.) + (f_.)*(x_)]), x_Symbol] := 2*Int[(c + d*x)^m*(E^(I*(e + f*x))/(I*b + 2*a*E^(I*(e + f*x)) - I*b*E^(2*I*(e + f*x)))), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[a^2 - b^2, 0] && IGtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)/((a_) + (b_.)*sin[(e_.) + (f_.)*(x_)])^2, x_Symbol] := b*(c + d*x)^m*(Cos[e + f*x]/(f*(a^2 - b^2)*(a + b*Sin[e + f*x]))) + (a/(a^2 - b^2))*Int[(c + d*x)^m/(a + b*Sin[e + f*x]), x] - b*d*(m/(f*(a^2 - b^2)))*Int[(c + d*x)^(m - 1)*(Cos[e + f*x]/(a + b*Sin[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[a^2 - b^2, 0] && IGtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)*((a_) + (b_.)*sin[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := (-b)*(c + d*x)^m*Cos[e + f*x]*((a + b*Sin[e + f*x])^(n + 1)/(f*(n + 1)*(a^2 - b^2))) + (a/(a^2 - b^2))*Int[(c + d*x)^m*(a + b*Sin[e + f*x])^(n + 1), x] + b*d*(m/(f*(n + 1)*(a^2 - b^2)))*Int[(c + d*x)^(m - 1)*Cos[e + f*x]*(a + b*Sin[e + f*x])^(n + 1), x] - b*((n + 2)/((n + 1)*(a^2 - b^2)))*Int[(c + d*x)^m*Sin[e + f*x]*(a + b*Sin[e + f*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[a^2 - b^2, 0] && ILtQ[n, -2] && IGtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)*((a_.) + (b_.)*sin[(e_.) + (f_.)*(x_)])^(n_.), x_Symbol] := Unintegrable[(c + d*x)^m*(a + b*Sin[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, m, n}, x]
Int[(u_)^(m_.)*((a_.) + (b_.)*Sin[v_])^(n_.), x_Symbol] := Int[ExpandToSum[u, x]^m*(a + b*Sin[ExpandToSum[v, x]])^n, x] /; FreeQ[{a, b, m, n}, x] && LinearQ[{u, v}, x] &&  !LinearMatchQ[{u, v}, x]
Int[(u_)^(m_.)*((a_.) + (b_.)*Cos[v_])^(n_.), x_Symbol] := Int[ExpandToSum[u, x]^m*(a + b*Cos[ExpandToSum[v, x]])^n, x] /; FreeQ[{a, b, m, n}, x] && LinearQ[{u, v}, x] &&  !LinearMatchQ[{u, v}, x]