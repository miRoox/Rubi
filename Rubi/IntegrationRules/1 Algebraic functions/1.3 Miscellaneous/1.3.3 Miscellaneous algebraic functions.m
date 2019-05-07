
(* ::Subsection::Closed:: *)
(* 1.3.3 Miscellaneous algebraic functions *)
Int[u_/(e_.*Sqrt[a_. + b_.*x_] + f_.*Sqrt[c_. + d_.*x_]), x_Symbol, _:RubiNotebookReference["e32ca883"]] := c/(e*(b*c - a*d))*Int[(u*Sqrt[a + b*x])/x, x] - a/(f*(b*c - a*d))*Int[(u*Sqrt[c + d*x])/x, x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && EqQ[a*e^2 - c*f^2, 0]
Int[u_/(e_.*Sqrt[a_. + b_.*x_] + f_.*Sqrt[c_. + d_.*x_]), x_Symbol, _:RubiNotebookReference["e16a16da"]] := -d/(e*(b*c - a*d))*Int[u*Sqrt[a + b*x], x] + b/(f*(b*c - a*d))*Int[u*Sqrt[c + d*x], x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b*c - a*d, 0] && EqQ[b*e^2 - d*f^2, 0]
Int[u_/(e_.*Sqrt[a_. + b_.*x_] + f_.*Sqrt[c_. + d_.*x_]), x_Symbol, _:RubiNotebookReference["e0a87ced"]] := e*Int[(u*Sqrt[a + b*x])/(a*e^2 - c*f^2 + (b*e^2 - d*f^2)*x), x] - f*Int[(u*Sqrt[c + d*x])/(a*e^2 - c*f^2 + (b*e^2 - d*f^2)*x), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[a*e^2 - c*f^2, 0] && NeQ[b*e^2 - d*f^2, 0]
Int[u_./(d_.*x_^n_. + c_.*Sqrt[a_. + b_.*x_^p_.]), x_Symbol, _:RubiNotebookReference["e5e76a68"]] := -b/(a*d)*Int[u*x^n, x] + 1/(a*c)*Int[u*Sqrt[a + b*x^(2*n)], x] /; FreeQ[{a, b, c, d, n}, x] && EqQ[p, 2*n] && EqQ[b*c^2 - d^2, 0]
Int[x_^m_./(d_.*x_^n_. + c_.*Sqrt[a_. + b_.*x_^p_.]), x_Symbol, _:RubiNotebookReference["e425005f"]] := -d* Int[x^(m + n)/(a*c^2 + (b*c^2 - d^2)*x^(2*n)), x] + c*Int[(x^m*Sqrt[a + b*x^(2*n)])/(a*c^2 + (b*c^2 - d^2)*x^(2*n)), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[p, 2*n] && NeQ[b*c^2 - d^2, 0]
Int[1/((a_ + b_.*x_^3)*Sqrt[d_. + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["e663be06"]] := With[{r = Numerator[Rt[a/b, 3]], s = Denominator[Rt[a/b, 3]]}, r/(3*a)*Int[1/((r + s*x)*Sqrt[d + e*x + f*x^2]), x] + r/(3*a)* Int[(2*r - s*x)/((r^2 - r*s*x + s^2*x^2)*Sqrt[d + e*x + f*x^2]), x]] /; FreeQ[{a, b, d, e, f}, x] && PosQ[a/b]
Int[1/((a_ + b_.*x_^3)*Sqrt[d_. + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["e7a1d431"]] := With[{r = Numerator[Rt[a/b, 3]], s = Denominator[Rt[a/b, 3]]}, r/(3*a)*Int[1/((r + s*x)*Sqrt[d + f*x^2]), x] + r/(3*a)* Int[(2*r - s*x)/((r^2 - r*s*x + s^2*x^2)*Sqrt[d + f*x^2]), x]] /; FreeQ[{a, b, d, f}, x] && PosQ[a/b]
Int[1/((a_ + b_.*x_^3)*Sqrt[d_. + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["ecfd930c"]] := With[{r = Numerator[Rt[-a/b, 3]], s = Denominator[Rt[-a/b, 3]]}, r/(3*a)*Int[1/((r - s*x)*Sqrt[d + e*x + f*x^2]), x] + r/(3*a)* Int[(2*r + s*x)/((r^2 + r*s*x + s^2*x^2)*Sqrt[d + e*x + f*x^2]), x]] /; FreeQ[{a, b, d, e, f}, x] && NegQ[a/b]
Int[1/((a_ + b_.*x_^3)*Sqrt[d_. + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["ed3ff93b"]] := With[{r = Numerator[Rt[-a/b, 3]], s = Denominator[Rt[-a/b, 3]]}, r/(3*a)*Int[1/((r - s*x)*Sqrt[d + f*x^2]), x] + r/(3*a)* Int[(2*r + s*x)/((r^2 + r*s*x + s^2*x^2)*Sqrt[d + f*x^2]), x]] /; FreeQ[{a, b, d, f}, x] && NegQ[a/b]
Int[u_*(A_ + B_.*x_^4)/Sqrt[v_], x_Symbol, _:RubiNotebookReference["f3856485"]] := With[{a = Coeff[v, x, 0], b = Coeff[v, x, 2], c = Coeff[v, x, 4], d = Coeff[1/u, x, 0], e = Coeff[1/u, x, 2], f = Coeff[1/u, x, 4]}, A*Subst[Int[1/(d - (b*d - a*e)*x^2), x], x, x/Sqrt[v]] /; EqQ[a*B + A*c, 0] && EqQ[c*d - a*f, 0]] /; FreeQ[{A, B}, x] && PolyQ[v, x^2, 2] && PolyQ[1/u, x^2, 2]
Int[1/((a_ + b_.*x_)*Sqrt[c_ + d_.*x_^2]*Sqrt[e_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["f2470eb2"]] := a*Int[1/((a^2 - b^2*x^2)*Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] - b*Int[x/((a^2 - b^2*x^2)*Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x]
Int[(g_. + h_.*x_)* Sqrt[d_. + e_.*x_ + f_.*Sqrt[a_. + b_.*x_ + c_.*x_^2]], x_Symbol, _:RubiNotebookReference["f001b0eb"]] := 2*(f*(5*b*c*g^2 - 2*b^2*g*h - 3*a*c*g*h + 2*a*b*h^2) + c*f*(10*c*g^2 - b*g*h + a*h^2)*x + 9*c^2*f*g*h*x^2 + 3*c^2*f*h^2*x^3 - (e*g - d*h)*(5*c*g - 2*b*h + c*h*x)*Sqrt[a + b*x + c*x^2])/ (15*c^2*f*(g + h*x))*Sqrt[d + e*x + f*Sqrt[a + b*x + c*x^2]] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && EqQ[(e*g - d*h)^2 - f^2*(c*g^2 - b*g*h + a*h^2), 0] && EqQ[2*e^2*g - 2*d*e*h - f^2*(2*c*g - b*h), 0]
Int[(g_. + h_.*x_)^m_.*(u_ + f_.*(j_. + k_.*Sqrt[v_]))^n_., x_Symbol, _:RubiNotebookReference["f1c3dadc"]] := Int[(g + h*x)^ m*(ExpandToSum[u + f*j, x] + f*k*Sqrt[ExpandToSum[v, x]])^n, x] /; FreeQ[{f, g, h, j, k, m, n}, x] && LinearQ[u, x] && QuadraticQ[v, x] && Not[LinearMatchQ[u, x] && QuadraticMatchQ[v, x] && (EqQ[j, 0] || EqQ[f, 1])] && EqQ[(Coefficient[u, x, 1]*g - h*(Coefficient[u, x, 0] + f*j))^2 - f^2*k^2*(Coefficient[v, x, 2]*g^2 - Coefficient[v, x, 1]*g*h + Coefficient[v, x, 0]*h^2), 0]
(* Int[1/(d_.+e_.*x_+f_.*Sqrt[a_.+b_.*x_+c_.*x_^2]),x_Symbol] :=  Int[(d+e*x)/(d^2-a*f^2+(2*d*e-b*f^2)*x),x] - f*Int[Sqrt[a+b*x+c*x^2]/(d^2-a*f^2+(2*d*e-b*f^2)*x),x] /;  FreeQ[{a,b,c,d,e,f},x] && EqQ[e^2-c*f^2,0] *)
(* Int[1/(d_.+e_.*x_+f_.*Sqrt[a_.+c_.*x_^2]),x_Symbol] :=  Int[(d+e*x)/(d^2-a*f^2+2*d*e*x),x] - f*Int[Sqrt[a+c*x^2]/(d^2-a*f^2+2*d*e*x),x] /; FreeQ[{a,c,d,e,f},x] &&  EqQ[e^2-c*f^2,0] *)
Int[(g_. + h_.*(d_. + e_.*x_ + f_.*Sqrt[a_. + b_.*x_ + c_.*x_^2])^n_)^ p_., x_Symbol, _:RubiNotebookReference["f7081837"]] := 2*Subst[Int[(g + h*x^n)^ p*(d^2*e - (b*d - a*e)*f^2 - (2*d*e - b*f^2)*x + e*x^2)/(-2*d*e + b*f^2 + 2*e*x)^2, x], x, d + e*x + f*Sqrt[a + b*x + c*x^2]] /; FreeQ[{a, b, c, d, e, f, g, h, n}, x] && EqQ[e^2 - c*f^2, 0] && IntegerQ[p]
Int[(g_. + h_.*(d_. + e_.*x_ + f_.*Sqrt[a_ + c_.*x_^2])^n_)^p_., x_Symbol, _:RubiNotebookReference["f6ca7200"]] := 1/(2*e)*Subst[ Int[(g + h*x^n)^p*(d^2 + a*f^2 - 2*d*x + x^2)/(d - x)^2, x], x, d + e*x + f*Sqrt[a + c*x^2]] /; FreeQ[{a, c, d, e, f, g, h, n}, x] && EqQ[e^2 - c*f^2, 0] && IntegerQ[p]
Int[(g_. + h_.*(u_ + f_. Sqrt[v_])^n_)^p_., x_Symbol, _:RubiNotebookReference["fd96353d"]] := Int[(g + h*(ExpandToSum[u, x] + f*Sqrt[ExpandToSum[v, x]])^n)^p, x] /; FreeQ[{f, g, h, n}, x] && LinearQ[u, x] && QuadraticQ[v, x] && Not[LinearMatchQ[u, x] && QuadraticMatchQ[v, x]] && EqQ[Coefficient[u, x, 1]^2 - Coefficient[v, x, 2]*f^2, 0] && IntegerQ[p]
Int[(g_. + h_.*x_)^m_.*(e_.*x_ + f_.*Sqrt[a_. + c_.*x_^2])^n_., x_Symbol, _:RubiNotebookReference["fc545f0a"]] := 1/(2^(m + 1)*e^(m + 1))* Subst[Int[ x^(n - m - 2)*(a*f^2 + x^2)*(-a*f^2*h + 2*e*g*x + h*x^2)^m, x], x, e*x + f*Sqrt[a + c*x^2]] /; FreeQ[{a, c, e, f, g, h, n}, x] && EqQ[e^2 - c*f^2, 0] && IntegerQ[m]
Int[x_^p_.*(g_ + i_.*x_^2)^m_.*(e_.*x_ + f_.*Sqrt[a_ + c_.*x_^2])^n_., x_Symbol, _:RubiNotebookReference["e130cb6b"]] := 1/(2^(2*m + p + 1)*e^(p + 1)*f^(2*m))*(i/c)^m* Subst[Int[ x^(n - 2*m - p - 2)*(-a*f^2 + x^2)^p*(a*f^2 + x^2)^(2*m + 1), x], x, e*x + f*Sqrt[a + c*x^2]] /; FreeQ[{a, c, e, f, g, i, n}, x] && EqQ[e^2 - c*f^2, 0] && EqQ[c*g - a*i, 0] && IntegersQ[p, 2*m] && (IntegerQ[m] || GtQ[i/c, 0])
Int[(g_. + h_.*x_ + i_.*x_^2)^ m_.*(d_. + e_.*x_ + f_.*Sqrt[a_. + b_.*x_ + c_.*x_^2])^n_., x_Symbol, _:RubiNotebookReference["e0f2a15c"]] := 2/f^(2*m)*(i/c)^m* Subst[ Int[x^n*(d^2*e - (b*d - a*e)*f^2 - (2*d*e - b*f^2)*x + e*x^2)^(2*m + 1)/(-2*d*e + b*f^2 + 2*e*x)^(2*(m + 1)), x], x, d + e*x + f*Sqrt[a + b*x + c*x^2]] /; FreeQ[{a, b, c, d, e, f, g, h, i, n}, x] && EqQ[e^2 - c*f^2, 0] && EqQ[c*g - a*i, 0] && EqQ[c*h - b*i, 0] && IntegerQ[2*m] && (IntegerQ[m] || GtQ[i/c, 0])
Int[(g_ + i_.*x_^2)^m_.*(d_. + e_.*x_ + f_.*Sqrt[a_ + c_.*x_^2])^n_., x_Symbol, _:RubiNotebookReference["e2b41f05"]] := 1/(2^(2*m + 1)*e*f^(2*m))*(i/c)^m* Subst[ Int[x^n*(d^2 + a*f^2 - 2*d*x + x^2)^(2*m + 1)/(-d + x)^(2*(m + 1)), x], x, d + e*x + f*Sqrt[a + c*x^2]] /; FreeQ[{a, c, d, e, f, g, i, n}, x] && EqQ[e^2 - c*f^2, 0] && EqQ[c*g - a*i, 0] && IntegerQ[2*m] && (IntegerQ[m] || GtQ[i/c, 0])
Int[(g_. + h_.*x_ + i_.*x_^2)^ m_.*(d_. + e_.*x_ + f_.*Sqrt[a_. + b_.*x_ + c_.*x_^2])^n_., x_Symbol, _:RubiNotebookReference["e3767532"]] := (i/c)^(m - 1/2)* Sqrt[g + h*x + i*x^2]/Sqrt[a + b*x + c*x^2]* Int[(a + b*x + c*x^2)^m*(d + e*x + f*Sqrt[a + b*x + c*x^2])^n, x] /; FreeQ[{a, b, c, d, e, f, g, h, i, n}, x] && EqQ[e^2 - c*f^2, 0] && EqQ[c*g - a*i, 0] && EqQ[c*h - b*i, 0] && IGtQ[m + 1/2, 0] && Not[GtQ[i/c, 0]]
Int[(g_ + i_.*x_^2)^m_.*(d_. + e_.*x_ + f_.*Sqrt[a_ + c_.*x_^2])^n_., x_Symbol, _:RubiNotebookReference["e63963b7"]] := (i/c)^(m - 1/2)*Sqrt[g + i*x^2]/Sqrt[a + c*x^2]* Int[(a + c*x^2)^m*(d + e*x + f*Sqrt[a + c*x^2])^n, x] /; FreeQ[{a, c, d, e, f, g, i, n}, x] && EqQ[e^2 - c*f^2, 0] && EqQ[c*g - a*i, 0] && IGtQ[m + 1/2, 0] && Not[GtQ[i/c, 0]]
Int[(g_. + h_.*x_ + i_.*x_^2)^ m_.*(d_. + e_.*x_ + f_.*Sqrt[a_. + b_.*x_ + c_.*x_^2])^n_., x_Symbol, _:RubiNotebookReference["e7fb0980"]] := (i/c)^(m + 1/2)* Sqrt[a + b*x + c*x^2]/Sqrt[g + h*x + i*x^2]* Int[(a + b*x + c*x^2)^m*(d + e*x + f*Sqrt[a + b*x + c*x^2])^n, x] /; FreeQ[{a, b, c, d, e, f, g, h, i, n}, x] && EqQ[e^2 - c*f^2, 0] && EqQ[c*g - a*i, 0] && EqQ[c*h - b*i, 0] && ILtQ[m - 1/2, 0] && Not[GtQ[i/c, 0]]
Int[(g_ + i_.*x_^2)^m_.*(d_. + e_.*x_ + f_.*Sqrt[a_ + c_.*x_^2])^n_., x_Symbol, _:RubiNotebookReference["e5bdb7d9"]] := (i/c)^(m + 1/2)*Sqrt[a + c*x^2]/Sqrt[g + i*x^2]* Int[(a + c*x^2)^m*(d + e*x + f*Sqrt[a + c*x^2])^n, x] /; FreeQ[{a, c, d, e, f, g, i, n}, x] && EqQ[e^2 - c*f^2, 0] && EqQ[c*g - a*i, 0] && ILtQ[m - 1/2, 0] && Not[GtQ[i/c, 0]]
Int[w_^m_.*(u_ + f_.*(j_. + k_.*Sqrt[v_]))^n_., x_Symbol, _:RubiNotebookReference["e47fddee"]] := Int[ExpandToSum[w, x]^ m*(ExpandToSum[u + f*j, x] + f*k*Sqrt[ExpandToSum[v, x]])^n, x] /; FreeQ[{f, j, k, m, n}, x] && LinearQ[u, x] && QuadraticQ[{v, w}, x] && Not[LinearMatchQ[u, x] && QuadraticMatchQ[{v, w}, x] && (EqQ[j, 0] || EqQ[f, 1])] && EqQ[Coefficient[u, x, 1]^2 - Coefficient[v, x, 2]*f^2*k^2, 0]
Int[1/((a_ + b_.*x_^n_.)*Sqrt[c_.*x_^2 + d_.*(a_ + b_.*x_^n_.)^p_.]), x_Symbol, _:RubiNotebookReference["ef239ad3"]] := 1/a*Subst[Int[1/(1 - c*x^2), x], x, x/Sqrt[c*x^2 + d*(a + b*x^n)^(2/n)]] /; FreeQ[{a, b, c, d, n}, x] && EqQ[p, 2/n]
Int[Sqrt[a_ + b_.*Sqrt[c_ + d_.*x_^2]], x_Symbol, _:RubiNotebookReference["eee1f0e4"]] := 2*b^2*d*x^3/(3*(a + b*Sqrt[c + d*x^2])^(3/2)) + 2*a*x/Sqrt[a + b*Sqrt[c + d*x^2]] /; FreeQ[{a, b, c, d}, x] && EqQ[a^2 - b^2*c, 0]
Int[Sqrt[a_.*x_^2 + b_.*x_*Sqrt[c_ + d_.*x_^2]]/(x_* Sqrt[c_ + d_.*x_^2]), x_Symbol, _:RubiNotebookReference["598cac0e"]] := Sqrt[2]*b/a* Subst[Int[1/Sqrt[1 + x^2/a], x], x, a*x + b*Sqrt[c + d*x^2]] /; FreeQ[{a, b, c, d}, x] && EqQ[a^2 - b^2*d, 0] && EqQ[b^2*c + a, 0]
Int[Sqrt[e_.*x_*(a_.*x_ + b_.*Sqrt[c_ + d_.*x_^2])]/(x_* Sqrt[c_ + d_.*x_^2]), x_Symbol, _:RubiNotebookReference["584ec639"]] := Int[Sqrt[a*e*x^2 + b*e*x*Sqrt[c + d*x^2]]/(x*Sqrt[c + d*x^2]), x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[a^2 - b^2*d, 0] && EqQ[b^2*c*e + a, 0]
Int[Sqrt[c_.*x_^2 + d_.*Sqrt[a_ + b_.*x_^4]]/Sqrt[a_ + b_.*x_^4], x_Symbol, _:RubiNotebookReference["5a087860"]] := d*Subst[Int[1/(1 - 2*c*x^2), x], x, x/Sqrt[c*x^2 + d*Sqrt[a + b*x^4]]] /; FreeQ[{a, b, c, d}, x] && EqQ[c^2 - b*d^2, 0]
Int[(c_. + d_.*x_)^m_.* Sqrt[b_.*x_^2 + Sqrt[a_ + e_.*x_^4]]/Sqrt[a_ + e_.*x_^4], x_Symbol, _:RubiNotebookReference["5bca1257"]] := (1 - I)/2* Int[(c + d*x)^m/Sqrt[Sqrt[a] - I*b*x^2], x] + (1 + I)/2*Int[(c + d*x)^m/Sqrt[Sqrt[a] + I*b*x^2], x] /; FreeQ[{a, b, c, d, m}, x] && EqQ[e, b^2] && GtQ[a, 0]
Int[1/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["5e8504d2"]] := 2/(3*c)*Int[1/Sqrt[a + b*x^3], x] + 1/(3*c)*Int[(c - 2*d*x)/((c + d*x)*Sqrt[a + b*x^3]), x] /; FreeQ[{a, b, c, d}, x] && EqQ[b*c^3 - 4*a*d^3, 0]
Int[1/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["5f476ee5"]] := -6*a*d^3/(c*(b*c^3 - 28*a*d^3))* Int[1/Sqrt[a + b*x^3], x] + 1/(c*(b*c^3 - 28*a*d^3))* Int[Simp[c*(b*c^3 - 22*a*d^3) + 6*a*d^4*x, x]/((c + d*x)*Sqrt[a + b*x^3]), x] /; FreeQ[{a, b, c, d}, x] && EqQ[b^2*c^6 - 20*a*b*c^3*d^3 - 8*a^2*d^6, 0]
Int[1/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["5d01d0bc"]] := With[{q = Rt[b/a, 3]}, -q/((1 + Sqrt[3])*d - c*q)*Int[1/Sqrt[a + b*x^3], x] + d/((1 + Sqrt[3])*d - c*q)* Int[(1 + Sqrt[3] + q*x)/((c + d*x)*Sqrt[a + b*x^3]), x]] /; FreeQ[{a, b, c, d}, x] && NeQ[b^2*c^6 - 20*a*b*c^3*d^3 - 8*a^2*d^6, 0]
Int[(e_ + f_.*x_)/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["5cc3ba8b"]] := 2*e/d*Subst[Int[1/(1 + 3*a*x^2), x], x, (1 + 2*d*x/c)/Sqrt[a + b*x^3]] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[d*e - c*f, 0] && EqQ[b*c^3 - 4*a*d^3, 0] && EqQ[2*d*e + c*f, 0]
Int[(e_ + f_.*x_)/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["579ffdb6"]] := -2*e/d* Subst[Int[1/(9 - a*x^2), x], x, (1 + f*x/e)^2/Sqrt[a + b*x^3]] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[d*e - c*f, 0] && EqQ[b*c^3 + 8*a*d^3, 0] && EqQ[2*d*e + c*f, 0]
Int[(e_. + f_.*x_)/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["565d9781"]] := (2*d*e + c*f)/(3*c*d)*Int[1/Sqrt[a + b*x^3], x] + (d*e - c*f)/(3*c*d)* Int[(c - 2*d*x)/((c + d*x)*Sqrt[a + b*x^3]), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[d*e - c*f, 0] && (EqQ[b*c^3 - 4*a*d^3, 0] || EqQ[b*c^3 + 8*a*d^3, 0]) && NeQ[2*d*e + c*f, 0]
Int[(e_ + f_.*x_)/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["c45b94b7"]] := With[{k = Simplify[(d*e + 2*c*f)/(c*f)]}, (1 + k)*e/d* Subst[Int[1/(1 + (3 + 2*k)*a*x^2), x], x, (1 + (1 + k)*d*x/c)/Sqrt[a + b*x^3]]] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[d*e - c*f, 0] && EqQ[b^2*c^6 - 20*a*b*c^3*d^3 - 8*a^2*d^6, 0] && EqQ[6*a*d^4*e - c*f*(b*c^3 - 22*a*d^3), 0]
Int[(e_. + f_.*x_)/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["c599fe80"]] := -(6*a*d^4*e - c*f*(b*c^3 - 22*a*d^3))/(c* d*(b*c^3 - 28*a*d^3))*Int[1/Sqrt[a + b*x^3], x] + (d*e - c*f)/(c*d*(b*c^3 - 28*a*d^3))* Int[(c*(b*c^3 - 22*a*d^3) + 6*a*d^4*x)/((c + d*x)* Sqrt[a + b*x^3]), x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[d*e - c*f, 0] && EqQ[b^2*c^6 - 20*a*b*c^3*d^3 - 8*a^2*d^6, 0] && NeQ[6*a*d^4*e - c*f*(b*c^3 - 22*a*d^3), 0]
(* Int[(e_+f_.*x_)/((c_+d_.*x_)*Sqrt[a_+b_.*x_^3]),x_Symbol] :=  With[{q=(1+Sqrt[3])*f/e}, 4*3^(1/4)*Sqrt[2-Sqrt[3]]*f*(1+Sqrt[3]+q*x)^2*Sqrt[(1+q^3*x^3)/(1+ Sqrt[3]+q*x)^4]/(q*Sqrt[a+b*x^3])* Subst[Int[1/(((1-Sqrt[3])*d-c*q+((1+Sqrt[3])*d-c*q)*x)* Sqrt[7-4*Sqrt[3]-2*(3-2*Sqrt[3])*x^2-x^4]),x],x,(-1+Sqrt[3]-q*x) /(1+Sqrt[3]+q*x)]] /; FreeQ[{a,b,c,d,e,f},x] && NeQ[d*e-c*f,0] &&  EqQ[b*e^3-2*(5+3*Sqrt[3])*a*f^3,0] &&  NeQ[b*c^3-2*(5-3*Sqrt[3])*a*d^3,0] *)
Int[(e_ + f_.*x_)/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["c61d2aee"]] := With[{q = Simplify[(1 + Sqrt[3])*f/e]}, 4*3^(1/4)*Sqrt[2 - Sqrt[3]]*f*(1 + q*x)* Sqrt[(1 - q*x + q^2*x^2)/(1 + Sqrt[3] + q*x)^2]/ (q*Sqrt[a + b*x^3]*Sqrt[(1 + q*x)/(1 + Sqrt[3] + q*x)^2])* Subst[ Int[1/(((1 - Sqrt[3])*d - c*q + ((1 + Sqrt[3])*d - c*q)*x)* Sqrt[1 - x^2]*Sqrt[7 - 4*Sqrt[3] + x^2]), x], x, (-1 + Sqrt[3] - q*x)/(1 + Sqrt[3] + q*x)]] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[d*e - c*f, 0] && EqQ[b*e^3 - 2*(5 + 3*Sqrt[3])*a*f^3, 0] && NeQ[b*c^3 - 2*(5 - 3*Sqrt[3])*a*d^3, 0]
Int[(e_ + f_.*x_)/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["c3523c6b"]] := With[{q = Simplify[(-1 + Sqrt[3])*f/e]}, 4*3^(1/4)*Sqrt[2 + Sqrt[3]]*f*(1 - q*x)* Sqrt[(1 + q*x + q^2*x^2)/(1 - Sqrt[3] - q*x)^2]/ (q*Sqrt[a + b*x^3]*Sqrt[-(1 - q*x)/(1 - Sqrt[3] - q*x)^2])* Subst[ Int[1/(((1 + Sqrt[3])*d + c*q + ((1 - Sqrt[3])*d + c*q)*x)* Sqrt[1 - x^2]*Sqrt[7 + 4*Sqrt[3] + x^2]), x], x, (1 + Sqrt[3] - q*x)/(-1 + Sqrt[3] + q*x)]] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[d*e - c*f, 0] && EqQ[b*e^3 - 2*(5 - 3*Sqrt[3])*a*f^3, 0] && NeQ[b*c^3 - 2*(5 + 3*Sqrt[3])*a*d^3, 0]
Int[(e_. + f_.*x_)/((c_ + d_.*x_)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["c290565c"]] := With[{q = Rt[b/a, 3]}, ((1 + Sqrt[3])*f - e*q)/((1 + Sqrt[3])*d - c*q)* Int[1/Sqrt[a + b*x^3], x] + (d*e - c*f)/((1 + Sqrt[3])*d - c*q)* Int[(1 + Sqrt[3] + q*x)/((c + d*x)*Sqrt[a + b*x^3]), x]] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[d*e - c*f, 0] && NeQ[b^2*c^6 - 20*a*b*c^3*d^3 - 8*a^2*d^6, 0] && NeQ[b^2*e^6 - 20*a*b*e^3*f^3 - 8*a^2*f^6, 0]
Int[(f_ + g_.*x_ + h_.*x_^2)/((c_ + d_.*x_ + e_.*x_^2)* Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["c0d6e805"]] := -2*g*h* Subst[Int[1/(2*e*h - (b*d*f - 2*a*e*h)*x^2), x], x, (1 + 2*h*x/g)/Sqrt[a + b*x^3]] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b*d*f - 2*a*e*h, 0] && EqQ[b*g^3 - 8*a*h^3, 0] && EqQ[g^2 + 2*f*h, 0] && EqQ[b*d*f + b*c*g - 4*a*e*h, 0]
Int[(f_ + g_.*x_ + h_.*x_^2)/((c_ + e_.*x_^2)*Sqrt[a_ + b_.*x_^3]), x_Symbol, _:RubiNotebookReference["c1148232"]] := -g/e* Subst[Int[1/(1 + a*x^2), x], x, (1 + 2*h*x/g)/Sqrt[a + b*x^3]] /; FreeQ[{a, b, c, e, f, g, h}, x] && EqQ[b*g^3 - 8*a*h^3, 0] && EqQ[g^2 + 2*f*h, 0] && EqQ[b*c*g - 4*a*e*h, 0]
Int[Sqrt[a_ + b_.*x_^3]/(c_ + d_.*x_), x_Symbol, _:RubiNotebookReference["ca48c50f"]] := b/d*Int[x^2/Sqrt[a + b*x^3], x] + b*c/d^3*Int[(c - d*x)/Sqrt[a + b*x^3], x] /; FreeQ[{a, b, c, d}, x] && EqQ[b*c^3 - a*d^3, 0]
Int[Sqrt[a_ + b_.*x_^3]/(c_ + d_.*x_), x_Symbol, _:RubiNotebookReference["cb8aaf38"]] := b/d*Int[x^2/Sqrt[a + b*x^3], x] + b*c/d^3*Int[(c - d*x)/Sqrt[a + b*x^3], x] - (b*c^3 - a*d^3)/d^3*Int[1/((c + d*x)*Sqrt[a + b*x^3]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[b*c^3 - a*d^3, 0]
Int[1/((c_ + d_.*x_)*(a_ + b_.*x_^3)^(1/3)), x_Symbol, _:RubiNotebookReference["7ce7f3d2"]] := Sqrt[3]*ArcTan[(1 - 2^(1/3)*Rt[b, 3]*(c - d*x)/(d*(a + b*x^3)^(1/3)))/ Sqrt[3]]/(2^(4/3)*Rt[b, 3]*c) + Log[(c + d*x)^2*(c - d*x)]/(2^(7/3)*Rt[b, 3]*c) - (3*Log[ Rt[b, 3]*(c - d*x) + 2^(2/3)*d*(a + b*x^3)^(1/3)])/(2^(7/3)* Rt[b, 3]*c) /; FreeQ[{a, b, c, d}, x] && EqQ[b*c^3 + a*d^3, 0]
Int[1/((c_ + d_.*x_)*(a_ + b_.*x_^3)^(1/3)), x_Symbol, _:RubiNotebookReference["7d2599e5"]] := 1/(2*c)*Int[1/(a + b*x^3)^(1/3), x] + 1/(2*c)*Int[(c - d*x)/((c + d*x)*(a + b*x^3)^(1/3)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[2*b*c^3 - a*d^3, 0]
Int[(e_ + f_.*x_)/((c_ + d_.*x_)*(a_ + b_.*x_^3)^(1/3)), x_Symbol, _:RubiNotebookReference["7f6327bc"]] := Sqrt[3]*f* ArcTan[(1 + 2*Rt[b, 3]*(2*c + d*x)/(d*(a + b*x^3)^(1/3)))/ Sqrt[3]]/(Rt[b, 3]*d) + (f*Log[c + d*x])/(Rt[b, 3]*d) - (3*f*Log[Rt[b, 3]*(2*c + d*x) - d*(a + b*x^3)^(1/3)])/(2* Rt[b, 3]*d) /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[d*e + c*f, 0] && EqQ[2*b*c^3 - a*d^3, 0]
Int[(e_. + f_.*x_)/((c_. + d_.*x_)*(a_ + b_.*x_^3)^(1/3)), x_Symbol, _:RubiNotebookReference["7ea14d8b"]] := f/d*Int[1/(a + b*x^3)^(1/3), x] + (d*e - c*f)/d* Int[1/((c + d*x)*(a + b*x^3)^(1/3)), x] /; FreeQ[{a, b, c, d, e, f}, x]
Int[(a_ + b_.*x_^3)^(2/3)/(c_ + d_.*x_), x_Symbol, _:RubiNotebookReference["7bee5b0e"]] := (a + b*x^3)^(2/3)/(2*d) - b*c/d^2*Int[x/(a + b*x^3)^(1/3), x] + 1/d^2*Int[(a*d^2 + b*c^2*x)/((c + d*x)*(a + b*x^3)^(1/3)), x] /; FreeQ[{a, b, c, d}, x]
Int[1/((c_ + d_.*x_)*(a_ + b_.*x_^3)^(2/3)), x_Symbol, _:RubiNotebookReference["7a2c3139"]] := With[{q = Rt[b, 3]}, -d*ArcTan[(1 + 2*q*x/(a + b*x^3)^(1/3))/Sqrt[3]]/(2*Sqrt[3]*q^2* c^2) + Sqrt[3]*d* ArcTan[(1 + 2*q*(2*c + d*x)/(d*(a + b*x^3)^(1/3)))/Sqrt[3]]/(2* q^2*c^2) - d*Log[c + d*x]/(2*q^2*c^2) - d*Log[q*x - (a + b*x^3)^(1/3)]/(4*q^2*c^2) + 3*d*Log[q*(2*c + d*x) - d*(a + b*x^3)^(1/3)]/(4*q^2*c^2)] /; FreeQ[{a, b, c, d}, x] && EqQ[2*b*c^3 - a*d^3, 0]
Int[x_^m_.*Px_*(c_ + d_.*x_)^q_*(a_ + b_.*x_^3)^p_., x_Symbol, _:RubiNotebookReference["786a8f60"]] := Int[ExpandIntegrand[(c^3 + d^3*x^3)^q*(a + b*x^3)^p, x^m*Px/(c^2 - c*d*x + d^2*x^2)^q, x], x] /; FreeQ[{a, b, c, d, m, p}, x] && PolyQ[Px, x] && ILtQ[q, 0] && IntegerQ[m] && RationalQ[p] && EqQ[Denominator[p], 3]
Int[Px_.*(c_ + d_.*x_)^q_*(a_ + b_.*x_^3)^p_., x_Symbol, _:RubiNotebookReference["79a8e557"]] := Int[ExpandIntegrand[(c^3 + d^3*x^3)^q*(a + b*x^3)^p, Px/(c^2 - c*d*x + d^2*x^2)^q, x], x] /; FreeQ[{a, b, c, d, p}, x] && PolyQ[Px, x] && ILtQ[q, 0] && RationalQ[p] && EqQ[Denominator[p], 3]
Int[x_^m_.*Px_*(c_ + d_.*x_ + e_.*x_^2)^q_*(a_ + b_.*x_^3)^p_., x_Symbol, _:RubiNotebookReference["72f4a26a"]] := 1/c^q*Int[ ExpandIntegrand[(c^3 - d^3*x^3)^q*(a + b*x^3)^p, x^m*Px/(c - d*x)^q, x], x] /; FreeQ[{a, b, c, d, e, m, p}, x] && PolyQ[Px, x] && EqQ[d^2 - c*e, 0] && ILtQ[q, 0] && IntegerQ[m] && RationalQ[p] && EqQ[Denominator[p], 3]
Int[Px_.*(c_ + d_.*x_ + e_.*x_^2)^q_*(a_ + b_.*x_^3)^p_., x_Symbol, _:RubiNotebookReference["7336c85d"]] := 1/c^q*Int[ ExpandIntegrand[(c^3 - d^3*x^3)^q*(a + b*x^3)^p, Px/(c - d*x)^q, x], x] /; FreeQ[{a, b, c, d, e, p}, x] && PolyQ[Px, x] && EqQ[d^2 - c*e, 0] && ILtQ[q, 0] && RationalQ[p] && EqQ[Denominator[p], 3]
Int[(c_ + d_.*x_^n_.)^q_*(a_ + b_.*x_^nn_.)^p_, x_Symbol, _:RubiNotebookReference["6e525c3c"]] := Int[ExpandIntegrand[(a + b*x^nn)^ p, (c/(c^2 - d^2*x^(2*n)) - d*x^n/(c^2 - d^2*x^(2*n)))^(-q), x], x] /; FreeQ[{a, b, c, d, n, nn, p}, x] && Not[IntegerQ[p]] && ILtQ[q, 0] && IGtQ[Log[2, nn/n], 0]
Int[(e_.*x_)^m_.*(c_ + d_.*x_^n_.)^q_*(a_ + b_.*x_^nn_.)^p_, x_Symbol, _:RubiNotebookReference["6f90360b"]] := (e*x)^m/x^m* Int[ExpandIntegrand[ x^m*(a + b*x^nn)^ p, (c/(c^2 - d^2*x^(2*n)) - d*x^n/(c^2 - d^2*x^(2*n)))^(-q), x], x] /; FreeQ[{a, b, c, d, e, m, n, nn, p}, x] && Not[IntegerQ[p]] && ILtQ[q, 0] && IGtQ[Log[2, nn/n], 0]
Int[x_^m_./(c_ + d_.*x_^n_ + e_.*Sqrt[a_ + b_.*x_^n_]), x_Symbol, _:RubiNotebookReference["6dd68852"]] := 1/n*Subst[Int[x^((m + 1)/n - 1)/(c + d*x + e*Sqrt[a + b*x]), x], x, x^n] /; FreeQ[{a, b, c, d, e, m, n}, x] && EqQ[b*c - a*d, 0] && IntegerQ[(m + 1)/n]
Int[u_./(c_ + d_.*x_^n_ + e_.*Sqrt[a_ + b_.*x_^n_]), x_Symbol, _:RubiNotebookReference["6c14e265"]] := c*Int[u/(c^2 - a*e^2 + c*d*x^n), x] - a*e*Int[u/((c^2 - a*e^2 + c*d*x^n)*Sqrt[a + b*x^n]), x] /; FreeQ[{a, b, c, d, e, n}, x] && EqQ[b*c - a*d, 0]
