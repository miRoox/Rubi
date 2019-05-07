
(* ::Subsection::Closed:: *)
(* 6.7.8 u hyper(a+b log(c x^n))^p *)
Int[Sinh[b_.*Log[c_.*x_^n_.]]^p_., x_Symbol, _:RubiNotebookReference["66a7674e"]] := Int[((c*x^n)^b/2 - 1/(2*(c*x^n)^b))^p, x] /; FreeQ[c, x] && RationalQ[b, n, p]
Int[Cosh[b_.*Log[c_.*x_^n_.]]^p_., x_Symbol, _:RubiNotebookReference["64e1d917"]] := Int[((c*x^n)^b/2 + 1/(2*(c*x^n)^b))^p, x] /; FreeQ[c, x] && RationalQ[b, n, p]
Int[Sinh[d_.*(a_. + b_.*Log[c_.*x_^n_.])], x_Symbol, _:RubiNotebookReference["6523b320"]] := -x*Sinh[d*(a + b*Log[c*x^n])]/(b^2*d^2*n^2 - 1) + b*d*n*x*Cosh[d*(a + b*Log[c*x^n])]/(b^2*d^2*n^2 - 1) /; FreeQ[{a, b, c, d, n}, x] && NeQ[b^2*d^2*n^2 - 1, 0]
Int[Cosh[d_.*(a_. + b_.*Log[c_.*x_^n_.])], x_Symbol, _:RubiNotebookReference["606ca5a5"]] := -x*Cosh[d*(a + b*Log[c*x^n])]/(b^2*d^2*n^2 - 1) + b*d*n*x*Sinh[d*(a + b*Log[c*x^n])]/(b^2*d^2*n^2 - 1) /; FreeQ[{a, b, c, d, n}, x] && NeQ[b^2*d^2*n^2 - 1, 0]
Int[Sinh[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_, x_Symbol, _:RubiNotebookReference["61aecf92"]] := -x* Sinh[d*(a + b*Log[c*x^n])]^p/(b^2*d^2*n^2*p^2 - 1) + b*d*n*p*x*Cosh[d*(a + b*Log[c*x^n])]* Sinh[d*(a + b*Log[c*x^n])]^(p - 1)/(b^2*d^2*n^2*p^2 - 1) - b^2*d^2*n^2*p*(p - 1)/(b^2*d^2*n^2*p^2 - 1)* Int[Sinh[d*(a + b*Log[c*x^n])]^(p - 2), x] /; FreeQ[{a, b, c, d, n}, x] && IGtQ[p, 1] && NeQ[b^2*d^2*n^2*p^2 - 1, 0]
Int[Cosh[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_, x_Symbol, _:RubiNotebookReference["63e871cb"]] := -x* Cosh[d*(a + b*Log[c*x^n])]^p/(b^2*d^2*n^2*p^2 - 1) + b*d*n*p*x*Cosh[d*(a + b*Log[c*x^n])]^(p - 1)* Sinh[d*(a + b*Log[c*x^n])]/(b^2*d^2*n^2*p^2 - 1) + b^2*d^2*n^2*p*(p - 1)/(b^2*d^2*n^2*p^2 - 1)* Int[Cosh[d*(a + b*Log[c*x^n])]^(p - 2), x] /; FreeQ[{a, b, c, d, n}, x] && IGtQ[p, 1] && NeQ[b^2*d^2*n^2*p^2 - 1, 0]
Int[Sinh[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["622a1bfc"]] := 1/(2^p*b^p*d^p*p^p)* Int[ExpandIntegrand[(-E^(-a*b*d^2*p)*x^(-1/p) + E^(a*b*d^2*p)*x^(1/p))^p, x], x] /; FreeQ[{a, b, d}, x] && IGtQ[p, 0] && EqQ[b^2*d^2*p^2 - 1, 0]
Int[Cosh[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["69765cc1"]] := 1/2^p*Int[ ExpandIntegrand[(E^(-a*b*d^2*p)*x^(-1/p) + E^(a*b*d^2*p)*x^(1/p))^ p, x], x] /; FreeQ[{a, b, d}, x] && IGtQ[p, 0] && EqQ[b^2*d^2*p^2 - 1, 0]
(* Int[Sinh[d_.*(a_.+b_.*Log[x_])]^p_.,x_Symbol] :=  E^(a*d*p)/2^p*Int[x^(b*d*p)*(1-1/(E^(2*a*d)*x^(2*b*d)))^p,x] /;  FreeQ[{a,b,d},x] && IntegerQ[p] *)
(* Int[Cosh[d_.*(a_.+b_.*Log[x_])]^p_.,x_Symbol] :=  E^(a*d*p)/2^p*Int[x^(b*d*p)*(1+1/(E^(2*a*d)*x^(2*b*d)))^p,x] /;  FreeQ[{a,b,d},x] && IntegerQ[p] *)
Int[Sinh[d_.*(a_. + b_.*Log[x_])]^p_, x_Symbol, _:RubiNotebookReference["17173b70"]] := Sinh[d*(a + b*Log[x])]^ p/(x^(b*d*p)*(1 - 1/(E^(2*a*d)*x^(2*b*d)))^p)* Int[x^(b*d*p)*(1 - 1/(E^(2*a*d)*x^(2*b*d)))^p, x] /; FreeQ[{a, b, d, p}, x] && Not[IntegerQ[p]]
Int[Cosh[d_.*(a_. + b_.*Log[x_])]^p_, x_Symbol, _:RubiNotebookReference["15518529"]] := Cosh[d*(a + b*Log[x])]^ p/(x^(b*d*p)*(1 + 1/(E^(2*a*d)*x^(2*b*d)))^p)* Int[x^(b*d*p)*(1 + 1/(E^(2*a*d)*x^(2*b*d)))^p, x] /; FreeQ[{a, b, d, p}, x] && Not[IntegerQ[p]]
Int[Sinh[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["1493ef1e"]] := x/(n*(c*x^n)^(1/n))* Subst[Int[x^(1/n - 1)*Sinh[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[Cosh[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["11dcf99b"]] := x/(n*(c*x^n)^(1/n))* Subst[Int[x^(1/n - 1)*Cosh[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[(e_.*x_)^m_.*Sinh[d_.*(a_. + b_.*Log[c_.*x_^n_.])], x_Symbol, _:RubiNotebookReference["101e93ac"]] := -(m + 1)*(e*x)^(m + 1)* Sinh[d*(a + b*Log[c*x^n])]/(b^2*d^2*e*n^2 - e*(m + 1)^2) + b*d*n*(e*x)^(m + 1)* Cosh[d*(a + b*Log[c*x^n])]/(b^2*d^2*e*n^2 - e*(m + 1)^2) /; FreeQ[{a, b, c, d, e, m, n}, x] && NeQ[b^2*d^2*n^2 - (m + 1)^2, 0]
Int[(e_.*x_)^m_.*Cosh[d_.*(a_. + b_.*Log[c_.*x_^n_.])], x_Symbol, _:RubiNotebookReference["12582df5"]] := -(m + 1)*(e*x)^(m + 1)* Cosh[d*(a + b*Log[c*x^n])]/(b^2*d^2*e*n^2 - e*(m + 1)^2) + b*d*n*(e*x)^(m + 1)* Sinh[d*(a + b*Log[c*x^n])]/(b^2*d^2*e*n^2 - e*(m + 1)^2) /; FreeQ[{a, b, c, d, e, m, n}, x] && NeQ[b^2*d^2*n^2 - (m + 1)^2, 0]
Int[(e_.*x_)^m_.*Sinh[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_, x_Symbol, _:RubiNotebookReference["139a47c2"]] := -(m + 1)*(e*x)^(m + 1)* Sinh[d*(a + b*Log[c*x^n])]^p/(b^2*d^2*e*n^2*p^2 - e*(m + 1)^2) + b*d*n*p*(e*x)^(m + 1)*Cosh[d*(a + b*Log[c*x^n])]* Sinh[d*(a + b*Log[c*x^n])]^(p - 1)/(b^2*d^2*e*n^2*p^2 - e*(m + 1)^2) - b^2*d^2*n^2*p*(p - 1)/(b^2*d^2*n^2*p^2 - (m + 1)^2)* Int[(e*x)^m*Sinh[d*(a + b*Log[c*x^n])]^(p - 2), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && IGtQ[p, 1] && NeQ[b^2*d^2*n^2*p^2 - (m + 1)^2, 0]
Int[(e_.*x_)^m_.*Cosh[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_, x_Symbol, _:RubiNotebookReference["18c600ff"]] := -(m + 1)*(e*x)^(m + 1)* Cosh[d*(a + b*Log[c*x^n])]^p/(b^2*d^2*e*n^2*p^2 - e*(m + 1)^2) + b*d*n*p*(e*x)^(m + 1)*Sinh[d*(a + b*Log[c*x^n])]* Cosh[d*(a + b*Log[c*x^n])]^(p - 1)/(b^2*d^2*e*n^2*p^2 - e*(m + 1)^2) + b^2*d^2*n^2*p*(p - 1)/(b^2*d^2*n^2*p^2 - (m + 1)^2)* Int[(e*x)^m*Cosh[d*(a + b*Log[c*x^n])]^(p - 2), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && IGtQ[p, 1] && NeQ[b^2*d^2*n^2*p^2 - (m + 1)^2, 0]
Int[(e_.*x_)^m_.*Sinh[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["19046ac8"]] := (m + 1)^p/(2^p*b^p*d^p*p^p)* Int[ ExpandIntegrand[(e*x)^ m*(-E^(-a*b*d^2*p/(m + 1))*x^(-(m + 1)/p) + E^(a*b*d^2*p/(m + 1))*x^((m + 1)/p))^p, x], x] /; FreeQ[{a, b, d, e, m}, x] && IGtQ[p, 0] && EqQ[b^2*d^2*p^2 - (m + 1)^2, 0]
Int[(e_.*x_)^m_.*Cosh[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["460fea9"]] := 1/2^p*Int[ ExpandIntegrand[(e*x)^ m*(E^(-a*b*d^2*p/(m + 1))*x^(-(m + 1)/p) + E^(a*b*d^2*p/(m + 1))*x^((m + 1)/p))^p, x], x] /; FreeQ[{a, b, d, e, m}, x] && IGtQ[p, 0] && EqQ[b^2*d^2*p^2 - (m + 1)^2, 0]
(* Int[(e_.*x_)^m_.*Sinh[d_.*(a_.+b_.*Log[x_])]^p_.,x_Symbol] :=  E^(a*d*p)/2^p*Int[(e*x)^m*x^(b*d*p)*(1-1/(E^(2*a*d)*x^(2*b*d)))^p,x] /;  FreeQ[{a,b,d,e,m},x] && IntegerQ[p] *)
(* Int[(e_.*x_)^m_.*Cosh[d_.*(a_.+b_.*Log[x_])]^p_.,x_Symbol] :=  E^(a*d*p)/2^p*Int[(e*x)^m*x^(b*d*p)*(1+1/(E^(2*a*d)*x^(2*b*d)))^p,x] /;  FreeQ[{a,b,d,e,m},x] && IntegerQ[p] *)
Int[(e_.*x_)^m_.*Sinh[d_.*(a_. + b_.*Log[x_])]^p_, x_Symbol, _:RubiNotebookReference["62640f0"]] := Sinh[d*(a + b*Log[x])]^ p/(x^(b*d*p)*(1 - 1/(E^(2*a*d)*x^(2*b*d)))^p)* Int[(e*x)^m*x^(b*d*p)*(1 - 1/(E^(2*a*d)*x^(2*b*d)))^p, x] /; FreeQ[{a, b, d, e, m, p}, x] && Not[IntegerQ[p]]
Int[(e_.*x_)^m_.*Cosh[d_.*(a_. + b_.*Log[x_])]^p_, x_Symbol, _:RubiNotebookReference["3695675"]] := Cosh[d*(a + b*Log[x])]^ p/(x^(b*d*p)*(1 + 1/(E^(2*a*d)*x^(2*b*d)))^p)* Int[(e*x)^m*x^(b*d*p)*(1 + 1/(E^(2*a*d)*x^(2*b*d)))^p, x] /; FreeQ[{a, b, d, e, m, p}, x] && Not[IntegerQ[p]]
Int[(e_.*x_)^m_.*Sinh[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["2ab3c42"]] := (e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst[Int[x^((m + 1)/n - 1)*Sinh[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[(e_.*x_)^m_.*Cosh[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["ed821b"]] := (e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst[Int[x^((m + 1)/n - 1)*Cosh[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[(h_.*(e_. + f_.*Log[g_.*x_^m_.]))^q_.* Sinh[d_.*(a_. + b_.*Log[c_.*x_^n_.])], x_Symbol, _:RubiNotebookReference["12fe82c"]] := -E^(-a*d)*(c*x^n)^(-b*d)/(2*x^(-b*d*n))* Int[x^(-b*d*n)*(h*(e + f*Log[g*x^m]))^q, x] + E^(a*d)*(c*x^n)^(b*d)/(2*x^(b*d*n))* Int[x^(b*d*n)*(h*(e + f*Log[g*x^m]))^q, x] /; FreeQ[{a, b, c, d, e, f, g, h, m, n, q}, x]
Int[(h_.*(e_. + f_.*Log[g_.*x_^m_.]))^q_.* Cosh[d_.*(a_. + b_.*Log[c_.*x_^n_.])], x_Symbol, _:RubiNotebookReference["a73af11"]] := E^(-a*d)*(c*x^n)^(-b*d)/(2*x^(-b*d*n))* Int[x^(-b*d*n)*(h*(e + f*Log[g*x^m]))^q, x] + E^(a*d)*(c*x^n)^(b*d)/(2*x^(b*d*n))* Int[x^(b*d*n)*(h*(e + f*Log[g*x^m]))^q, x] /; FreeQ[{a, b, c, d, e, f, g, h, m, n, q}, x]
Int[(i_.*x_)^r_.*(h_.*(e_. + f_.*Log[g_.*x_^m_.]))^q_.* Sinh[d_.*(a_. + b_.*Log[c_.*x_^n_.])], x_Symbol, _:RubiNotebookReference["bb1c526"]] := -E^(-a*d)*(i*x)^r*(c*x^n)^(-b*d)/(2*x^(r - b*d*n))* Int[x^(r - b*d*n)*(h*(e + f*Log[g*x^m]))^q, x] + E^(a*d)*(i*x)^r*(c*x^n)^(b*d)/(2*x^(r + b*d*n))* Int[x^(r + b*d*n)*(h*(e + f*Log[g*x^m]))^q, x] /; FreeQ[{a, b, c, d, e, f, g, h, i, m, n, q, r}, x]
Int[(i_.*x_)^r_.*(h_.*(e_. + f_.*Log[g_.*x_^m_.]))^q_.* Cosh[d_.*(a_. + b_.*Log[c_.*x_^n_.])], x_Symbol, _:RubiNotebookReference["bcdc99cc"]] := E^(-a*d)*(i*x)^r*(c*x^n)^(-b*d)/(2*x^(r - b*d*n))* Int[x^(r - b*d*n)*(h*(e + f*Log[g*x^m]))^q, x] + E^(a*d)*(i*x)^r*(c*x^n)^(b*d)/(2*x^(r + b*d*n))* Int[x^(r + b*d*n)*(h*(e + f*Log[g*x^m]))^q, x] /; FreeQ[{a, b, c, d, e, f, g, h, i, m, n, q, r}, x]
Int[Tanh[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["bd1ef3fb"]] := Int[(-1 + E^(2*a*d)*x^(2*b*d))^p/(1 + E^(2*a*d)*x^(2*b*d))^p, x] /; FreeQ[{a, b, d, p}, x]
Int[Coth[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["bf584da2"]] := Int[(-1 - E^(2*a*d)*x^(2*b*d))^p/(1 - E^(2*a*d)*x^(2*b*d))^p, x] /; FreeQ[{a, b, d, p}, x]
Int[Tanh[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["be9a2795"]] := x/(n*(c*x^n)^(1/n))* Subst[Int[x^(1/n - 1)*Tanh[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[Coth[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["bbd53110"]] := x/(n*(c*x^n)^(1/n))* Subst[Int[x^(1/n - 1)*Coth[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[(e_.*x_)^m_.*Tanh[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["ba175b27"]] := Int[(e*x)^m*(-1 + E^(2*a*d)*x^(2*b*d))^p/(1 + E^(2*a*d)*x^(2*b*d))^p, x] /; FreeQ[{a, b, d, e, m, p}, x]
Int[(e_.*x_)^m_.*Coth[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["b851e57e"]] := Int[(e*x)^m*(-1 - E^(2*a*d)*x^(2*b*d))^p/(1 - E^(2*a*d)*x^(2*b*d))^p, x] /; FreeQ[{a, b, d, e, m, p}, x]
Int[(e_.*x_)^m_.*Tanh[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["b9938f49"]] := (e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst[Int[x^((m + 1)/n - 1)*Tanh[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[(e_.*x_)^m_.*Coth[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["b2cfc874"]] := (e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst[Int[x^((m + 1)/n - 1)*Coth[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[Sech[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["b30da243"]] := 2^p*E^(-a*d*p)*Int[x^(-b*d*p)/(1 + E^(-2*a*d)*x^(-2*b*d))^p, x] /; FreeQ[{a, b, d}, x] && IntegerQ[p]
Int[Csch[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["210ba175"]] := 2^p*E^(-a*d*p)*Int[x^(-b*d*p)/(1 - E^(-2*a*d)*x^(-2*b*d))^p, x] /; FreeQ[{a, b, d}, x] && IntegerQ[p]
Int[Sech[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["20c9cb42"]] := Sech[d*(a + b*Log[x])]^p*(1 + E^(-2*a*d)*x^(-2*b*d))^p/x^(-b*d*p)* Int[x^(-b*d*p)/(1 + E^(-2*a*d)*x^(-2*b*d))^p, x] /; FreeQ[{a, b, d, p}, x] && Not[IntegerQ[p]]
Int[Csch[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["228f751b"]] := Csch[d*(a + b*Log[x])]^p*(1 - E^(-2*a*d)*x^(-2*b*d))^p/x^(-b*d*p)* Int[x^(-b*d*p)/(1 - E^(-2*a*d)*x^(-2*b*d))^p, x] /; FreeQ[{a, b, d, p}, x] && Not[IntegerQ[p]]
Int[Sech[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["234d1f2c"]] := x/(n*(c*x^n)^(1/n))* Subst[Int[x^(1/n - 1)*Sech[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[Csch[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["260209a9"]] := x/(n*(c*x^n)^(1/n))* Subst[Int[x^(1/n - 1)*Csch[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[(e_.*x_)^m_.*Sech[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["27c0639e"]] := 2^p*E^(-a*d*p)* Int[(e*x)^m*x^(-b*d*p)/(1 + E^(-2*a*d)*x^(-2*b*d))^p, x] /; FreeQ[{a, b, d, e, m}, x] && IntegerQ[p]
Int[(e_.*x_)^m_.*Csch[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["2586ddc7"]] := 2^p*E^(-a*d*p)* Int[(e*x)^m*x^(-b*d*p)/(1 - E^(-2*a*d)*x^(-2*b*d))^p, x] /; FreeQ[{a, b, d, e, m}, x] && IntegerQ[p]
Int[(e_.*x_)^m_.*Sech[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["2444b7f0"]] := Sech[d*(a + b*Log[x])]^p*(1 + E^(-2*a*d)*x^(-2*b*d))^p/x^(-b*d*p)* Int[(e*x)^m*x^(-b*d*p)/(1 + E^(-2*a*d)*x^(-2*b*d))^p, x] /; FreeQ[{a, b, d, e, m, p}, x] && Not[IntegerQ[p]]
Int[(e_.*x_)^m_.*Csch[d_.*(a_. + b_.*Log[x_])]^p_., x_Symbol, _:RubiNotebookReference["2f18f0cd"]] := Csch[d*(a + b*Log[x])]^p*(1 - E^(-2*a*d)*x^(-2*b*d))^p/x^(-b*d*p)* Int[(e*x)^m*x^(-b*d*p)/(1 - E^(-2*a*d)*x^(-2*b*d))^p, x] /; FreeQ[{a, b, d, e, m, p}, x] && Not[IntegerQ[p]]
Int[(e_.*x_)^m_.*Sech[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["2eda9afa"]] := (e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst[Int[x^((m + 1)/n - 1)*Sech[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[(e_.*x_)^m_.*Csch[d_.*(a_. + b_.*Log[c_.*x_^n_.])]^p_., x_Symbol, _:RubiNotebookReference["99b7c610"]] := (e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst[Int[x^((m + 1)/n - 1)*Csch[d*(a + b*Log[x])]^p, x], x, c*x^n] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && (NeQ[c, 1] || NeQ[n, 1])
Int[Sinh[a_.*x_*Log[b_.*x_]]*Log[b_.*x_], x_Symbol, _:RubiNotebookReference["9875ac27"]] := Cosh[a*x*Log[b*x]]/a - Int[Sinh[a*x*Log[b*x]], x] /; FreeQ[{a, b}, x]
Int[Cosh[a_.*x_*Log[b_.*x_]]*Log[b_.*x_], x_Symbol, _:RubiNotebookReference["9a33127e"]] := Sinh[a*x*Log[b*x]]/a - Int[Cosh[a*x*Log[b*x]], x] /; FreeQ[{a, b}, x]
Int[x_^m_.*Sinh[a_.*x_^n_.*Log[b_.*x_]]*Log[b_.*x_], x_Symbol, _:RubiNotebookReference["9bf17849"]] := Cosh[a*x^n*Log[b*x]]/(a*n) - 1/n*Int[x^m*Sinh[a*x^n*Log[b*x]], x] /; FreeQ[{a, b, m, n}, x] && EqQ[m, n - 1]
Int[x_^m_.*Cosh[a_.*x_^n_.*Log[b_.*x_]]*Log[b_.*x_], x_Symbol, _:RubiNotebookReference["9ebe6ecc"]] := Sinh[a*x^n*Log[b*x]]/(a*n) - 1/n*Int[x^m*Cosh[a*x^n*Log[b*x]], x] /; FreeQ[{a, b, m, n}, x] && EqQ[m, n - 1]
