
(* ::Section:: *)
(* 8.6 Gamma functions *)

(* ::Subsection::Closed:: *)
(* 8.6 Gamma functions *)
Int[Gamma[n_, (a_.) + (b_.)*(x_)], x_Symbol] := (a + b*x)*(Gamma[n, a + b*x]/b) - Gamma[n + 1, a + b*x]/b /; FreeQ[{a, b, n}, x]
Int[Gamma[0, (b_.)*(x_)]/(x_), x_Symbol] := b*x*HypergeometricPFQ[{1, 1, 1}, {2, 2, 2}, (-b)*x] - EulerGamma*Log[x] - (1/2)*Log[b*x]^2 /; FreeQ[b, x]
Int[Gamma[n_, (b_.)*(x_)]/(x_), x_Symbol] := -Gamma[n - 1, b*x] + (n - 1)*Int[Gamma[n - 1, b*x]/x, x] /; FreeQ[b, x] && IGtQ[n, 1]
Int[Gamma[n_, (b_.)*(x_)]/(x_), x_Symbol] := Gamma[n, b*x]/n + (1/n)*Int[Gamma[n + 1, b*x]/x, x] /; FreeQ[b, x] && ILtQ[n, 0]
Int[Gamma[n_, (b_.)*(x_)]/(x_), x_Symbol] := Gamma[n]*Log[x] - ((b*x)^n/n^2)*HypergeometricPFQ[{n, n}, {1 + n, 1 + n}, (-b)*x] /; FreeQ[{b, n}, x] &&  !IntegerQ[n]
Int[((d_.)*(x_))^(m_.)*Gamma[n_, (b_.)*(x_)], x_Symbol] := (d*x)^(m + 1)*(Gamma[n, b*x]/(d*(m + 1))) - (d*x)^m*(Gamma[m + n + 1, b*x]/(b*(m + 1)*(b*x)^m)) /; FreeQ[{b, d, m, n}, x] && NeQ[m, -1]
Int[((c_) + (d_.)*(x_))^(m_.)*Gamma[n_, (a_) + (b_.)*(x_)], x_Symbol] := (1/b)*Subst[Int[(d*(x/b))^m*Gamma[n, x], x], x, a + b*x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[b*c - a*d, 0]
Int[Gamma[n_, (a_.) + (b_.)*(x_)]/((c_.) + (d_.)*(x_)), x_Symbol] := Int[(a + b*x)^(n - 1)/((c + d*x)*E^(a + b*x)), x] + (n - 1)*Int[Gamma[n - 1, a + b*x]/(c + d*x), x] /; FreeQ[{a, b, c, d}, x] && IGtQ[n, 1]
Int[((c_.) + (d_.)*(x_))^(m_.)*Gamma[n_, (a_.) + (b_.)*(x_)], x_Symbol] := Block[{$UseGamma = True}, (c + d*x)^(m + 1)*(Gamma[n, a + b*x]/(d*(m + 1))) + (b/(d*(m + 1)))*Int[(c + d*x)^(m + 1)*((a + b*x)^(n - 1)/E^(a + b*x)), x]] /; FreeQ[{a, b, c, d, m, n}, x] && (IGtQ[m, 0] || IGtQ[n, 0] || IntegersQ[m, n]) && NeQ[m, -1]
Int[((c_.) + (d_.)*(x_))^(m_.)*Gamma[n_, (a_.) + (b_.)*(x_)], x_Symbol] := Unintegrable[(c + d*x)^m*Gamma[n, a + b*x], x] /; FreeQ[{a, b, c, d, m, n}, x]
Int[LogGamma[(a_.) + (b_.)*(x_)], x_Symbol] := PolyGamma[-2, a + b*x]/b /; FreeQ[{a, b}, x]
Int[((c_.) + (d_.)*(x_))^(m_.)*LogGamma[(a_.) + (b_.)*(x_)], x_Symbol] := (c + d*x)^m*(PolyGamma[-2, a + b*x]/b) - d*(m/b)*Int[(c + d*x)^(m - 1)*PolyGamma[-2, a + b*x], x] /; FreeQ[{a, b, c, d}, x] && IGtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)*LogGamma[(a_.) + (b_.)*(x_)], x_Symbol] := Unintegrable[(c + d*x)^m*LogGamma[a + b*x], x] /; FreeQ[{a, b, c, d, m}, x]
Int[PolyGamma[n_, (a_.) + (b_.)*(x_)], x_Symbol] := PolyGamma[n - 1, a + b*x]/b /; FreeQ[{a, b, n}, x]
Int[((c_.) + (d_.)*(x_))^(m_.)*PolyGamma[n_, (a_.) + (b_.)*(x_)], x_Symbol] := (c + d*x)^m*(PolyGamma[n - 1, a + b*x]/b) - d*(m/b)*Int[(c + d*x)^(m - 1)*PolyGamma[n - 1, a + b*x], x] /; FreeQ[{a, b, c, d, n}, x] && GtQ[m, 0]
Int[((c_.) + (d_.)*(x_))^(m_.)*PolyGamma[n_, (a_.) + (b_.)*(x_)], x_Symbol] := (c + d*x)^(m + 1)*(PolyGamma[n, a + b*x]/(d*(m + 1))) - (b/(d*(m + 1)))*Int[(c + d*x)^(m + 1)*PolyGamma[n + 1, a + b*x], x] /; FreeQ[{a, b, c, d, n}, x] && LtQ[m, -1]
Int[((c_.) + (d_.)*(x_))^(m_.)*PolyGamma[n_, (a_.) + (b_.)*(x_)], x_Symbol] := Unintegrable[(c + d*x)^m*PolyGamma[n, a + b*x], x] /; FreeQ[{a, b, c, d, m, n}, x]
Int[Gamma[(a_.) + (b_.)*(x_)]^(n_.)*PolyGamma[0, (a_.) + (b_.)*(x_)], x_Symbol] := Gamma[a + b*x]^n/(b*n) /; FreeQ[{a, b, n}, x]
Int[((a_.) + (b_.)*(x_))!^(n_.)*PolyGamma[0, (c_.) + (b_.)*(x_)], x_Symbol] := (a + b*x)!^n/(b*n) /; FreeQ[{a, b, c, n}, x] && EqQ[c, a + 1]
Int[Gamma[p_, (d_.)*((a_.) + (b_.)*Log[(c_.)*(x_)^(n_.)])], x_Symbol] := x*Gamma[p, d*(a + b*Log[c*x^n])] + (b*d*n*Int[(d*(a + b*Log[c*x^n]))^(p - 1)/(c*x^n)^(b*d), x])/E^(a*d) /; FreeQ[{a, b, c, d, n, p}, x]
Int[Gamma[p_, (d_.)*((a_.) + (b_.)*Log[(c_.)*(x_)^(n_.)])]/(x_), x_Symbol] := (1/n)*Subst[Gamma[p, d*(a + b*x)], x, Log[c*x^n]] /; FreeQ[{a, b, c, d, n, p}, x]
Int[((e_.)*(x_))^(m_.)*Gamma[p_, (d_.)*((a_.) + (b_.)*Log[(c_.)*(x_)^(n_.)])], x_Symbol] := (e*x)^(m + 1)*(Gamma[p, d*(a + b*Log[c*x^n])]/(e*(m + 1))) + (b*d*n*((e*x)^(b*d*n)/((m + 1)*(c*x^n)^(b*d)))*Int[(e*x)^(m - b*d*n)*(d*(a + b*Log[c*x^n]))^(p - 1), x])/E^(a*d) /; FreeQ[{a, b, c, d, e, m, n, p}, x] && NeQ[m, -1]
Int[Gamma[p_, (f_.)*((a_.) + (b_.)*Log[(c_.)*((d_) + (e_.)*(x_))^(n_.)])], x_Symbol] := (1/e)*Subst[Int[Gamma[p, f*(a + b*Log[c*x^n])], x], x, d + e*x] /; FreeQ[{a, b, c, d, e, f, n, p}, x]
Int[((g_) + (h_.)*(x_))^(m_.)*Gamma[p_, (f_.)*((a_.) + (b_.)*Log[(c_.)*((d_) + (e_.)*(x_))^(n_.)])], x_Symbol] := (1/e)*Subst[Int[(g*(x/d))^m*Gamma[p, f*(a + b*Log[c*x^n])], x], x, d + e*x] /; FreeQ[{a, b, c, d, e, f, g, h, m, n, p}, x] && EqQ[e*g - d*h, 0]