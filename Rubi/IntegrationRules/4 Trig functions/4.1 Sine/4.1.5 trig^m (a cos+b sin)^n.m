
(* ::Section:: *)
(* 4.1.5 trig^m (a cos+b sin)^n *)

(* ::Subsection::Closed:: *)
(* 4.1.5 trig^m (a cos+b sin)^n *)
Int[((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := a*((a*Cos[c + d*x] + b*Sin[c + d*x])^n/(b*d*n)) /; FreeQ[{a, b, c, d, n}, x] && EqQ[a^2 + b^2, 0]
Int[((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (-d^(-1))*Subst[Int[(a^2 + b^2 - x^2)^((n - 1)/2), x], x, b*Cos[c + d*x] - a*Sin[c + d*x]] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && IGtQ[(n - 1)/2, 0]
Int[((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (-(b*Cos[c + d*x] - a*Sin[c + d*x]))*((a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1)/(d*n)) + (n - 1)*((a^2 + b^2)/n)*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 2), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] &&  !IntegerQ[(n - 1)/2] && GtQ[n, 1]
Int[1/((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)]), x_Symbol] := (-d^(-1))*Subst[Int[1/(a^2 + b^2 - x^2), x], x, b*Cos[c + d*x] - a*Sin[c + d*x]] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0]
Int[1/((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^2, x_Symbol] := Sin[c + d*x]/(a*d*(a*Cos[c + d*x] + b*Sin[c + d*x])) /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0]
Int[((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (b*Cos[c + d*x] - a*Sin[c + d*x])*((a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 1)/(d*(n + 1)*(a^2 + b^2))) + ((n + 2)/((n + 1)*(a^2 + b^2)))*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 2), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && LtQ[n, -1] && NeQ[n, -2]
Int[((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (a^2 + b^2)^(n/2)*Int[Cos[c + d*x - ArcTan[a, b]]^n, x] /; FreeQ[{a, b, c, d, n}, x] &&  !(GeQ[n, 1] || LeQ[n, -1]) && GtQ[a^2 + b^2, 0]
Int[((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := ((a*Cos[c + d*x] + b*Sin[c + d*x])^n/((a*Cos[c + d*x] + b*Sin[c + d*x])/Sqrt[a^2 + b^2])^n)*Int[Cos[c + d*x - ArcTan[a, b]]^n, x] /; FreeQ[{a, b, c, d, n}, x] &&  !(GeQ[n, 1] || LeQ[n, -1]) &&  !(GtQ[a^2 + b^2, 0] || EqQ[a^2 + b^2, 0])
Int[sin[(c_.) + (d_.)*(x_)]^(m_)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (-a)*((a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1)/(d*(n - 1)*Sin[c + d*x]^(n - 1))) + 2*b*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1)/Sin[c + d*x]^(n - 1), x] /; FreeQ[{a, b, c, d}, x] && EqQ[m + n, 0] && EqQ[a^2 + b^2, 0] && GtQ[n, 1]
Int[cos[(c_.) + (d_.)*(x_)]^(m_)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := b*((a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1)/(d*(n - 1)*Cos[c + d*x]^(n - 1))) + 2*a*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1)/Cos[c + d*x]^(n - 1), x] /; FreeQ[{a, b, c, d}, x] && EqQ[m + n, 0] && EqQ[a^2 + b^2, 0] && GtQ[n, 1]
Int[sin[(c_.) + (d_.)*(x_)]^(m_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := a*((a*Cos[c + d*x] + b*Sin[c + d*x])^n/(2*b*d*n*Sin[c + d*x]^n)) + (1/(2*b))*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 1)/Sin[c + d*x]^(n + 1), x] /; FreeQ[{a, b, c, d}, x] && EqQ[m + n, 0] && EqQ[a^2 + b^2, 0] && LtQ[n, 0]
Int[cos[(c_.) + (d_.)*(x_)]^(m_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (-b)*((a*Cos[c + d*x] + b*Sin[c + d*x])^n/(2*a*d*n*Cos[c + d*x]^n)) + (1/(2*a))*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 1)/Cos[c + d*x]^(n + 1), x] /; FreeQ[{a, b, c, d}, x] && EqQ[m + n, 0] && EqQ[a^2 + b^2, 0] && LtQ[n, 0]
Int[sin[(c_.) + (d_.)*(x_)]^(m_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := a*((a*Cos[c + d*x] + b*Sin[c + d*x])^n/(2*b*d*n*Sin[c + d*x]^n))*Hypergeometric2F1[1, n, n + 1, (b + a*Cot[c + d*x])/(2*b)] /; FreeQ[{a, b, c, d, n}, x] && EqQ[m + n, 0] && EqQ[a^2 + b^2, 0] &&  !IntegerQ[n]
Int[cos[(c_.) + (d_.)*(x_)]^(m_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (-b)*((a*Cos[c + d*x] + b*Sin[c + d*x])^n/(2*a*d*n*Cos[c + d*x]^n))*Hypergeometric2F1[1, n, n + 1, (a + b*Tan[c + d*x])/(2*a)] /; FreeQ[{a, b, c, d, n}, x] && EqQ[m + n, 0] && EqQ[a^2 + b^2, 0] &&  !IntegerQ[n]
Int[sin[(c_.) + (d_.)*(x_)]^(m_)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_.), x_Symbol] := Int[(b + a*Cot[c + d*x])^n, x] /; FreeQ[{a, b, c, d}, x] && EqQ[m + n, 0] && IntegerQ[n] && NeQ[a^2 + b^2, 0]
Int[cos[(c_.) + (d_.)*(x_)]^(m_)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_.), x_Symbol] := Int[(a + b*Tan[c + d*x])^n, x] /; FreeQ[{a, b, c, d}, x] && EqQ[m + n, 0] && IntegerQ[n] && NeQ[a^2 + b^2, 0]
Int[sin[(c_.) + (d_.)*(x_)]^(m_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (1/d)*Subst[Int[x^m*((a + b*x)^n/(1 + x^2)^((m + n + 2)/2)), x], x, Tan[c + d*x]] /; FreeQ[{a, b, c, d}, x] && IntegerQ[n] && IntegerQ[(m + n)/2] && NeQ[n, -1] &&  !(GtQ[n, 0] && GtQ[m, 1])
Int[cos[(c_.) + (d_.)*(x_)]^(m_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (-d^(-1))*Subst[Int[x^m*((b + a*x)^n/(1 + x^2)^((m + n + 2)/2)), x], x, Cot[c + d*x]] /; FreeQ[{a, b, c, d}, x] && IntegerQ[n] && IntegerQ[(m + n)/2] && NeQ[n, -1] &&  !(GtQ[n, 0] && GtQ[m, 1])
Int[sin[(c_.) + (d_.)*(x_)]^(m_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_.), x_Symbol] := Int[ExpandTrig[sin[c + d*x]^m*(a*cos[c + d*x] + b*sin[c + d*x])^n, x], x] /; FreeQ[{a, b, c, d}, x] && IntegerQ[m] && IGtQ[n, 0]
Int[cos[(c_.) + (d_.)*(x_)]^(m_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_.), x_Symbol] := Int[ExpandTrig[cos[c + d*x]^m*(a*cos[c + d*x] + b*sin[c + d*x])^n, x], x] /; FreeQ[{a, b, c, d}, x] && IntegerQ[m] && IGtQ[n, 0]
Int[sin[(c_.) + (d_.)*(x_)]^(m_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := a^n*b^n*Int[Sin[c + d*x]^m/(b*Cos[c + d*x] + a*Sin[c + d*x])^n, x] /; FreeQ[{a, b, c, d, m}, x] && EqQ[a^2 + b^2, 0] && ILtQ[n, 0]
Int[cos[(c_.) + (d_.)*(x_)]^(m_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := a^n*b^n*Int[Cos[c + d*x]^m/(b*Cos[c + d*x] + a*Sin[c + d*x])^n, x] /; FreeQ[{a, b, c, d, m}, x] && EqQ[a^2 + b^2, 0] && ILtQ[n, 0]
Int[((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_)/sin[(c_.) + (d_.)*(x_)], x_Symbol] := a*((a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1)/(d*(n - 1))) + b*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1), x] + a^2*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 2)/Sin[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && LtQ[n, -1]
Int[((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_)/cos[(c_.) + (d_.)*(x_)], x_Symbol] := (-b)*((a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1)/(d*(n - 1))) + a*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1), x] + b^2*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 2)/Cos[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && LtQ[n, -1]
Int[sin[(c_.) + (d_.)*(x_)]^(m_)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (-(a^2 + b^2))*Int[Sin[c + d*x]^(m + 2)*(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 2), x] + 2*b*Int[Sin[c + d*x]^(m + 1)*(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1), x] + a^2*Int[Sin[c + d*x]^m*(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 2), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && GtQ[n, 1] && LtQ[m, -1]
Int[cos[(c_.) + (d_.)*(x_)]^(m_)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := (-(a^2 + b^2))*Int[Cos[c + d*x]^(m + 2)*(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 2), x] + 2*a*Int[Cos[c + d*x]^(m + 1)*(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 1), x] + b^2*Int[Cos[c + d*x]^m*(a*Cos[c + d*x] + b*Sin[c + d*x])^(n - 2), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && GtQ[n, 1] && LtQ[m, -1]
Int[sin[(c_.) + (d_.)*(x_)]/((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)]), x_Symbol] := b*(x/(a^2 + b^2)) - (a/(a^2 + b^2))*Int[(b*Cos[c + d*x] - a*Sin[c + d*x])/(a*Cos[c + d*x] + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0]
Int[cos[(c_.) + (d_.)*(x_)]/((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)]), x_Symbol] := a*(x/(a^2 + b^2)) + (b/(a^2 + b^2))*Int[(b*Cos[c + d*x] - a*Sin[c + d*x])/(a*Cos[c + d*x] + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0]
Int[sin[(c_.) + (d_.)*(x_)]^(m_)/((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)]), x_Symbol] := (-a)*(Sin[c + d*x]^(m - 1)/(d*(a^2 + b^2)*(m - 1))) + (b/(a^2 + b^2))*Int[Sin[c + d*x]^(m - 1), x] + (a^2/(a^2 + b^2))*Int[Sin[c + d*x]^(m - 2)/(a*Cos[c + d*x] + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && GtQ[m, 1]
Int[cos[(c_.) + (d_.)*(x_)]^(m_)/((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)]), x_Symbol] := b*(Cos[c + d*x]^(m - 1)/(d*(a^2 + b^2)*(m - 1))) + (a/(a^2 + b^2))*Int[Cos[c + d*x]^(m - 1), x] + (b^2/(a^2 + b^2))*Int[Cos[c + d*x]^(m - 2)/(a*Cos[c + d*x] + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && GtQ[m, 1]
Int[1/(sin[(c_.) + (d_.)*(x_)]*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])), x_Symbol] := (1/a)*Int[Cot[c + d*x], x] - (1/a)*Int[(b*Cos[c + d*x] - a*Sin[c + d*x])/(a*Cos[c + d*x] + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0]
Int[1/(cos[(c_.) + (d_.)*(x_)]*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])), x_Symbol] := (1/b)*Int[Tan[c + d*x], x] + (1/b)*Int[(b*Cos[c + d*x] - a*Sin[c + d*x])/(a*Cos[c + d*x] + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0]
Int[sin[(c_.) + (d_.)*(x_)]^(m_)/((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)]), x_Symbol] := Sin[c + d*x]^(m + 1)/(a*d*(m + 1)) - (b/a^2)*Int[Sin[c + d*x]^(m + 1), x] + ((a^2 + b^2)/a^2)*Int[Sin[c + d*x]^(m + 2)/(a*Cos[c + d*x] + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && LtQ[m, -1]
Int[cos[(c_.) + (d_.)*(x_)]^(m_)/((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)]), x_Symbol] := -(Cos[c + d*x]^(m + 1)/(b*d*(m + 1))) - (a/b^2)*Int[Cos[c + d*x]^(m + 1), x] + ((a^2 + b^2)/b^2)*Int[Cos[c + d*x]^(m + 2)/(a*Cos[c + d*x] + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && LtQ[m, -1]
Int[((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_)/sin[(c_.) + (d_.)*(x_)], x_Symbol] := -((a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 1)/(a*d*(n + 1))) - (b/a^2)*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 1), x] + (1/a^2)*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 2)/Sin[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && LtQ[n, -1]
Int[((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_)/cos[(c_.) + (d_.)*(x_)], x_Symbol] := (a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 1)/(b*d*(n + 1)) - (a/b^2)*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 1), x] + (1/b^2)*Int[(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 2)/Cos[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && LtQ[n, -1]
Int[sin[(c_.) + (d_.)*(x_)]^(m_)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := ((a^2 + b^2)/a^2)*Int[Sin[c + d*x]^(m + 2)*(a*Cos[c + d*x] + b*Sin[c + d*x])^n, x] - 2*(b/a^2)*Int[Sin[c + d*x]^(m + 1)*(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 1), x] + (1/a^2)*Int[Sin[c + d*x]^m*(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 2), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && LtQ[n, -1] && LtQ[m, -1]
Int[cos[(c_.) + (d_.)*(x_)]^(m_)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(n_), x_Symbol] := ((a^2 + b^2)/b^2)*Int[Cos[c + d*x]^(m + 2)*(a*Cos[c + d*x] + b*Sin[c + d*x])^n, x] - 2*(a/b^2)*Int[Cos[c + d*x]^(m + 1)*(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 1), x] + (1/b^2)*Int[Cos[c + d*x]^m*(a*Cos[c + d*x] + b*Sin[c + d*x])^(n + 2), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && LtQ[n, -1] && LtQ[m, -1]
Int[cos[(c_.) + (d_.)*(x_)]^(m_.)*sin[(c_.) + (d_.)*(x_)]^(n_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(p_.), x_Symbol] := Int[ExpandTrig[cos[c + d*x]^m*sin[c + d*x]^n*(a*cos[c + d*x] + b*sin[c + d*x])^p, x], x] /; FreeQ[{a, b, c, d, m, n}, x] && IGtQ[p, 0]
Int[cos[(c_.) + (d_.)*(x_)]^(m_.)*sin[(c_.) + (d_.)*(x_)]^(n_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(p_), x_Symbol] := a^p*b^p*Int[(Cos[c + d*x]^m*Sin[c + d*x]^n)/(b*Cos[c + d*x] + a*Sin[c + d*x])^p, x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[a^2 + b^2, 0] && ILtQ[p, 0]
Int[cos[(c_.) + (d_.)*(x_)]^(m_.)*(sin[(c_.) + (d_.)*(x_)]^(n_.)/((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])), x_Symbol] := (b/(a^2 + b^2))*Int[Cos[c + d*x]^m*Sin[c + d*x]^(n - 1), x] + (a/(a^2 + b^2))*Int[Cos[c + d*x]^(m - 1)*Sin[c + d*x]^n, x] - a*(b/(a^2 + b^2))*Int[Cos[c + d*x]^(m - 1)*(Sin[c + d*x]^(n - 1)/(a*Cos[c + d*x] + b*Sin[c + d*x])), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && IGtQ[m, 0] && IGtQ[n, 0]
Int[cos[(c_.) + (d_.)*(x_)]^(m_.)*(sin[(c_.) + (d_.)*(x_)]^(n_.)/((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])), x_Symbol] := Int[ExpandTrig[cos[c + d*x]^m*(sin[c + d*x]^n/(a*cos[c + d*x] + b*sin[c + d*x])), x], x] /; FreeQ[{a, b, c, d, m, n}, x] && IntegersQ[m, n]
Int[cos[(c_.) + (d_.)*(x_)]^(m_.)*sin[(c_.) + (d_.)*(x_)]^(n_.)*((a_.)*cos[(c_.) + (d_.)*(x_)] + (b_.)*sin[(c_.) + (d_.)*(x_)])^(p_), x_Symbol] := (b/(a^2 + b^2))*Int[Cos[c + d*x]^m*Sin[c + d*x]^(n - 1)*(a*Cos[c + d*x] + b*Sin[c + d*x])^(p + 1), x] + (a/(a^2 + b^2))*Int[Cos[c + d*x]^(m - 1)*Sin[c + d*x]^n*(a*Cos[c + d*x] + b*Sin[c + d*x])^(p + 1), x] - a*(b/(a^2 + b^2))*Int[Cos[c + d*x]^(m - 1)*Sin[c + d*x]^(n - 1)*(a*Cos[c + d*x] + b*Sin[c + d*x])^p, x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && IGtQ[m, 0] && IGtQ[n, 0] && ILtQ[p, 0]