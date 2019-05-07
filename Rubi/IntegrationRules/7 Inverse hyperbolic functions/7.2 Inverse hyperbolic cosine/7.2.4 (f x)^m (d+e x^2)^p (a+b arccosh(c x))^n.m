
(* ::Subsection::Closed:: *)
(* 7.2.4 (f x)^m (d+e x^2)^p (a+b arccosh(c x))^n *)
Int[(f_.*x_)^m_.*(d1_ + e1_.*x_)^p_.*(d2_ + e2_.*x_)^ p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["2df35600"]] := Int[(f*x)^m*(d1*d2 + e1*e2*x^2)^p*(a + b*ArcCosh[c*x])^n, x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m, n}, x] && EqQ[d2*e1 + d1*e2, 0] && IntegerQ[p]
Int[x_*(a_. + b_.*ArcCosh[c_.*x_])^n_./(d_ + e_.*x_^2), x_Symbol, _:RubiNotebookReference["2fb5e859"]] := 1/e*Subst[Int[(a + b*x)^n*Coth[x], x], x, ArcCosh[c*x]] /; FreeQ[{a, b, c, d, e}, x] && EqQ[c^2*d + e, 0] && IGtQ[n, 0]
Int[x_*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["2e77826e"]] := (d + e*x^2)^(p + 1)*(a + b*ArcCosh[c*x])^ n/(2*e*(p + 1)) - b*n/(2*c*(p + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, p}, x] && EqQ[c^2*d + e, 0] && GtQ[n, 0] && NeQ[p, -1]
Int[x_*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["2b3894eb"]] := (d1 + e1*x)^(p + 1)*(d2 + e2*x)^(p + 1)*(a + b*ArcCosh[c*x])^n/(2*e1*e2*(p + 1)) - b*n/(2*c*(p + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, p}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[n, 0] && NeQ[p, -1]
Int[(a_. + b_.*ArcCosh[c_.*x_])^n_./(x_*(d_ + e_.*x_^2)), x_Symbol, _:RubiNotebookReference["2afafedc"]] := -1/d* Subst[Int[(a + b*x)^n/(Cosh[x]*Sinh[x]), x], x, ArcCosh[c*x]] /; FreeQ[{a, b, c, d, e}, x] && EqQ[c^2*d + e, 0] && IGtQ[n, 0]
Int[(f_.*x_)^m_*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["28bc4085"]] := (f*x)^(m + 1)*(d + e*x^2)^(p + 1)*(a + b*ArcCosh[c*x])^n/(d*f*(m + 1)) + b*c*n/(f*(m + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(f*x)^(m + 1)*(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, f, m, p}, x] && EqQ[c^2*d + e, 0] && GtQ[n, 0] && EqQ[m + 2*p + 3, 0] && NeQ[m, -1]
Int[(f_.*x_)^m_*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["297e2ab2"]] := (f*x)^(m + 1)*(d1 + e1*x)^(p + 1)*(d2 + e2*x)^(p + 1)*(a + b*ArcCosh[c*x])^n/(d1*d2*f*(m + 1)) + b*c*n/(f*(m + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(f*x)^(m + 1)*(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m, p}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[n, 0] && EqQ[m + 2*p + 3, 0] && NeQ[p, -1]
Int[(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_])/x_, x_Symbol, _:RubiNotebookReference["22226d8f"]] := (d + e*x^2)^p*(a + b*ArcCosh[c*x])/(2*p) - b*c*(-d)^p/(2*p)* Int[(1 + c*x)^(p - 1/2)*(-1 + c*x)^(p - 1/2), x] + d*Int[(d + e*x^2)^(p - 1)*(a + b*ArcCosh[c*x])/x, x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[c^2*d + e, 0] && IGtQ[p, 0]
Int[(f_.*x_)^m_*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_]), x_Symbol, _:RubiNotebookReference["23e007b8"]] := (f*x)^(m + 1)*(d + e*x^2)^ p*(a + b*ArcCosh[c*x])/(f*(m + 1)) - b*c*(-d)^p/(f*(m + 1))* Int[(f*x)^(m + 1)*(1 + c*x)^(p - 1/2)*(-1 + c*x)^(p - 1/2), x] - 2*e*p/(f^2*(m + 1))* Int[(f*x)^(m + 2)*(d + e*x^2)^(p - 1)*(a + b*ArcCosh[c*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[c^2*d + e, 0] && IGtQ[p, 0] && ILtQ[(m + 1)/2, 0]
Int[(f_.*x_)^m_*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_]), x_Symbol, _:RubiNotebookReference["87fa69e1"]] := With[{u = IntHide[(f*x)^m*(d + e*x^2)^p, x]}, Dist[a + b*ArcCosh[c*x], u, x] - b*c*Int[SimplifyIntegrand[u/(Sqrt[1 + c*x]*Sqrt[-1 + c*x]), x], x]] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[c^2*d + e, 0] && IGtQ[p, 0]
Int[x_^m_*(d_ + e_.*x_^2)^p_*(a_. + b_.*ArcCosh[c_.*x_]), x_Symbol, _:RubiNotebookReference["863803d6"]] := With[{u = IntHide[x^m*(d + e*x^2)^p, x]}, Dist[a + b*ArcCosh[c*x], u] - b*c*Simp[Sqrt[d + e*x^2]/(Sqrt[1 + c*x]*Sqrt[-1 + c*x])]* Int[SimplifyIntegrand[u/Sqrt[d + e*x^2], x], x]] /; FreeQ[{a, b, c, d, e}, x] && EqQ[c^2*d + e, 0] && IntegerQ[p - 1/2] && NeQ[p, -1/2] && (IGtQ[(m + 1)/2, 0] || ILtQ[(m + 2*p + 3)/2, 0])
Int[x_^m_*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_]), x_Symbol, _:RubiNotebookReference["847ebd8f"]] := With[{u = IntHide[x^m*(d1 + e1*x)^p*(d2 + e2*x)^p, x]}, Dist[a + b*ArcCosh[c*x], u] - b*c* Simp[Sqrt[d1 + e1*x]* Sqrt[d2 + e2*x]/(Sqrt[1 + c*x]*Sqrt[-1 + c*x])]* Int[SimplifyIntegrand[u/(Sqrt[d1 + e1*x]*Sqrt[d2 + e2*x]), x], x]] /; FreeQ[{a, b, c, d1, e1, d2, e2}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && IntegerQ[p - 1/2] && NeQ[p, -1/2] && (IGtQ[(m + 1)/2, 0] || ILtQ[(m + 2*p + 3)/2, 0])
Int[(f_.*x_)^m_*Sqrt[d_ + e_.*x_^2]*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["85bcd7b8"]] := (f*x)^(m + 1)* Sqrt[d + e*x^2]*(a + b*ArcCosh[c*x])^n/(f*(m + 1)) - b*c*n/(f*(m + 1))* Simp[Sqrt[d + e*x^2]/(Sqrt[1 + c*x]*Sqrt[-1 + c*x])]* Int[(f*x)^(m + 1)*(a + b*ArcCosh[c*x])^(n - 1), x] - c^2/(f^2*(m + 1))* Simp[Sqrt[d + e*x^2]/(Sqrt[1 + c*x]*Sqrt[-1 + c*x])]* Int[(f*x)^(m + 2)*(a + b*ArcCosh[c*x])^ n/(Sqrt[1 + c*x]*Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[c^2*d + e, 0] && GtQ[n, 0] && LtQ[m, -1]
Int[(f_.*x_)^m_*Sqrt[d1_ + e1_.*x_]* Sqrt[d2_ + e2_.*x_]*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["80f3c13d"]] := (f*x)^(m + 1)*Sqrt[d1 + e1*x]* Sqrt[d2 + e2*x]*(a + b*ArcCosh[c*x])^n/(f*(m + 1)) - b*c*n/(f*(m + 1))*Simp[Sqrt[d1 + e1*x]/Sqrt[1 + c*x]]* Simp[Sqrt[d2 + e2*x]/Sqrt[-1 + c*x]]* Int[(f*x)^(m + 1)*(a + b*ArcCosh[c*x])^(n - 1), x] - c^2/(f^2*(m + 1))*Simp[Sqrt[d1 + e1*x]/Sqrt[1 + c*x]]* Simp[Sqrt[d2 + e2*x]/Sqrt[-1 + c*x]]* Int[((f*x)^(m + 2)*(a + b*ArcCosh[c*x])^n)/(Sqrt[1 + c*x]* Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[n, 0] && LtQ[m, -1]
Int[(f_.*x_)^m_*Sqrt[d_ + e_.*x_^2]*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["8131ab0a"]] := (f*x)^(m + 1)* Sqrt[d + e*x^2]*(a + b*ArcCosh[c*x])^n/(f*(m + 2)) - b*c*n/(f*(m + 2))* Simp[Sqrt[d + e*x^2]/(Sqrt[1 + c*x]*Sqrt[-1 + c*x])]* Int[(f*x)^(m + 1)*(a + b*ArcCosh[c*x])^(n - 1), x] - 1/(m + 2)*Simp[Sqrt[d + e*x^2]/(Sqrt[1 + c*x]*Sqrt[-1 + c*x])]* Int[(f*x)^ m*(a + b*ArcCosh[c*x])^n/(Sqrt[1 + c*x]*Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[c^2*d + e, 0] && IGtQ[n, 0] && (IGtQ[m, -2] || EqQ[n, 1])
Int[(f_.*x_)^m_*Sqrt[d1_ + e1_.*x_]* Sqrt[d2_ + e2_.*x_]*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["83771553"]] := (f*x)^(m + 1)*Sqrt[d1 + e1*x]* Sqrt[d2 + e2*x]*(a + b*ArcCosh[c*x])^n/(f*(m + 2)) - b*c*n/(f*(m + 2))*Simp[Sqrt[d1 + e1*x]/Sqrt[1 + c*x]]* Simp[Sqrt[d2 + e2*x]/Sqrt[-1 + c*x]]* Int[(f*x)^(m + 1)*(a + b*ArcCosh[c*x])^(n - 1), x] - 1/(m + 2)*Simp[Sqrt[d1 + e1*x]/Sqrt[1 + c*x]]* Simp[Sqrt[d2 + e2*x]/Sqrt[-1 + c*x]]* Int[(f*x)^ m*(a + b*ArcCosh[c*x])^n/(Sqrt[1 + c*x]*Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && IGtQ[n, 0] && (IGtQ[m, -2] || EqQ[n, 1])
Int[(f_.*x_)^m_*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["82b57f64"]] := (f*x)^(m + 1)*(d + e*x^2)^ p*(a + b*ArcCosh[c*x])^n/(f*(m + 1)) - 2*e*p/(f^2*(m + 1))* Int[(f*x)^(m + 2)*(d + e*x^2)^(p - 1)*(a + b*ArcCosh[c*x])^n, x] - b*c*n/(f*(m + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(f*x)^(m + 1)*(1 + c*x)^(p - 1/2)*(-1 + c*x)^(p - 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[c^2*d + e, 0] && GtQ[n, 0] && GtQ[p, 0] && LtQ[m, -1]
Int[(f_.*x_)^m_*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["89e93859"]] := (f*x)^(m + 1)*(d1 + e1*x)^p*(d2 + e2*x)^ p*(a + b*ArcCosh[c*x])^n/(f*(m + 1)) - 2*e1*e2*p/(f^2*(m + 1))* Int[(f*x)^(m + 2)*(d1 + e1*x)^(p - 1)*(d2 + e2*x)^(p - 1)*(a + b*ArcCosh[c*x])^n, x] - b*c*n/(f*(m + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(f*x)^(m + 1)*(1 + c*x)^(p - 1/2)*(-1 + c*x)^(p - 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[n, 0] && GtQ[p, 0] && LtQ[m, -1]
(* Int[(f_.*x_)^m_*(d_+e_.*x_^2)^p_*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_ Symbol] :=  f*(f*x)^(m-1)*(d+e*x^2)^(p+1)*(a+b*ArcCosh[c*x])^n/(e*(m+2*p+1)) + f^2*(m-1)/(c^2*(m+2*p+1))*Int[(f*x)^(m-2)*(d+e*x^2)^p*(a+b*ArcCosh[ c*x])^n,x] - b*f*n/(c*(m+2*p+1))*Simp[(d+e*x^2)^p/((1+c*x)^p*(-1+c*x)^p)]* Int[(f*x)^(m-1)*(-1+c^2*x^2)^(p+1/2)*(a+b*ArcCosh[c*x])^(n-1),x] /;  FreeQ[{a,b,c,d,e,f,p},x] && EqQ[c^2*d+e,0] && GtQ[n,0] && EqQ[n,1] &&  IGtQ[p+1/2,0] && IGtQ[(m-1)/2,0] *)
(* Int[(f_.*x_)^m_*(d_+e_.*x_^2)^p_*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_ Symbol] :=  f*(f*x)^(m-1)*(d+e*x^2)^(p+1)*(a+b*ArcCosh[c*x])^n/(2*e*(p+1)) - f^2*(m-1)/(2*e*(p+1))*Int[(f*x)^(m-2)*(d+e*x^2)^(p+1)*(a+b*ArcCosh[ c*x])^n,x] - b*f*n/(2*c*(p+1))*Simp[(d+e*x^2)^p/((1+c*x)^p*(-1+c*x)^p)]* Int[(f*x)^(m-1)*(1+c*x)^(p+1/2)*(-1+c*x)^(p+1/2)*(a+b*ArcCosh[c*x] )^(n-1),x] /; FreeQ[{a,b,c,d,e,f},x] && EqQ[c^2*d+e,0] && GtQ[n,0] &&  EqQ[n,1] && ILtQ[p-1/2,0] && IGtQ[(m-1)/2,0] *)
Int[(f_.*x_)^m_*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["948dac38"]] := (f*x)^(m + 1)*(d + e*x^2)^ p*(a + b*ArcCosh[c*x])^n/(f*(m + 2*p + 1)) + 2*d*p/(m + 2*p + 1)* Int[(f*x)^m*(d + e*x^2)^(p - 1)*(a + b*ArcCosh[c*x])^n, x] - b*c*n/(f*(m + 2*p + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(f*x)^(m + 1)*(1 + c*x)^(p - 1/2)*(-1 + c*x)^(p - 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[c^2*d + e, 0] && GtQ[n, 0] && GtQ[p, 0] && Not[LtQ[m, -1]]
Int[(f_.*x_)^m_*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["96cb1261"]] := (f*x)^(m + 1)*(d1 + e1*x)^p*(d2 + e2*x)^ p*(a + b*ArcCosh[c*x])^n/(f*(m + 2*p + 1)) + 2*d1*d2*p/(m + 2*p + 1)* Int[(f*x)^ m*(d1 + e1*x)^(p - 1)*(d2 + e2*x)^(p - 1)*(a + b*ArcCosh[c*x])^ n, x] - b*c*n/(f*(m + 2*p + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(f*x)^(m + 1)*(1 + c*x)^(p - 1/2)*(-1 + c*x)^(p - 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[n, 0] && GtQ[p, 0] && Not[LtQ[m, -1]]
Int[(f_.*x_)^m_*(d_ + e_.*x_^2)^p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["97097856"]] := (f*x)^(m + 1)*(d + e*x^2)^(p + 1)*(a + b*ArcCosh[c*x])^n/(d*f*(m + 1)) + c^2*(m + 2*p + 3)/(f^2*(m + 1))* Int[(f*x)^(m + 2)*(d + e*x^2)^p*(a + b*ArcCosh[c*x])^n, x] + b*c*n/(f*(m + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(f*x)^(m + 1)*(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, f, p}, x] && EqQ[c^2*d + e, 0] && GtQ[n, 0] && ILtQ[m, -1]
Int[(f_.*x_)^m_*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["92466ed3"]] := (f*x)^(m + 1)*(d1 + e1*x)^(p + 1)*(d2 + e2*x)^(p + 1)*(a + b*ArcCosh[c*x])^n/(d1*d2*f*(m + 1)) + c^2*(m + 2*p + 3)/(f^2*(m + 1))* Int[(f*x)^(m + 2)*(d1 + e1*x)^p*(d2 + e2*x)^ p*(a + b*ArcCosh[c*x])^n, x] + b*c*n/(f*(m + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(f*x)^(m + 1)*(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, p}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[n, 0] && ILtQ[m, -1]
Int[(f_.*x_)^m_*(d_ + e_.*x_^2)^p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["938404e4"]] := f*(f*x)^(m - 1)*(d + e*x^2)^(p + 1)*(a + b*ArcCosh[c*x])^ n/(2*e*(p + 1)) - f^2*(m - 1)/(2*e*(p + 1))* Int[(f*x)^(m - 2)*(d + e*x^2)^(p + 1)*(a + b*ArcCosh[c*x])^n, x] - b*f*n/(2*c*(p + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(f*x)^(m - 1)*(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[c^2*d + e, 0] && GtQ[n, 0] && LtQ[p, -1] && IGtQ[m, 1]
Int[(f_.*x_)^m_*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["91c2babd"]] := f*(f*x)^(m - 1)*(d1 + e1*x)^(p + 1)*(d2 + e2*x)^(p + 1)*(a + b*ArcCosh[c*x])^n/(2*e1*e2*(p + 1)) - f^2*(m - 1)/(2*e1*e2*(p + 1))* Int[(f*x)^(m - 2)*(d1 + e1*x)^(p + 1)*(d2 + e2*x)^(p + 1)*(a + b*ArcCosh[c*x])^n, x] - b*f*n/(2*c*(p + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(f*x)^(m - 1)*(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[n, 0] && LtQ[p, -1] && IGtQ[m, 1]
Int[(f_.*x_)^m_*(d_ + e_.*x_^2)^p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["9000d08a"]] := -(f*x)^(m + 1)*(d + e*x^2)^(p + 1)*(a + b*ArcCosh[c*x])^n/(2*d*f*(p + 1)) + (m + 2*p + 3)/(2*d*(p + 1))* Int[(f*x)^m*(d + e*x^2)^(p + 1)*(a + b*ArcCosh[c*x])^n, x] - b*c*n/(2*f*(p + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(f*x)^(m + 1)*(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[c^2*d + e, 0] && GtQ[n, 0] && LtQ[p, -1] && Not[GtQ[m, 1]] && (IntegerQ[m] || IntegerQ[p] || EqQ[n, 1])
Int[(f_.*x_)^m_*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["9b5c97b7"]] := -(f*x)^(m + 1)*(d1 + e1*x)^(p + 1)*(d2 + e2*x)^(p + 1)*(a + b*ArcCosh[c*x])^n/(2*d1*d2*f*(p + 1)) + (m + 2*p + 3)/(2*d1*d2*(p + 1))* Int[(f*x)^ m*(d1 + e1*x)^(p + 1)*(d2 + e2*x)^(p + 1)*(a + b*ArcCosh[c*x])^ n, x] - b*c*n/(2*f*(p + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(f*x)^(m + 1)*(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[n, 0] && LtQ[p, -1] && Not[GtQ[m, 1]] && (IntegerQ[m] || EqQ[n, 1])
Int[(f_.*x_)^m_*(d_ + e_.*x_^2)^p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["9a9efd80"]] := f*(f*x)^(m - 1)*(d + e*x^2)^(p + 1)*(a + b*ArcCosh[c*x])^ n/(e*(m + 2*p + 1)) + f^2*(m - 1)/(c^2*(m + 2*p + 1))* Int[(f*x)^(m - 2)*(d + e*x^2)^p*(a + b*ArcCosh[c*x])^n, x] - b*f*n/(c*(m + 2*p + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(f*x)^(m - 1)*(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d, e, f, p}, x] && EqQ[c^2*d + e, 0] && GtQ[n, 0] && IGtQ[m, 1] && NeQ[m + 2*p + 1, 0]
Int[(f_.*x_)^m_*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["2df3a16a"]] := f*(f*x)^(m - 1)*(d1 + e1*x)^(p + 1)*(d2 + e2*x)^(p + 1)*(a + b*ArcCosh[c*x])^n/(e1*e2*(m + 2*p + 1)) + f^2*(m - 1)/(c^2*(m + 2*p + 1))* Int[(f*x)^(m - 2)*(d1 + e1*x)^p*(d2 + e2*x)^ p*(a + b*ArcCosh[c*x])^n, x] - b*f*n/(c*(m + 2*p + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(f*x)^(m - 1)*(1 + c*x)^(p + 1/2)*(-1 + c*x)^(p + 1/2)*(a + b*ArcCosh[c*x])^(n - 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, p}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[n, 0] && IGtQ[m, 1] && NeQ[m + 2*p + 1, 0]
Int[(f_.*x_)^m_.*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_, x_Symbol, _:RubiNotebookReference["2c31cb5d"]] := (f*x)^m* Simp[Sqrt[1 + c*x]* Sqrt[-1 + c*x]*(d + e*x^2)^p]*(a + b*ArcCosh[c*x])^(n + 1)/(b* c*(n + 1)) + f*m/(b*c*(n + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(f*x)^(m - 1)*(1 + c*x)^(p - 1/2)*(-1 + c*x)^(p - 1/2)*(a + b*ArcCosh[c*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, m, p}, x] && EqQ[c^2*d + e, 0] && LtQ[n, -1] && EqQ[m + 2*p + 1, 0]
Int[(f_.*x_)^m_.*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_, x_Symbol, _:RubiNotebookReference["2e777504"]] := (f*x)^m* Simp[Sqrt[1 + c*x]*Sqrt[-1 + c*x]*(d1 + e1*x)^p]*(d2 + e2*x)^ p*(a + b*ArcCosh[c*x])^(n + 1)/(b*c*(n + 1)) + f*m/(b*c*(n + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(f*x)^(m - 1)*(1 + c*x)^(p - 1/2)*(-1 + c*x)^(p - 1/2)*(a + b*ArcCosh[c*x])^(n + 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m, p}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && LtQ[n, -1] && EqQ[m + 2*p + 1, 0]
Int[(f_.*x_)^m_.*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_, x_Symbol, _:RubiNotebookReference["2fb51f33"]] := (f*x)^m* Simp[Sqrt[1 + c*x]* Sqrt[-1 + c*x]*(d + e*x^2)^p]*(a + b*ArcCosh[c*x])^(n + 1)/(b* c*(n + 1)) + f*m/(b*c*(n + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(f*x)^(m - 1)*(1 + c*x)^(p - 1/2)*(-1 + c*x)^(p - 1/2)*(a + b*ArcCosh[c*x])^(n + 1), x] - c*(m + 2*p + 1)/(b*f*(n + 1))* Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Int[(f*x)^(m + 1)*(1 + c*x)^(p - 1/2)*(-1 + c*x)^(p - 1/2)*(a + b*ArcCosh[c*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, m, p}, x] && EqQ[c^2*d + e, 0] && LtQ[n, -1] && IGtQ[2*p, 0] && NeQ[m + 2*p + 1, 0] && IGtQ[m, -3]
Int[(f_.*x_)^m_.*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_, x_Symbol, _:RubiNotebookReference["2afa09b6"]] := (f*x)^m*Sqrt[1 + c*x]* Sqrt[-1 + c*x]*(d1 + e1*x)^p*(d2 + e2*x)^ p*(a + b*ArcCosh[c*x])^(n + 1)/(b*c*(n + 1)) + f*m/(b*c*(n + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(f*x)^(m - 1)*(-1 + c^2*x^2)^(p - 1/2)*(a + b*ArcCosh[c*x])^(n + 1), x] - c*(m + 2*p + 1)/(b*f*(n + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Int[(f*x)^(m + 1)*(-1 + c^2*x^2)^(p - 1/2)*(a + b*ArcCosh[c*x])^(n + 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m, p}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && LtQ[n, -1] && IGtQ[p + 1/2, 0] && NeQ[m + 2*p + 1, 0] && IGtQ[m, -3]
(* Int[(f_.*x_)^m_.*(d_+e_.*x_^2)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_,x_ Symbol] :=  (f*x)^m*Simp[Sqrt[1+c*x]*Sqrt[-1+c*x]*(d+e*x^2)^p]*(a+b*ArcCosh[c*x])^ (n+1)/(b*c*(n+1)) - f*m/(b*c*(n+1))*Simp[(d+e*x^2)^p/((1+c*x)^p*(-1+c*x)^p)]* Int[(f*x)^(m-1)*(1+c*x)^(p+1/2)*(-1+c*x)^(p+1/2)*(a+b*ArcCosh[c*x] )^(n+1),x] - c*(2*p+1)/(b*f*(n+1))*Simp[(d+e*x^2)^p/((1+c*x)^p*(-1+c*x)^p)]* Int[(f*x)^(m+1)*(1+c*x)^(p-1/2)*(-1+c*x)^(p-1/2)*(a+b*ArcCosh[c*x] )^(n+1),x] /; FreeQ[{a,b,c,d,e,f,m,p},x] && EqQ[c^2*d+e,0] &&  LtQ[n,-1] && NeQ[p,-1/2] && IntegerQ[2*p] && IGtQ[m,-3] *)
(* Int[(f_.*x_)^m_.*(d1_+e1_.*x_)^p_*(d2_+e2_.*x_)^p_*(a_.+b_.* ArcCosh[c_.*x_])^n_,x_Symbol] :=  (f*x)^m*Sqrt[1+c*x]*Sqrt[-1+c*x]*(d1+e1*x)^p*(d2+e2*x)^p*(a+b*ArcCosh[ c*x])^(n+1)/(b*c*(n+1)) - f*m/(b*c*(n+1))*Simp[(d1+e1*x)^p/(1+c*x)^p]*Simp[(d2+e2*x)^p/(-1+c* x)^p]* Int[(f*x)^(m-1)*(-1+c^2*x^2)^(p+1/2)*(a+b*ArcCosh[c*x])^(n+1),x] - c*(2*p+1)/(b*f*(n+1))*Simp[(d1+e1*x)^p/(1+c*x)^p]*Simp[(d2+e2*x)^p/( -1+c*x)^p]* Int[(f*x)^(m+1)*(-1+c^2*x^2)^(p-1/2)*(a+b*ArcCosh[c*x])^(n+1),x] /;  FreeQ[{a,b,c,d1,e1,d2,e2,f,m,p},x] && EqQ[e1,c*d1] && EqQ[e2,-c*d2] &&  LtQ[n,-1] && ILtQ[p+1/2,0] && IGtQ[m,-3] *)
Int[(f_.*x_)^m_*(a_. + b_.*ArcCosh[c_.*x_])^n_./Sqrt[d_ + e_.*x_^2], x_Symbol, _:RubiNotebookReference["28bcb7ef"]] := f*(f*x)^(m - 1)*Sqrt[d + e*x^2]*(a + b*ArcCosh[c*x])^n/(e*m) - b*f*n/(c*m)*Simp[Sqrt[1 + c*x]*Sqrt[-1 + c*x]/Sqrt[d + e*x^2]]* Int[(f*x)^(m - 1)*(a + b*ArcCosh[c*x])^(n - 1), x] + f^2*(m - 1)/(c^2*m)* Int[(f*x)^(m - 2)*(a + b*ArcCosh[c*x])^n/Sqrt[d + e*x^2], x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[c^2*d + e, 0] && GtQ[n, 0] && IGtQ[m, 1]
Int[(f_.*x_)^ m_*(a_. + b_.*ArcCosh[c_.*x_])^ n_./(Sqrt[d1_ + e1_.*x_]*Sqrt[d2_ + e2_.*x_]), x_Symbol, _:RubiNotebookReference["23e0f0d2"]] := f*(f*x)^(m - 1)*Sqrt[d1 + e1*x]* Sqrt[d2 + e2*x]*(a + b*ArcCosh[c*x])^n/(e1*e2*m) - b*f*n/(c*m)*Simp[Sqrt[1 + c*x]/Sqrt[d1 + e1*x]]* Simp[Sqrt[-1 + c*x]/Sqrt[d2 + e2*x]]* Int[(f*x)^(m - 1)*(a + b*ArcCosh[c*x])^(n - 1), x] + f^2*(m - 1)/(c^2*m)* Int[(f*x)^(m - 2)*(a + b*ArcCosh[c*x])^ n/(Sqrt[d1 + e1*x]*Sqrt[d2 + e2*x]), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[n, 0] && IGtQ[m, 1]
Int[x_^m_*(a_. + b_.*ArcCosh[c_.*x_])^n_./Sqrt[d_ + e_.*x_^2], x_Symbol, _:RubiNotebookReference["22229ae5"]] := 1/c^(m + 1)*Simp[Sqrt[1 + c*x]*Sqrt[-1 + c*x]/Sqrt[d + e*x^2]]* Subst[Int[(a + b*x)^n*Cosh[x]^m, x], x, ArcCosh[c*x]] /; FreeQ[{a, b, c, d, e}, x] && EqQ[c^2*d + e, 0] && IGtQ[n, 0] && IntegerQ[m]
Int[x_^m_*(a_. + b_.*ArcCosh[c_.*x_])^ n_./(Sqrt[d1_ + e1_.*x_]*Sqrt[d2_ + e2_.*x_]), x_Symbol, _:RubiNotebookReference["b02499d3"]] := 1/c^(m + 1)*Simp[Sqrt[1 + c*x]/Sqrt[d1 + e1*x]]* Simp[Sqrt[-1 + c*x]/Sqrt[d2 + e2*x]]* Subst[Int[(a + b*x)^n*Cosh[x]^m, x], x, ArcCosh[c*x]] /; FreeQ[{a, b, c, d1, e1, d2, e2}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && IGtQ[n, 0] && IntegerQ[m]
Int[(f_.*x_)^m_*(a_. + b_.*ArcCosh[c_.*x_])/Sqrt[d_ + e_.*x_^2], x_Symbol, _:RubiNotebookReference["b1e6f3e4"]] := (f*x)^(m + 1)/(f*(m + 1))* Simp[Sqrt[1 - c^2*x^2]/Sqrt[d + e*x^2]]* (a + b*ArcCosh[c*x])* Hypergeometric2F1[1/2, (1 + m)/2, (3 + m)/2, c^2*x^2] + b*c*(f*x)^(m + 2)/(f^2*(m + 1)*(m + 2))* Simp[Sqrt[1 + c*x]*Sqrt[-1 + c*x]/Sqrt[d + e*x^2]]* HypergeometricPFQ[{1, 1 + m/2, 1 + m/2}, {3/2 + m/2, 2 + m/2}, c^2*x^2] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[c^2*d + e, 0] && Not[IntegerQ[m]]
Int[(f_.*x_)^ m_*(a_. + b_.*ArcCosh[c_.*x_])/(Sqrt[d1_ + e1_.*x_]* Sqrt[d2_ + e2_.*x_]), x_Symbol, _:RubiNotebookReference["b3a04dbd"]] := (f*x)^(m + 1)/(f*(m + 1))* Simp[Sqrt[1 - c^2*x^2]/(Sqrt[d1 + e1*x]*Sqrt[d2 + e2*x])]* (a + b*ArcCosh[c*x])* Hypergeometric2F1[1/2, (1 + m)/2, (3 + m)/2, c^2*x^2] + b*c*(f*x)^(m + 2)/(f^2*(m + 1)*(m + 2))* Simp[Sqrt[1 + c*x]/Sqrt[d1 + e1*x]]* Simp[Sqrt[-1 + c*x]/Sqrt[d2 + e2*x]]* HypergeometricPFQ[{1, 1 + m/2, 1 + m/2}, {3/2 + m/2, 2 + m/2}, c^2*x^2] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && Not[IntegerQ[m]]
Int[(f_.*x_)^m_.*(a_. + b_.*ArcCosh[c_.*x_])^n_/Sqrt[d_ + e_.*x_^2], x_Symbol, _:RubiNotebookReference["b262278a"]] := (f*x)^m*(a + b*ArcCosh[c*x])^(n + 1)/(b*c*(n + 1))* Simp[Sqrt[1 + c*x]*Sqrt[-1 + c*x]/Sqrt[d + e*x^2]] - f*m/(b*c*(n + 1))* Simp[Sqrt[1 + c*x]*Sqrt[-1 + c*x]/Sqrt[d + e*x^2]]* Int[(f*x)^(m - 1)*(a + b*ArcCosh[c*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, m}, x] && EqQ[c^2*d + e, 0] && LtQ[n, -1]
Int[(f_.*x_)^ m_.*(a_. + b_.*ArcCosh[c_.*x_])^ n_/(Sqrt[d1_ + e1_.*x_]*Sqrt[d2_ + e2_.*x_]), x_Symbol, _:RubiNotebookReference["b72d310f"]] := (f*x)^m*(a + b*ArcCosh[c*x])^(n + 1)/(b*c*(n + 1))* Simp[Sqrt[1 + c*x]/Sqrt[d1 + e1*x]]* Simp[Sqrt[-1 + c*x]/Sqrt[d2 + e2*x]] - f*m/(b*c*(n + 1))*Simp[Sqrt[1 + c*x]/Sqrt[d1 + e1*x]]* Simp[Sqrt[-1 + c*x]/Sqrt[d2 + e2*x]]* Int[(f*x)^(m - 1)*(a + b*ArcCosh[c*x])^(n + 1), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && LtQ[n, -1]
Int[x_^m_.*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["b6ef5b38"]] := 1/(b*c^(m + 1))*Simp[(d + e*x^2)^p/((1 + c*x)^p*(-1 + c*x)^p)]* Subst[ Int[x^n*Cosh[-a/b + x/b]^m*Sinh[-a/b + x/b]^(2*p + 1), x], x, a + b*ArcCosh[c*x]] /; FreeQ[{a, b, c, d, e, n}, x] && EqQ[c^2*d + e, 0] && IGtQ[2*p + 2, 0] && IGtQ[m, 0]
Int[x_^m_.*(d1_ + e1_.*x_)^p_.*(d2_ + e2_.*x_)^ p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["b4a9e561"]] := 1/(b*c^(m + 1))*Simp[(d1 + e1*x)^p/(1 + c*x)^p]* Simp[(d2 + e2*x)^p/(-1 + c*x)^p]* Subst[ Int[x^n*Cosh[-a/b + x/b]^m*Sinh[-a/b + x/b]^(2*p + 1), x], x, a + b*ArcCosh[c*x]] /; FreeQ[{a, b, c, d1, e1, d2, e2, n}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && IGtQ[p + 3/2, 0] && IGtQ[m, 0]
Int[(f_.*x_)^m_*(d_ + e_.*x_^2)^p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["b56b8f56"]] := Int[ExpandIntegrand[(a + b*ArcCosh[c*x])^n/ Sqrt[d + e*x^2], (f*x)^m*(d + e*x^2)^(p + 1/2), x], x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && EqQ[c^2*d + e, 0] && IGtQ[p + 1/2, 0] && Not[IGtQ[(m + 1)/2, 0]] && (EqQ[m, -1] || EqQ[m, -2])
Int[(f_.*x_)^m_*(d1_ + e1_.*x_)^p_*(d2_ + e2_.*x_)^ p_*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["be37c86b"]] := Int[ExpandIntegrand[(a + b*ArcCosh[c*x])^ n/(Sqrt[d1 + e1*x]*Sqrt[d2 + e2*x]), (f*x)^ m*(d1 + e1*x)^(p + 1/2)*(d2 + e2*x)^(p + 1/2), x], x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m, n}, x] && EqQ[e1, c*d1] && EqQ[e2, -c*d2] && GtQ[d1, 0] && LtQ[d2, 0] && IGtQ[p + 1/2, 0] && Not[IGtQ[(m + 1)/2, 0]] && (EqQ[m, -1] || EqQ[m, -2])
Int[(f_.*x_)^m_.*(d_ + e_.*x_^2)*(a_. + b_.*ArcCosh[c_.*x_]), x_Symbol, _:RubiNotebookReference["bff5a25c"]] := d*(f*x)^(m + 1)*(a + b*ArcCosh[c*x])/(f*(m + 1)) + e*(f*x)^(m + 3)*(a + b*ArcCosh[c*x])/(f^3*(m + 3)) - b*c/(f*(m + 1)*(m + 3))* Int[(f*x)^(m + 1)*(d*(m + 3) + e*(m + 1)*x^2)/(Sqrt[1 + c*x]* Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c, d, e, f, m}, x] && NeQ[c^2*d + e, 0] && NeQ[m, -1] && NeQ[m, -3]
Int[x_*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_]), x_Symbol, _:RubiNotebookReference["898feb6"]] := (d + e*x^2)^(p + 1)*(a + b*ArcCosh[c*x])/(2* e*(p + 1)) - b*c/(2*e*(p + 1))* Int[(d + e*x^2)^(p + 1)/(Sqrt[1 + c*x]*Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c, d, e, p}, x] && NeQ[c^2*d + e, 0] && NeQ[p, -1]
Int[(f_.*x_)^m_.*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_]), x_Symbol, _:RubiNotebookReference["95a9481"]] := With[{u = IntHide[(f*x)^m*(d + e*x^2)^p, x]}, Dist[a + b*ArcCosh[c*x], u, x] - b*c*Int[SimplifyIntegrand[u/(Sqrt[1 + c*x]*Sqrt[-1 + c*x]), x], x]] /; FreeQ[{a, b, c, d, e, f, m}, x] && NeQ[c^2*d + e, 0] && IntegerQ[p] && (GtQ[p, 0] || IGtQ[(m - 1)/2, 0] && LeQ[m + p, 0])
(* Int[x_^m_.*(d_+e_.*x_^2)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_,x_Symbol]  := 1/(b*c^(m+2*p+1))*Subst[Int[x^n*Cosh[-a/b+x/b]^m*(c^2*d+e*Cosh[- a/b+x/b]^2)^p*Sinh[-a/b+x/b],x],x,a+b*ArcCosh[c*x]] /;  FreeQ[{a,b,c,d,e,n},x] && IGtQ[m,0] && IGtQ[p,0] *)
Int[(f_.*x_)^m_.*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["ade40ef"]] := Int[ExpandIntegrand[(a + b*ArcCosh[c*x])^n, (f*x)^m*(d + e*x^2)^p, x], x] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[c^2*d + e, 0] && IGtQ[n, 0] && IntegerQ[p] && IntegerQ[m]
Int[(f_.*x_)^m_.*(d_ + e_.*x_^2)^p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["f91566a"]] := Unintegrable[(f*x)^m*(d + e*x^2)^p*(a + b*ArcCosh[c*x])^n, x] /; FreeQ[{a, b, c, d, e, f, m, n, p}, x]
Int[(f_.*x_)^m_.*(d1_ + e1_.*x_)^p_.*(d2_ + e2_.*x_)^ p_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["e533c5d"]] := Unintegrable[(f*x)^m*(d1 + e1*x)^p*(d2 + e2*x)^ p*(a + b*ArcCosh[c*x])^n, x] /; FreeQ[{a, b, c, d1, e1, d2, e2, f, m, n, p}, x]
