
(* ::Subsection::Closed:: *)
(* 4.1.1.2 (g cos)^p (a+b sin)^m *)
Int[cos[e_. + f_.*x_]^p_.*(a_ + b_.*sin[e_. + f_.*x_])^m_., x_Symbol, _:RubiNotebookReference["d53a4695"]] := 1/(b^p*f)* Subst[Int[(a + x)^(m + (p - 1)/2)*(a - x)^((p - 1)/2), x], x, b*Sin[e + f*x]] /; FreeQ[{a, b, e, f, m}, x] && IntegerQ[(p - 1)/2] && EqQ[a^2 - b^2, 0] && (GeQ[p, -1] || Not[IntegerQ[m + 1/2]])
Int[cos[e_. + f_.*x_]^p_.*(a_ + b_.*sin[e_. + f_.*x_])^m_., x_Symbol, _:RubiNotebookReference["d77cf8cc"]] := 1/(b^p*f)* Subst[Int[(a + x)^m*(b^2 - x^2)^((p - 1)/2), x], x, b*Sin[e + f*x]] /; FreeQ[{a, b, e, f, m}, x] && IntegerQ[(p - 1)/2] && NeQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol, _:RubiNotebookReference["d6be92fb"]] := -b*(g*Cos[e + f*x])^(p + 1)/(f*g*(p + 1)) + a*Int[(g*Cos[e + f*x])^p, x] /; FreeQ[{a, b, e, f, g, p}, x] && (IntegerQ[2*p] || NeQ[a^2 - b^2, 0])
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["d3f1847e"]] := (a/g)^(2*m)* Int[(g*Cos[e + f*x])^(2*m + p)/(a - b*Sin[e + f*x])^m, x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[m] && LtQ[p, -1] && GeQ[2*m + p, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["d233ee49"]] := b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^m/(a*f*g*m) /; FreeQ[{a, b, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && EqQ[Simplify[m + p + 1], 0] && Not[ILtQ[p, 0]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["d0755010"]] := b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m/(a*f*g*Simplify[2*m + p + 1]) + Simplify[m + p + 1]/(a*Simplify[2*m + p + 1])* Int[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^(m + 1), x] /; FreeQ[{a, b, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && ILtQ[Simplify[m + p + 1], 0] && NeQ[2*m + p + 1, 0] && Not[IGtQ[m, 0]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["d1b73a27"]] := b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)/(f* g*(m - 1)) /; FreeQ[{a, b, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && EqQ[2*m + p - 1, 0] && NeQ[m, 1]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["daeb7d1a"]] := -b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)/(f*g*(m + p)) + a*(2*m + p - 1)/(m + p)* Int[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^(m - 1), x] /; FreeQ[{a, b, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && IGtQ[Simplify[(2*m + p - 1)/2], 0] && NeQ[m + p, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["db29172d"]] := -b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m/(a*f*g*(p + 1)) + a*(m + p + 1)/(g^2*(p + 1))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^(m - 1), x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0] && GtQ[m, 0] && LeQ[p, -2*m] && IntegersQ[m + 1/2, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["767c73a"]] := -2* b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)/(f* g*(p + 1)) + b^2*(2*m + p - 1)/(g^2*(p + 1))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^(m - 2), x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0] && GtQ[m, 1] && LtQ[p, -1] && IntegersQ[2*m, 2*p]
Int[Sqrt[a_ + b_.*sin[e_. + f_.*x_]]/Sqrt[g_.*cos[e_. + f_.*x_]], x_Symbol, _:RubiNotebookReference["6a5ad0d"]] := a*Sqrt[1 + Cos[e + f*x]]* Sqrt[a + b*Sin[e + f*x]]/(a + a*Cos[e + f*x] + b*Sin[e + f*x])* Int[Sqrt[1 + Cos[e + f*x]]/Sqrt[g*Cos[e + f*x]], x] + b*Sqrt[1 + Cos[e + f*x]]* Sqrt[a + b*Sin[e + f*x]]/(a + a*Cos[e + f*x] + b*Sin[e + f*x])* Int[Sin[e + f*x]/(Sqrt[g*Cos[e + f*x]]*Sqrt[1 + Cos[e + f*x]]), x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["4e31354"]] := -b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)/(f*g*(m + p)) + a*(2*m + p - 1)/(m + p)* Int[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^(m - 1), x] /; FreeQ[{a, b, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && GtQ[m, 0] && NeQ[m + p, 0] && IntegersQ[2*m, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["5217963"]] := g*(g*Cos[e + f*x])^(p - 1)*(a + b*Sin[e + f*x])^(m + 1)/(b* f*(m + p)) + g^2*(p - 1)/(a*(m + p))* Int[(g*Cos[e + f*x])^(p - 2)*(a + b*Sin[e + f*x])^(m + 1), x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0] && LtQ[m, -1] && GtQ[p, 1] && (GtQ[m, -2] || EqQ[2*m + p + 1, 0] || EqQ[m, -2] && IntegerQ[p]) && NeQ[m + p, 0] && IntegersQ[2*m, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["6e6fe6"]] := 2*g*(g*Cos[e + f*x])^(p - 1)*(a + b*Sin[e + f*x])^(m + 1)/(b* f*(2*m + p + 1)) + g^2*(p - 1)/(b^2*(2*m + p + 1))* Int[(g*Cos[e + f*x])^(p - 2)*(a + b*Sin[e + f*x])^(m + 2), x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0] && LeQ[m, -2] && GtQ[p, 1] && NeQ[2*m + p + 1, 0] && Not[ILtQ[m + p + 1, 0]] && IntegersQ[2*m, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["1ac05d1"]] := b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m/(a*f*g*(2*m + p + 1)) + (m + p + 1)/(a*(2*m + p + 1))* Int[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^(m + 1), x] /; FreeQ[{a, b, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && LtQ[m, -1] && NeQ[2*m + p + 1, 0] && IntegersQ[2*m, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol, _:RubiNotebookReference["3eabb88"]] := g*(g*Cos[e + f*x])^(p - 1)/(b*f*(p - 1)) + g^2/a*Int[(g*Cos[e + f*x])^(p - 2), x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0] && GtQ[p, 1] && IntegerQ[2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol, _:RubiNotebookReference["228d1bf"]] := b*(g*Cos[e + f*x])^(p + 1)/(a*f*g*(p - 1)*(a + b*Sin[e + f*x])) + p/(a*(p - 1))*Int[(g*Cos[e + f*x])^p, x] /; FreeQ[{a, b, e, f, g, p}, x] && EqQ[a^2 - b^2, 0] && Not[GeQ[p, 1]] && IntegerQ[2*p]
Int[Sqrt[g_.*cos[e_. + f_.*x_]]/Sqrt[a_ + b_.*sin[e_. + f_.*x_]], x_Symbol, _:RubiNotebookReference["9749682"]] := g*Sqrt[1 + Cos[e + f*x]]* Sqrt[a + b*Sin[e + f*x]]/(a + a*Cos[e + f*x] + b*Sin[e + f*x])* Int[Sqrt[1 + Cos[e + f*x]]/Sqrt[g*Cos[e + f*x]], x] - g*Sqrt[1 + Cos[e + f*x]]* Sqrt[a + b*Sin[e + f*x]]/(b + b*Cos[e + f*x] + a*Sin[e + f*x])* Int[Sin[e + f*x]/(Sqrt[g*Cos[e + f*x]]*Sqrt[1 + Cos[e + f*x]]), x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^(3/2)/Sqrt[a_ + b_.*sin[e_. + f_.*x_]], x_Symbol, _:RubiNotebookReference["8b6fcb5"]] := g*Sqrt[g*Cos[e + f*x]]*Sqrt[a + b*Sin[e + f*x]]/(b*f) + g^2/(2*a)*Int[Sqrt[a + b*Sin[e + f*x]]/Sqrt[g*Cos[e + f*x]], x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_/Sqrt[a_ + b_.*sin[e_. + f_.*x_]], x_Symbol, _:RubiNotebookReference["15d268d4"]] := -2* b*(g*Cos[e + f*x])^(p + 1)/(f* g*(2*p - 1)*(a + b*Sin[e + f*x])^(3/2)) + 2*a*(p - 2)/(2*p - 1)* Int[(g*Cos[e + f*x])^p/(a + b*Sin[e + f*x])^(3/2), x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0] && GtQ[p, 2] && IntegerQ[2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_/Sqrt[a_ + b_.*sin[e_. + f_.*x_]], x_Symbol, _:RubiNotebookReference["141002e3"]] := -b*(g*Cos[e + f*x])^(p + 1)/(a*f*g*(p + 1)* Sqrt[a + b*Sin[e + f*x]]) + a*(2*p + 1)/(2*g^2*(p + 1))* Int[(g*Cos[e + f*x])^(p + 2)/(a + b*Sin[e + f*x])^(3/2), x] /; FreeQ[{a, b, e, f, g}, x] && EqQ[a^2 - b^2, 0] && LtQ[p, -1] && IntegerQ[2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_., x_Symbol, _:RubiNotebookReference["1656bcba"]] := a^m*(g*Cos[e + f*x])^(p + 1)/(f* g*(1 + Sin[e + f*x])^((p + 1)/2)*(1 - Sin[e + f*x])^((p + 1)/2))* Subst[ Int[(1 + b/a*x)^(m + (p - 1)/2)*(1 - b/a*x)^((p - 1)/2), x], x, Sin[e + f*x]] /; FreeQ[{a, b, e, f, g, p}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[m]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_., x_Symbol, _:RubiNotebookReference["1794d68d"]] := a^2*(g*Cos[e + f*x])^(p + 1)/(f* g*(a + b*Sin[e + f*x])^((p + 1)/2)*(a - b*Sin[e + f*x])^((p + 1)/2))* Subst[Int[(a + b*x)^(m + (p - 1)/2)*(a - b*x)^((p - 1)/2), x], x, Sin[e + f*x]] /; FreeQ[{a, b, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && Not[IntegerQ[m]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["12dbc008"]] := -(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^m* Sin[e + f*x]/(f*g*(p + 1)) + 1/(g^2*(p + 1))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^(m - 1)*(a*(p + 2) + b*(m + p + 2)*Sin[e + f*x]), x] /; FreeQ[{a, b, e, f, g}, x] && NeQ[a^2 - b^2, 0] && LtQ[0, m, 1] && LtQ[p, -1] && (IntegersQ[2*m, 2*p] || IntegerQ[m])
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["1319aa3f"]] := -(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)*(b + a*Sin[e + f*x])/(f*g*(p + 1)) + 1/(g^2*(p + 1))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^(m - 2)*(b^2*(m - 1) + a^2*(p + 2) + a*b*(m + p + 1)*Sin[e + f*x]), x] /; FreeQ[{a, b, e, f, g}, x] && NeQ[a^2 - b^2, 0] && GtQ[m, 1] && LtQ[p, -1] && (IntegersQ[2*m, 2*p] || IntegerQ[m])
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["115f1466"]] := -b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)/(f*g*(m + p)) + 1/(m + p)* Int[(g*Cos[e + f*x])^ p*(a + b*Sin[e + f*x])^(m - 2)*(b^2*(m - 1) + a^2*(m + p) + a*b*(2*m + p - 1)*Sin[e + f*x]), x] /; FreeQ[{a, b, e, f, g, p}, x] && NeQ[a^2 - b^2, 0] && GtQ[m, 1] && NeQ[m + p, 0] && (IntegersQ[2*m, 2*p] || IntegerQ[m])
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["109d7e51"]] := g*(g*Cos[e + f*x])^(p - 1)*(a + b*Sin[e + f*x])^(m + 1)/(b* f*(m + 1)) + g^2*(p - 1)/(b*(m + 1))* Int[(g*Cos[e + f*x])^(p - 2)*(a + b*Sin[e + f*x])^(m + 1)* Sin[e + f*x], x] /; FreeQ[{a, b, e, f, g}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1] && GtQ[p, 1] && IntegersQ[2*m, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["1bc1396c"]] := -b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m + 1)/(f*g*(a^2 - b^2)*(m + 1)) + 1/((a^2 - b^2)*(m + 1))* Int[(g*Cos[e + f*x])^ p*(a + b*Sin[e + f*x])^(m + 1)*(a*(m + 1) - b*(m + p + 2)*Sin[e + f*x]), x] /; FreeQ[{a, b, e, f, g, p}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1] && IntegersQ[2*m, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["1a03535b"]] := g*(g*Cos[e + f*x])^(p - 1)*(a + b*Sin[e + f*x])^(m + 1)/(b* f*(m + p)) + g^2*(p - 1)/(b*(m + p))* Int[(g*Cos[e + f*x])^(p - 2)*(a + b*Sin[e + f*x])^ m*(b + a*Sin[e + f*x]), x] /; FreeQ[{a, b, e, f, g, m}, x] && NeQ[a^2 - b^2, 0] && GtQ[p, 1] && NeQ[m + p, 0] && IntegersQ[2*m, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["ad6e0fb1"]] := (g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m + 1)*(b - a*Sin[e + f*x])/(f*g*(a^2 - b^2)*(p + 1)) + 1/(g^2*(a^2 - b^2)*(p + 1))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^ m*(a^2*(p + 2) - b^2*(m + p + 2) + a*b*(m + p + 3)*Sin[e + f*x]), x] /; FreeQ[{a, b, e, f, g, m}, x] && NeQ[a^2 - b^2, 0] && LtQ[p, -1] && IntegersQ[2*m, 2*p]
Int[1/(Sqrt[g_.*cos[e_. + f_.*x_]]*Sqrt[a_ + b_.*sin[e_. + f_.*x_]]), x_Symbol, _:RubiNotebookReference["acac6586"]] := 2*Sqrt[2]*Sqrt[g*Cos[e + f*x]]* Sqrt[(a + b*Sin[e + f*x])/((a - b)*(1 - Sin[e + f*x]))]/ (f*g*Sqrt[a + b*Sin[e + f*x]]* Sqrt[(1 + Cos[e + f*x] + Sin[e + f*x])/(1 + Cos[e + f*x] - Sin[e + f*x])])* Subst[Int[1/Sqrt[1 + (a + b)*x^4/(a - b)], x], x, Sqrt[(1 + Cos[e + f*x] + Sin[e + f*x])/(1 + Cos[e + f*x] - Sin[e + f*x])]] /; FreeQ[{a, b, e, f, g}, x] && NeQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["aeeadbdf"]] := g*(g*Cos[e + f*x])^(p - 1)*(1 - Sin[e + f*x])*(a + b*Sin[e + f*x])^(m + 1)*(-(a - b)*(1 - Sin[e + f*x])/((a + b)*(1 + Sin[e + f*x])))^(m/2)/ (f*(a + b)*(m + 1))* Hypergeometric2F1[m + 1, m/2 + 1, m + 2, 2*(a + b*Sin[e + f*x])/((a + b)*(1 + Sin[e + f*x]))] /; FreeQ[{a, b, e, f, g, m, p}, x] && NeQ[a^2 - b^2, 0] && EqQ[m + p + 1, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["af28b1e8"]] := (g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m + 1)/(f*g*(a - b)*(p + 1)) + a/(g^2*(a - b))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^ m/(1 - Sin[e + f*x]), x] /; FreeQ[{a, b, e, f, g, m, p}, x] && NeQ[a^2 - b^2, 0] && EqQ[m + p + 2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["aa67a76d"]] := (g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m + 1)/(f*g*(a - b)*(p + 1)) - b*(m + p + 2)/(g^2*(a - b)*(p + 1))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^m, x] + a/(g^2*(a - b))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^ m/(1 - Sin[e + f*x]), x] /; FreeQ[{a, b, e, f, g, m, p}, x] && NeQ[a^2 - b^2, 0] && ILtQ[m + p + 2, 0]
Int[Sqrt[g_.*cos[e_. + f_.*x_]]/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol, _:RubiNotebookReference["aba5cd5a"]] := With[{q = Rt[-a^2 + b^2, 2]}, a*g/(2*b)*Int[1/(Sqrt[g*Cos[e + f*x]]*(q + b*Cos[e + f*x])), x] - a*g/(2*b)* Int[1/(Sqrt[g*Cos[e + f*x]]*(q - b*Cos[e + f*x])), x] + b*g/f* Subst[Int[Sqrt[x]/(g^2*(a^2 - b^2) + b^2*x^2), x], x, g*Cos[e + f*x]]] /; FreeQ[{a, b, e, f, g}, x] && NeQ[a^2 - b^2, 0]
Int[1/(Sqrt[g_.*cos[e_. + f_.*x_]]*(a_ + b_.*sin[e_. + f_.*x_])), x_Symbol, _:RubiNotebookReference["a9e37303"]] := With[{q = Rt[-a^2 + b^2, 2]}, -a/(2*q)* Int[1/(Sqrt[g*Cos[e + f*x]]*(q + b*Cos[e + f*x])), x] - a/(2*q)* Int[1/(Sqrt[g*Cos[e + f*x]]*(q - b*Cos[e + f*x])), x] + b*g/f* Subst[Int[1/(Sqrt[x]*(g^2*(a^2 - b^2) + b^2*x^2)), x], x, g*Cos[e + f*x]]] /; FreeQ[{a, b, e, f, g}, x] && NeQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["a8211934"]] := g*(g*Cos[e + f*x])^(p - 1)*(a + b*Sin[e + f*x])^(m + 1)/ (b* f*(m + p)*(-b*(1 - Sin[e + f*x])/(a + b*Sin[e + f*x]))^((p - 1)/ 2)*(b*(1 + Sin[e + f*x])/(a + b*Sin[e + f*x]))^((p - 1)/2))* AppellF1[-p - m, (1 - p)/2, (1 - p)/2, 1 - p - m, (a + b)/(a + b*Sin[e + f*x]), (a - b)/(a + b*Sin[e + f*x])] /; FreeQ[{a, b, e, f, g, p}, x] && NeQ[a^2 - b^2, 0] && ILtQ[m, 0] && Not[IGtQ[m + p + 1, 0]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol, _:RubiNotebookReference["a37d5e09"]] := g*(g*Cos[e + f*x])^(p - 1)/(f*(1 - (a + b*Sin[e + f*x])/(a - b))^((p - 1)/ 2)*(1 - (a + b*Sin[e + f*x])/(a + b))^((p - 1)/2))* Subst[ Int[(-b/(a - b) - b*x/(a - b))^((p - 1)/2)*(b/(a + b) - b*x/(a + b))^((p - 1)/2)*(a + b*x)^m, x], x, Sin[e + f*x]] /; FreeQ[{a, b, e, f, g, m, p}, x] && NeQ[a^2 - b^2, 0] && Not[IGtQ[m, 0]]
Int[(g_.*sec[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_., x_Symbol, _:RubiNotebookReference["a2bf343e"]] := g^(2*IntPart[p])*(g*Cos[e + f*x])^FracPart[p]*(g*Sec[e + f*x])^ FracPart[p]*Int[(a + b*Sin[e + f*x])^m/(g*Cos[e + f*x])^p, x] /; FreeQ[{a, b, e, f, g, m, p}, x] && Not[IntegerQ[p]]
