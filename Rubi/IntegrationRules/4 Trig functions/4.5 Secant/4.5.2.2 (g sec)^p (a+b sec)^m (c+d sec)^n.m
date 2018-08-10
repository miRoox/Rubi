
(* ::Section:: *)
(* 4.5.2.2 (g sec)^p (a+b sec)^m (c+d sec)^n *)

(* ::Subsection::Closed:: *)
(* 4.5.2.2 (g sec)^p (a+b sec)^m (c+d sec)^n *)
Int[csc[(e_.) + (f_.)*(x_)]*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_.), x_Symbol] := b*Cot[e + f*x]*(a + b*Csc[e + f*x])^m*((c + d*Csc[e + f*x])^n/(a*f*(2*m + 1))) /; FreeQ[{a, b, c, d, e, f, m, n}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && EqQ[m + n + 1, 0] && NeQ[2*m + 1, 0]
Int[csc[(e_.) + (f_.)*(x_)]*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_.), x_Symbol] := b*Cot[e + f*x]*(a + b*Csc[e + f*x])^m*((c + d*Csc[e + f*x])^n/(a*f*(2*m + 1))) + ((m + n + 1)/(a*(2*m + 1)))*Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(c + d*Csc[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && ILtQ[m + n + 1, 0] && NeQ[2*m + 1, 0] &&  !LtQ[n, 0] &&  !(IGtQ[n + 1/2, 0] && LtQ[n + 1/2, -(m + n)])
Int[csc[(e_.) + (f_.)*(x_)]*(Sqrt[(c_) + (d_.)*csc[(e_.) + (f_.)*(x_)]]/Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]), x_Symbol] := a*c*Log[1 + (b/a)*Csc[e + f*x]]*(Cot[e + f*x]/(b*f*Sqrt[a + b*Csc[e + f*x]]*Sqrt[c + d*Csc[e + f*x]])) /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_.)*Sqrt[(c_) + (d_.)*csc[(e_.) + (f_.)*(x_)]], x_Symbol] := 2*a*c*Cot[e + f*x]*((a + b*Csc[e + f*x])^m/(b*f*(2*m + 1)*Sqrt[c + d*Csc[e + f*x]])) /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && NeQ[m, -2^(-1)]
Int[csc[(e_.) + (f_.)*(x_)]*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_.), x_Symbol] := 2*a*c*Cot[e + f*x]*(a + b*Csc[e + f*x])^m*((c + d*Csc[e + f*x])^(n - 1)/(b*f*(2*m + 1))) - d*((2*n - 1)/(b*(2*m + 1)))*Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(c + d*Csc[e + f*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IGtQ[n - 1/2, 0] && LtQ[m, -2^(-1)]
Int[csc[(e_.) + (f_.)*(x_)]*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_.)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := (-d)*Cot[e + f*x]*(a + b*Csc[e + f*x])^m*((c + d*Csc[e + f*x])^(n - 1)/(f*(m + n))) + c*((2*n - 1)/(m + n))*Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^m*(c + d*Csc[e + f*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IGtQ[n - 1/2, 0] &&  !LtQ[m, -2^(-1)] &&  !(IGtQ[m - 1/2, 0] && LtQ[m, n])
Int[csc[(e_.) + (f_.)*(x_)]*(((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_.)/Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]), x_Symbol] := -2*d*Cot[e + f*x]*((c + d*Csc[e + f*x])^(n - 1)/(f*(2*n - 1)*Sqrt[a + b*Csc[e + f*x]])) + 2*c*((2*n - 1)/(2*n - 1))*Int[Csc[e + f*x]*((c + d*Csc[e + f*x])^(n - 1)/Sqrt[a + b*Csc[e + f*x]]), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IGtQ[n, 0]
Int[csc[(e_.) + (f_.)*(x_)]*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_.), x_Symbol] := 2*a*c*Cot[e + f*x]*(a + b*Csc[e + f*x])^m*((c + d*Csc[e + f*x])^(n - 1)/(b*f*(2*m + 1))) - d*((2*n - 1)/(b*(2*m + 1)))*Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(c + d*Csc[e + f*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IGtQ[n, 0] && LtQ[m, -2^(-1)] && IntegerQ[2*m]
Int[csc[(e_.) + (f_.)*(x_)]*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_.)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_.), x_Symbol] := ((-a)*c)^m*Int[ExpandTrig[csc[e + f*x]*cot[e + f*x]^(2*m), (c + d*csc[e + f*x])^(n - m), x], x] /; FreeQ[{a, b, c, d, e, f, n}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IntegersQ[m, n] && GeQ[n - m, 0] && GtQ[m*n, 0]
Int[csc[(e_.) + (f_.)*(x_)]*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(m_), x_Symbol] := ((-a)*c)^(m + 1/2)*(Cot[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*Sqrt[c + d*Csc[e + f*x]]))*Int[Csc[e + f*x]*Cot[e + f*x]^(2*m), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IntegerQ[m + 1/2]
Int[csc[(e_.) + (f_.)*(x_)]*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := b*Cot[e + f*x]*(a + b*Csc[e + f*x])^m*((c + d*Csc[e + f*x])^n/(a*f*(2*m + 1))) + ((m + n + 1)/(a*(2*m + 1)))*Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(c + d*Csc[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, n}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && ((ILtQ[m, 0] && ILtQ[n - 1/2, 0]) || (ILtQ[m - 1/2, 0] && ILtQ[n - 1/2, 0] && LtQ[m, n]))
Int[csc[(e_.) + (f_.)*(x_)]*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_.)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := a*c*(Cot[e + f*x]/(f*Sqrt[a + b*Csc[e + f*x]]*Sqrt[c + d*Csc[e + f*x]]))*Subst[Int[(a + b*x)^(m - 1/2)*(c + d*x)^(n - 1/2), x], x, Csc[e + f*x]] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(p_.)*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_.)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_.), x_Symbol] := ((-a)*c)^m*Int[ExpandTrig[(g*csc[e + f*x])^p*cot[e + f*x]^(2*m), (c + d*csc[e + f*x])^(n - m), x], x] /; FreeQ[{a, b, c, d, e, f, g, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IntegersQ[m, n] && GeQ[n - m, 0] && GtQ[m*n, 0]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(p_.)*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(m_), x_Symbol] := ((-a)*c)^(m + 1/2)*(Cot[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*Sqrt[c + d*Csc[e + f*x]]))*Int[(g*Csc[e + f*x])^p*Cot[e + f*x]^(2*m), x] /; FreeQ[{a, b, c, d, e, f, g, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IntegerQ[m + 1/2]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(p_.)*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := a*c*g*(Cot[e + f*x]/(f*Sqrt[a + b*Csc[e + f*x]]*Sqrt[c + d*Csc[e + f*x]]))*Subst[Int[(g*x)^(p - 1)*(a + b*x)^(m - 1/2)*(c + d*x)^(n - 1/2), x], x, Csc[e + f*x]] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0]
Int[Sqrt[(g_.)*csc[(e_.) + (f_.)*(x_)]]*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := -2*b*(g/f)*Subst[Int[1/(b*c + a*d - c*g*x^2), x], x, b*(Cot[e + f*x]/(Sqrt[g*Csc[e + f*x]]*Sqrt[a + b*Csc[e + f*x]]))] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[b*c - a*d, 0] && EqQ[a^2 - b^2, 0]
Int[Sqrt[(g_.)*csc[(e_.) + (f_.)*(x_)]]*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (a/c)*Int[Sqrt[g*Csc[e + f*x]]/Sqrt[a + b*Csc[e + f*x]], x] + ((b*c - a*d)/(c*g))*Int[(g*Csc[e + f*x])^(3/2)/(Sqrt[a + b*Csc[e + f*x]]*(c + d*Csc[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := -2*(b/f)*Subst[Int[1/(b*c + a*d + d*x^2), x], x, b*(Cot[e + f*x]/Sqrt[a + b*Csc[e + f*x]])] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && EqQ[a^2 - b^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (-Sqrt[a + b*Csc[e + f*x]])*(Sqrt[c/(c + d*Csc[e + f*x])]/(d*f*Sqrt[c*d*((a + b*Csc[e + f*x])/((b*c + a*d)*(c + d*Csc[e + f*x])))]))*EllipticE[ArcSin[c*(Cot[e + f*x]/(c + d*Csc[e + f*x]))], -((b*c - a*d)/(b*c + a*d))] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0] && EqQ[c^2 - d^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (b/d)*Int[Csc[e + f*x]/Sqrt[a + b*Csc[e + f*x]], x] - ((b*c - a*d)/d)*Int[Csc[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*(c + d*Csc[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(3/2)*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (g/d)*Int[Sqrt[g*Csc[e + f*x]]*Sqrt[a + b*Csc[e + f*x]], x] - c*(g/d)*Int[Sqrt[g*Csc[e + f*x]]*(Sqrt[a + b*Csc[e + f*x]]/(c + d*Csc[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[b*c - a*d, 0] && EqQ[a^2 - b^2, 0]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(3/2)*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (b/d)*Int[(g*Csc[e + f*x])^(3/2)/Sqrt[a + b*Csc[e + f*x]], x] - ((b*c - a*d)/d)*Int[(g*Csc[e + f*x])^(3/2)/(Sqrt[a + b*Csc[e + f*x]]*(c + d*Csc[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (b/(b*c - a*d))*Int[Csc[e + f*x]/Sqrt[a + b*Csc[e + f*x]], x] - (d/(b*c - a*d))*Int[Csc[e + f*x]*(Sqrt[a + b*Csc[e + f*x]]/(c + d*Csc[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && (EqQ[a^2 - b^2, 0] || EqQ[c^2 - d^2, 0])
Int[csc[(e_.) + (f_.)*(x_)]/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := -2*(Cot[e + f*x]/(f*(c + d)*Sqrt[a + b*Csc[e + f*x]]*Sqrt[-Cot[e + f*x]^2]))*Sqrt[(a + b*Csc[e + f*x])/(a + b)]*EllipticPi[2*(d/(c + d)), ArcSin[Sqrt[1 - Csc[e + f*x]]/Sqrt[2]], 2*(b/(a + b))] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(3/2)/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (-a)*(g/(b*c - a*d))*Int[Sqrt[g*Csc[e + f*x]]/Sqrt[a + b*Csc[e + f*x]], x] + c*(g/(b*c - a*d))*Int[Sqrt[g*Csc[e + f*x]]*(Sqrt[a + b*Csc[e + f*x]]/(c + d*Csc[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[b*c - a*d, 0] && EqQ[a^2 - b^2, 0]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(3/2)/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := g*Sqrt[g*Csc[e + f*x]]*(Sqrt[b + a*Sin[e + f*x]]/Sqrt[a + b*Csc[e + f*x]])*Int[1/(Sqrt[b + a*Sin[e + f*x]]*(d + c*Sin[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]^2/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (-(a/(b*c - a*d)))*Int[Csc[e + f*x]/Sqrt[a + b*Csc[e + f*x]], x] + (c/(b*c - a*d))*Int[Csc[e + f*x]*(Sqrt[a + b*Csc[e + f*x]]/(c + d*Csc[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && (EqQ[a^2 - b^2, 0] || EqQ[c^2 - d^2, 0])
Int[csc[(e_.) + (f_.)*(x_)]^2/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (1/d)*Int[Csc[e + f*x]/Sqrt[a + b*Csc[e + f*x]], x] - (c/d)*Int[Csc[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*(c + d*Csc[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(5/2)/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (-c^2)*(g^2/(d*(b*c - a*d)))*Int[Sqrt[g*Csc[e + f*x]]*(Sqrt[a + b*Csc[e + f*x]]/(c + d*Csc[e + f*x])), x] + (g^2/(d*(b*c - a*d)))*Int[Sqrt[g*Csc[e + f*x]]*((a*c + (b*c - a*d)*Csc[e + f*x])/Sqrt[a + b*Csc[e + f*x]]), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[b*c - a*d, 0] && EqQ[a^2 - b^2, 0]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(5/2)/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])), x_Symbol] := (g/d)*Int[(g*Csc[e + f*x])^(3/2)/Sqrt[a + b*Csc[e + f*x]], x] - c*(g/d)*Int[(g*Csc[e + f*x])^(3/2)/(Sqrt[a + b*Csc[e + f*x]]*(c + d*Csc[e + f*x])), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/Sqrt[(c_) + (d_.)*csc[(e_.) + (f_.)*(x_)]]), x_Symbol] := -2*(b/f)*Subst[Int[1/(1 - b*d*x^2), x], x, Cot[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*Sqrt[c + d*Csc[e + f*x]])] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && EqQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/Sqrt[(c_) + (d_.)*csc[(e_.) + (f_.)*(x_)]]), x_Symbol] := (-((b*c - a*d)/d))*Int[Csc[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*Sqrt[c + d*Csc[e + f*x]]), x] + (b/d)*Int[Csc[e + f*x]*(Sqrt[c + d*Csc[e + f*x]]/Sqrt[a + b*Csc[e + f*x]]), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0] && EqQ[c^2 - d^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/Sqrt[(c_) + (d_.)*csc[(e_.) + (f_.)*(x_)]]), x_Symbol] := -2*((a + b*Csc[e + f*x])/(d*f*Sqrt[(a + b)/(c + d)]*Cot[e + f*x]))*Sqrt[(-(b*c - a*d))*((1 - Csc[e + f*x])/((c + d)*(a + b*Csc[e + f*x])))]*Sqrt[(b*c - a*d)*((1 + Csc[e + f*x])/((c - d)*(a + b*Csc[e + f*x])))]*EllipticPi[b*((c + d)/(d*(a + b))), ArcSin[Sqrt[(a + b)/(c + d)]*(Sqrt[c + d*Csc[e + f*x]]/Sqrt[a + b*Csc[e + f*x]])], (a - b)*((c + d)/((a + b)*(c - d)))] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*Sqrt[(c_) + (d_.)*csc[(e_.) + (f_.)*(x_)]]), x_Symbol] := -2*(a/(b*f))*Subst[Int[1/(2 + (a*c - b*d)*x^2), x], x, Cot[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*Sqrt[c + d*Csc[e + f*x]])] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && EqQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*Sqrt[(c_) + (d_.)*csc[(e_.) + (f_.)*(x_)]]), x_Symbol] := -2*((c + d*Csc[e + f*x])/(f*(b*c - a*d)*Rt[(c + d)/(a + b), 2]*Cot[e + f*x]))*Sqrt[(b*c - a*d)*((1 - Csc[e + f*x])/((a + b)*(c + d*Csc[e + f*x])))]*Sqrt[(-(b*c - a*d))*((1 + Csc[e + f*x])/((a - b)*(c + d*Csc[e + f*x])))]*EllipticF[ArcSin[Rt[(c + d)/(a + b), 2]*(Sqrt[a + b*Csc[e + f*x]]/Sqrt[c + d*Csc[e + f*x]])], (a + b)*((c - d)/((a - b)*(c + d)))] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0]
Int[csc[(e_.) + (f_.)*(x_)]^2/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*Sqrt[(c_) + (d_.)*csc[(e_.) + (f_.)*(x_)]]), x_Symbol] := (-(a/b))*Int[Csc[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*Sqrt[c + d*Csc[e + f*x]]), x] + (1/b)*Int[Csc[e + f*x]*(Sqrt[a + b*Csc[e + f*x]]/Sqrt[c + d*Csc[e + f*x]]), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0]
Int[csc[(e_.) + (f_.)*(x_)]*(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]/((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(3/2)), x_Symbol] := ((a - b)/(c - d))*Int[Csc[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*Sqrt[c + d*Csc[e + f*x]]), x] + ((b*c - a*d)/(c - d))*Int[Csc[e + f*x]*((1 + Csc[e + f*x])/(Sqrt[a + b*Csc[e + f*x]]*(c + d*Csc[e + f*x])^(3/2))), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(p_.)*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := a^2*g*(Cot[e + f*x]/(f*Sqrt[a + b*Csc[e + f*x]]*Sqrt[a - b*Csc[e + f*x]]))*Subst[Int[(g*x)^(p - 1)*(a + b*x)^(m - 1/2)*((c + d*x)^n/Sqrt[a - b*x]), x], x, Csc[e + f*x]] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && NeQ[b*c - a*d, 0] && EqQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0] && (EqQ[p, 1] || IntegerQ[m - 1/2])
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(p_.)*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := (1/g^(m + n))*Int[(g*Csc[e + f*x])^(m + n + p)*(b + a*Sin[e + f*x])^m*(d + c*Sin[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, g, p}, x] && NeQ[b*c - a*d, 0] && IntegerQ[m] && IntegerQ[n]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(p_.)*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := (g*Csc[e + f*x])^(m + p)*((c + d*Csc[e + f*x])^n/(g^m*(d + c*Sin[e + f*x])^n))*Int[(b + a*Sin[e + f*x])^m*(d + c*Sin[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, g, n, p}, x] && NeQ[b*c - a*d, 0] && EqQ[m + n + p, 0] && IntegerQ[m]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(p_.)*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := (g*Csc[e + f*x])^p*(a + b*Csc[e + f*x])^m*((c + d*Csc[e + f*x])^n/((b + a*Sin[e + f*x])^m*(d + c*Sin[e + f*x])^n))*Int[(b + a*Sin[e + f*x])^m*(d + c*Sin[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && NeQ[b*c - a*d, 0] && EqQ[m + n + p, 0] &&  !IntegerQ[m]
Int[csc[(e_.) + (f_.)*(x_)]^(p_.)*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := Sqrt[d + c*Sin[e + f*x]]*(Sqrt[a + b*Csc[e + f*x]]/(Sqrt[b + a*Sin[e + f*x]]*Sqrt[c + d*Csc[e + f*x]]))*Int[(b + a*Sin[e + f*x])^m*((d + c*Sin[e + f*x])^n/Sin[e + f*x]^(m + n + p)), x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && NeQ[b*c - a*d, 0] && IntegerQ[m - 1/2] && IntegerQ[n - 1/2] && IntegerQ[p] && LeQ[-2, m + n + p, -1]
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(p_.)*((a_) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := Int[ExpandTrig[(g*csc[e + f*x])^p*(a + b*csc[e + f*x])^m*(c + d*csc[e + f*x])^n, x], x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && NeQ[b*c - a*d, 0] && (IntegersQ[m, n] || IntegersQ[m, p] || IntegersQ[n, p])
Int[((g_.)*csc[(e_.) + (f_.)*(x_)])^(p_.)*((a_.) + (b_.)*csc[(e_.) + (f_.)*(x_)])^(m_)*((c_.) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(n_), x_Symbol] := Unintegrable[(g*Csc[e + f*x])^p*(a + b*Csc[e + f*x])^m*(c + d*Csc[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x]
Int[sec[(e_.) + (f_.)*(x_)]*(((A_) + (B_.)*sec[(e_.) + (f_.)*(x_)])/(Sqrt[(a_) + (b_.)*sec[(e_.) + (f_.)*(x_)]]*((c_) + (d_.)*sec[(e_.) + (f_.)*(x_)])^(3/2))), x_Symbol] := 2*A*(1 + Sec[e + f*x])*(Sqrt[(b*c - a*d)*((1 - Sec[e + f*x])/((a + b)*(c + d*Sec[e + f*x])))]/(f*(b*c - a*d)*Rt[(c + d)/(a + b), 2]*Tan[e + f*x]*Sqrt[(-(b*c - a*d))*((1 + Sec[e + f*x])/((a - b)*(c + d*Sec[e + f*x])))]))*EllipticE[ArcSin[Rt[(c + d)/(a + b), 2]*(Sqrt[a + b*Sec[e + f*x]]/Sqrt[c + d*Sec[e + f*x]])], (a + b)*((c - d)/((a - b)*(c + d)))] /; FreeQ[{a, b, c, d, e, f, A, B}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0] && EqQ[A, B]
Int[csc[(e_.) + (f_.)*(x_)]*(((A_) + (B_.)*csc[(e_.) + (f_.)*(x_)])/(Sqrt[(a_) + (b_.)*csc[(e_.) + (f_.)*(x_)]]*((c_) + (d_.)*csc[(e_.) + (f_.)*(x_)])^(3/2))), x_Symbol] := -2*A*(1 + Csc[e + f*x])*(Sqrt[(b*c - a*d)*((1 - Csc[e + f*x])/((a + b)*(c + d*Csc[e + f*x])))]/(f*(b*c - a*d)*Rt[(c + d)/(a + b), 2]*Cot[e + f*x]*Sqrt[(-(b*c - a*d))*((1 + Csc[e + f*x])/((a - b)*(c + d*Csc[e + f*x])))]))*EllipticE[ArcSin[Rt[(c + d)/(a + b), 2]*(Sqrt[a + b*Csc[e + f*x]]/Sqrt[c + d*Csc[e + f*x]])], (a + b)*((c - d)/((a - b)*(c + d)))] /; FreeQ[{a, b, c, d, e, f, A, B}, x] && NeQ[b*c - a*d, 0] && NeQ[a^2 - b^2, 0] && NeQ[c^2 - d^2, 0] && EqQ[A, B]