
(* ::Subsection::Closed:: *)
(* 1.2.1.6 (g+h x)^m (a+b x+c x^2)^p (d+e x+f x^2)^q *)
Int[(g_. + h_.*x_)^m_.*(a_ + b_.*x_ + c_.*x_^2)^ p_*(d_ + e_.*x_ + f_.*x_^2)^q_, x_Symbol, _:RubiNotebookReference["a586fbe5"]] := (c/f)^p* Int[(g + h*x)^m*(d + e*x + f*x^2)^(p + q), x] /; FreeQ[{a, b, c, d, e, f, g, h, p, q}, x] && EqQ[c*d - a*f, 0] && EqQ[b*d - a*e, 0] && (IntegerQ[p] || GtQ[c/f, 0]) && (Not[IntegerQ[q]] || LeafCount[d + e*x + f*x^2] <= LeafCount[a + b*x + c*x^2])
Int[(g_. + h_.*x_)^m_.*(a_ + b_.*x_ + c_.*x_^2)^ p_*(d_ + e_.*x_ + f_.*x_^2)^q_, x_Symbol, _:RubiNotebookReference["a7c045bc"]] := a^IntPart[p]*(a + b*x + c*x^2)^ FracPart[p]/(d^IntPart[p]*(d + e*x + f*x^2)^FracPart[p])* Int[(g + h*x)^m*(d + e*x + f*x^2)^(p + q), x] /; FreeQ[{a, b, c, d, e, f, g, h, p, q}, x] && EqQ[c*d - a*f, 0] && EqQ[b*d - a*e, 0] && Not[IntegerQ[p]] && Not[IntegerQ[q]] && Not[GtQ[c/f, 0]]
Int[(g_. + h_.*x_)^m_.*(a_ + b_.*x_ + c_.*x_^2)^ p_*(d_ + e_.*x_ + f_.*x_^2)^q_, x_Symbol, _:RubiNotebookReference["a6022f8b"]] := (a + b*x + c*x^2)^ FracPart[p]/((4*c)^IntPart[p]*(b + 2*c*x)^(2*FracPart[p]))* Int[(g + h*x)^m*(b + 2*c*x)^(2*p)*(d + e*x + f*x^2)^q, x] /; FreeQ[{a, b, c, d, e, f, g, h, m, p, q}, x] && EqQ[b^2 - 4*a*c, 0]
Int[(g_. + h_.*x_)^m_.*(a_ + b_.*x_ + c_.*x_^2)^p_*(d_ + f_.*x_^2)^q_, x_Symbol, _:RubiNotebookReference["a34d390e"]] := (a + b*x + c*x^2)^ FracPart[p]/((4*c)^IntPart[p]*(b + 2*c*x)^(2*FracPart[p]))* Int[(g + h*x)^m*(b + 2*c*x)^(2*p)*(d + f*x^2)^q, x] /; FreeQ[{a, b, c, d, f, g, h, m, p, q}, x] && EqQ[b^2 - 4*a*c, 0]
Int[(g_ + h_.*x_)^m_.*(a_ + b_.*x_ + c_.*x_^2)^ p_*(d_. + e_.*x_ + f_.*x_^2)^m_., x_Symbol, _:RubiNotebookReference["a28f5339"]] := Int[(d*g/a + f*h*x/c)^m*(a + b*x + c*x^2)^(m + p), x] /; FreeQ[{a, b, c, d, e, f, g, h, p}, x] && EqQ[c*g^2 - b*g*h + a*h^2, 0] && EqQ[c^2*d*g^2 - a*c*e*g*h + a^2*f*h^2, 0] && IntegerQ[m]
Int[(g_ + h_.*x_)^m_.*(a_ + c_.*x_^2)^p_*(d_. + e_.*x_ + f_.*x_^2)^ m_., x_Symbol, _:RubiNotebookReference["a0c9ed60"]] := Int[(d*g/a + f*h*x/c)^m*(a + c*x^2)^(m + p), x] /; FreeQ[{a, c, d, e, f, g, h, p}, x] && EqQ[c*g^2 + a*h^2, 0] && EqQ[c^2*d*g^2 - a*c*e*g*h + a^2*f*h^2, 0] && IntegerQ[m]
Int[(g_ + h_.*x_)^m_.*(a_ + b_.*x_ + c_.*x_^2)^p_*(d_. + f_.*x_^2)^ m_., x_Symbol, _:RubiNotebookReference["a10b8757"]] := Int[(d*g/a + f*h*x/c)^m*(a + b*x + c*x^2)^(m + p), x] /; FreeQ[{a, b, c, d, f, g, h, p}, x] && EqQ[c*g^2 - b*g*h + a*h^2, 0] && EqQ[c^2*d*g^2 + a^2*f*h^2, 0] && IntegerQ[m]
Int[(g_ + h_.*x_)^m_.*(a_ + c_.*x_^2)^p_*(d_. + f_.*x_^2)^m_., x_Symbol, _:RubiNotebookReference["aa57c06a"]] := Int[(d*g/a + f*h*x/c)^m*(a + c*x^2)^(m + p), x] /; FreeQ[{a, c, d, f, g, h, p}, x] && EqQ[c*g^2 + a*h^2, 0] && EqQ[c^2*d*g^2 + a^2*f*h^2, 0] && IntegerQ[m]
(* Int[(g_+h_.*x_)^m_.*(a_.+b_.*x_+c_.*x_^2)^p_*(d_.+e_.*x_+f_.*x_^2)^ q_,x_Symbol] := Int[(g+h*x)^(m+p)*(a/g+c/h*x)^p*(d+e*x+f*x^2)^q,x] /;  FreeQ[{a,b,c,d,e,f,g,h,m,q},x] && EqQ[c*g^2-b*g*h+a*h^2,0] &&  IntegerQ[p] *)
(* Int[(g_+h_.*x_)^m_.*(a_+c_.*x_^2)^p_*(d_.+e_.*x_+f_.*x_^2)^q_,x_ Symbol] := Int[(g+h*x)^(m+p)*(a/g+c/h*x)^p*(d+e*x+f*x^2)^q,x] /;  FreeQ[{a,c,d,e,f,g,h,m,q},x] && NeQ[e^2-4*d*f,0] &&  EqQ[c*g^2+a*h^2,0] && IntegerQ[p] *)
(* Int[(g_+h_.*x_)^m_.*(a_.+b_.*x_+c_.*x_^2)^p_*(d_.+f_.*x_^2)^q_,x_ Symbol] := Int[(g+h*x)^(m+p)*(a/g+c/h*x)^p*(d+f*x^2)^q,x] /;  FreeQ[{a,b,c,d,f,g,h,m,q},x] && NeQ[b^2-4*a*c,0] &&  EqQ[c*g^2-b*g*h+a*h^2,0] && IntegerQ[p] *)
(* Int[(g_+h_.*x_)^m_.*(a_+c_.*x_^2)^p_*(d_.+f_.*x_^2)^q_,x_Symbol] :=   Int[(g+h*x)^(m+p)*(a/g+c/h*x)^p*(d+f*x^2)^q,x] /;  FreeQ[{a,c,d,f,g,h,m,q},x] && EqQ[c*g^2+a*h^2,0] && IntegerQ[p] *)
(* Int[(g_+h_.*x_)^m_.*(a_.+b_.*x_+c_.*x_^2)^p_*(d_.+e_.*x_+f_.*x_^2)^ q_,x_Symbol] :=  (a+b*x+c*x^2)^FracPart[p]/((g+h*x)^FracPart[p]*(a/g+(c*x)/h)^FracPart[ p])*Int[(g+h*x)^(m+p)*(a/g+c/h*x)^p*(d+e*x+f*x^2)^q,x] /;  FreeQ[{a,b,c,d,e,f,g,h,m,q},x] && EqQ[c*g^2-b*g*h+a*h^2,0] &&  Not[IntegerQ[p]] *)
(* Int[(g_+h_.*x_)^m_.*(a_+c_.*x_^2)^p_*(d_.+e_.*x_+f_.*x_^2)^q_,x_ Symbol] :=  (a+c*x^2)^FracPart[p]/((g+h*x)^FracPart[p]*(a/g+(c*x)/h)^FracPart[p])* Int[(g+h*x)^(m+p)*(a/g+c/h*x)^p*(d+e*x+f*x^2)^q,x] /;  FreeQ[{a,c,d,e,f,g,h,m,q},x] && NeQ[e^2-4*d*f,0] &&  EqQ[c*g^2+a*h^2,0] && Not[IntegerQ[p]] *)
(* Int[(g_+h_.*x_)^m_.*(a_.+b_.*x_+c_.*x_^2)^p_*(d_.+f_.*x_^2)^q_,x_ Symbol] :=  (a+b*x+c*x^2)^FracPart[p]/((g+h*x)^FracPart[p]*(a/g+(c*x)/h)^FracPart[ p])*Int[(g+h*x)^(m+p)*(a/g+c/h*x)^p*(d+f*x^2)^q,x] /;  FreeQ[{a,b,c,d,f,g,h,m,q},x] && NeQ[b^2-4*a*c,0] &&  EqQ[c*g^2-b*g*h+a*h^2,0] && Not[IntegerQ[p]] *)
(* Int[(g_+h_.*x_)^m_.*(a_+c_.*x_^2)^p_*(d_.+f_.*x_^2)^q_,x_Symbol] :=   (a+c*x^2)^FracPart[p]/((g+h*x)^FracPart[p]*(a/g+(c*x)/h)^FracPart[p] )*Int[(g+h*x)^(m+p)*(a/g+c/h*x)^p*(d+f*x^2)^q,x] /;  FreeQ[{a,c,d,f,g,h,m,q},x] && EqQ[c*g^2+a*h^2,0] && Not[IntegerQ[p]] *)
Int[x_^p_*(a_. + b_.*x_ + c_.*x_^2)^p_*(e_.*x_ + f_.*x_^2)^q_, x_Symbol, _:RubiNotebookReference["525d1c3e"]] := Int[(a/e + c/f*x)^p*(e*x + f*x^2)^(p + q), x] /; FreeQ[{a, b, c, e, f, q}, x] && NeQ[b^2 - 4*a*c, 0] && EqQ[c*e^2 - b*e*f + a*f^2, 0] && IntegerQ[p]
Int[x_^p_*(a_ + c_.*x_^2)^p_*(e_.*x_ + f_.*x_^2)^q_, x_Symbol, _:RubiNotebookReference["59015b03"]] := Int[(a/e + c/f*x)^p*(e*x + f*x^2)^(p + q), x] /; FreeQ[{a, c, e, f, q}, x] && EqQ[c*e^2 + a*f^2, 0] && IntegerQ[p]
Int[(g_ + h_.*x_)/((a_ + c_.*x_^2)^(1/3)*(d_ + f_.*x_^2)), x_Symbol, _:RubiNotebookReference["58c33134"]] := Sqrt[3]*h* ArcTan[1/Sqrt[3] - 2^(2/3)*(1 - 3*h*x/g)^(2/3)/(Sqrt[ 3]*(1 + 3*h*x/g)^(1/3))]/(2^(2/3)*a^(1/3)*f) + h*Log[d + f*x^2]/(2^(5/3)*a^(1/3)*f) - 3*h*Log[(1 - 3*h*x/g)^(2/3) + 2^(1/3)*(1 + 3*h*x/g)^(1/3)]/(2^(5/3)*a^(1/3)*f) /; FreeQ[{a, c, d, f, g, h}, x] && EqQ[c*d + 3*a*f, 0] && EqQ[c*g^2 + 9*a*h^2, 0] && GtQ[a, 0]
Int[(g_ + h_.*x_)/((a_ + c_.*x_^2)^(1/3)*(d_ + f_.*x_^2)), x_Symbol, _:RubiNotebookReference["45a7a555"]] := (1 + c*x^2/a)^(1/3)/(a + c*x^2)^(1/3)* Int[(g + h*x)/((1 + c*x^2/a)^(1/3)*(d + f*x^2)), x] /; FreeQ[{a, c, d, f, g, h}, x] && EqQ[c*d + 3*a*f, 0] && EqQ[c*g^2 + 9*a*h^2, 0] && Not[GtQ[a, 0]]
Int[(g_ + h_.*x_)*(a_ + c_.*x_^2)^p_*(d_ + f_.*x_^2)^q_, x_Symbol, _:RubiNotebookReference["4465cf62"]] := g*Int[(a + c*x^2)^p*(d + f*x^2)^q, x] + h*Int[x*(a + c*x^2)^p*(d + f*x^2)^q, x] /; FreeQ[{a, c, d, f, g, h, p, q}, x]
Int[(a_ + b_.*x_ + c_.*x_^2)^p_*(d_ + e_.*x_ + f_.*x_^2)^ q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["4623713b"]] := Int[ExpandIntegrand[(a + b*x + c*x^2)^p*(d + e*x + f*x^2)^ q*(g + h*x), x], x] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && IGtQ[p, 0] && IntegerQ[q]
Int[(a_ + c_.*x_^2)^p_*(d_ + e_.*x_ + f_.*x_^2)^q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["47e11b0c"]] := Int[ExpandIntegrand[(a + c*x^2)^p*(d + e*x + f*x^2)^q*(g + h*x), x], x] /; FreeQ[{a, c, d, e, f, g, h}, x] && NeQ[e^2 - 4*d*f, 0] && IntegersQ[p, q] && (GtQ[p, 0] || GtQ[q, 0])
Int[(a_ + b_.*x_ + c_.*x_^2)^p_*(d_ + e_.*x_ + f_.*x_^2)^ q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["42ae0d89"]] := (g*b - 2*a*h - (b*h - 2*g*c)*x)*(a + b*x + c*x^2)^(p + 1)*(d + e*x + f*x^2)^q/((b^2 - 4*a*c)*(p + 1)) - 1/((b^2 - 4*a*c)*(p + 1))* Int[(a + b*x + c*x^2)^(p + 1)*(d + e*x + f*x^2)^(q - 1)* Simp[e*q*(g*b - 2*a*h) - d*(b*h - 2*g*c)*(2*p + 3) + (2*f*q*(g*b - 2*a*h) - e*(b*h - 2*g*c)*(2*p + q + 3))* x - f*(b*h - 2*g*c)*(2*p + 2*q + 3)*x^2, x], x] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && LtQ[p, -1] && GtQ[q, 0]
Int[(a_ + c_.*x_^2)^p_*(d_ + e_.*x_ + f_.*x_^2)^q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["436c67be"]] := (a*h - g*c*x)*(a + c*x^2)^(p + 1)*(d + e*x + f*x^2)^ q/(2*a*c*(p + 1)) + 2/(4*a*c*(p + 1))* Int[(a + c*x^2)^(p + 1)*(d + e*x + f*x^2)^(q - 1)* Simp[g*c*d*(2*p + 3) - a*(h*e*q) + (g*c*e*(2*p + q + 3) - a*(2*h*f*q))*x + g*c*f*(2*p + 2*q + 3)*x^2, x], x] /; FreeQ[{a, c, d, e, f, g, h}, x] && NeQ[e^2 - 4*d*f, 0] && LtQ[p, -1] && GtQ[q, 0]
Int[(a_ + b_.*x_ + c_.*x_^2)^p_*(d_ + f_.*x_^2)^q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["412ad9e7"]] := (g*b - 2*a*h - (b*h - 2*g*c)*x)*(a + b*x + c*x^2)^(p + 1)*(d + f*x^2)^ q/((b^2 - 4*a*c)*(p + 1)) - 1/((b^2 - 4*a*c)*(p + 1))* Int[(a + b*x + c*x^2)^(p + 1)*(d + f*x^2)^(q - 1)* Simp[-d*(b*h - 2*g*c)*(2*p + 3) + (2*f*q*(g*b - 2*a*h))*x - f*(b*h - 2*g*c)*(2*p + 2*q + 3)*x^2, x], x] /; FreeQ[{a, b, c, d, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && LtQ[p, -1] && GtQ[q, 0]
Int[(a_ + b_.*x_ + c_.*x_^2)^p_*(d_ + e_.*x_ + f_.*x_^2)^ q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["40e8b3d0"]] := (a + b*x + c*x^2)^(p + 1)*(d + e*x + f*x^2)^(q + 1)/((b^2 - 4*a*c)*((c*d - a*f)^2 - (b*d - a*e)*(c*e - b*f))*(p + 1))* (g* c*(2*a*c*e - b*(c*d + a*f)) + (g*b - a*h)*(2*c^2*d + b^2*f - c*(b*e + 2*a*f)) + c*(g*(2*c^2*d + b^2*f - c*(b*e + 2*a*f)) - h*(b*c*d - 2*a*c*e + a*b*f))*x) + 1/((b^2 - 4*a*c)*((c*d - a*f)^2 - (b*d - a*e)*(c*e - b*f))*(p + 1))* Int[(a + b*x + c*x^2)^(p + 1)*(d + e*x + f*x^2)^q* Simp[(b*h - 2*g*c)*((c*d - a*f)^2 - (b*d - a*e)*(c*e - b*f))*(p + 1) + (b^2*(g*f) - b*(h*c*d + g*c*e + a*h*f) + 2*(g*c*(c*d - a*f) - a*(-h*c*e)))*(a*f*(p + 1) - c*d*(p + 2)) - e*((g*c)*(2*a*c*e - b*(c*d + a*f)) + (g*b - a*h)*(2*c^2*d + b^2*f - c*(b*e + 2*a*f)))*(p + q + 2) - (2* f*((g*c)*(2*a*c*e - b*(c*d + a*f)) + (g*b - a*h)*(2*c^2*d + b^2*f - c*(b*e + 2*a*f)))*(p + q + 2) - (b^2*g*f - b*(h*c*d + g*c*e + a*h*f) + 2*(g*c*(c*d - a*f) - a*(-h*c*e)))* (b*f*(p + 1) - c*e*(2*p + q + 4)))*x - c*f*(b^2*(g*f) - b*(h*c*d + g*c*e + a*h*f) + 2*(g*c*(c*d - a*f) + a*h*c*e))*(2*p + 2*q + 5)*x^2, x], x] /; FreeQ[{a, b, c, d, e, f, g, h, q}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && LtQ[p, -1] && NeQ[(c*d - a*f)^2 - (b*d - a*e)*(c*e - b*f), 0] && Not[Not[IntegerQ[p]] && ILtQ[q, -1]]
Int[(a_ + c_.*x_^2)^p_*(d_ + e_.*x_ + f_.*x_^2)^q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["4bb4f4ed"]] := (a + c*x^2)^(p + 1)*(d + e*x + f*x^2)^(q + 1)/((-4*a*c)*(a*c*e^2 + (c*d - a*f)^2)*(p + 1))* (g*c*(2*a*c*e) + (-a*h)*(2*c^2*d - c*(2*a*f)) + c*(g*(2*c^2*d - c*(2*a*f)) - h*(-2*a*c*e))*x) + 1/((-4*a*c)*(a*c*e^2 + (c*d - a*f)^2)*(p + 1))* Int[(a + c*x^2)^(p + 1)*(d + e*x + f*x^2)^q* Simp[(-2*g*c)*((c*d - a*f)^2 - (-a*e)*(c*e))*(p + 1) + (2*(g*c*(c*d - a*f) - a*(-h*c*e)))*(a*f*(p + 1) - c*d*(p + 2)) - e*((g*c)*(2*a*c*e) + (-a*h)*(2*c^2*d - c*(+2*a*f)))*(p + q + 2) - (2* f*((g*c)*(2*a*c*e) + (-a*h)*(2*c^2*d + -c*(+2*a*f)))*(p + q + 2) - (2*(g*c*(c*d - a*f) - a*(-h*c*e)))*(-c* e*(2*p + q + 4)))*x - c*f*(2*(g*c*(c*d - a*f) - a*(-h*c*e)))*(2*p + 2*q + 5)*x^2, x], x] /; FreeQ[{a, c, d, e, f, g, h, q}, x] && NeQ[e^2 - 4*d*f, 0] && LtQ[p, -1] && NeQ[a*c*e^2 + (c*d - a*f)^2, 0] && Not[Not[IntegerQ[p]] && ILtQ[q, -1]]
Int[(a_ + b_.*x_ + c_.*x_^2)^p_*(d_ + f_.*x_^2)^q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["4a769eda"]] := (a + b*x + c*x^2)^(p + 1)*(d + f*x^2)^(q + 1)/((b^2 - 4*a*c)*(b^2*d*f + (c*d - a*f)^2)*(p + 1))* ((g*c)*(-b*(c*d + a*f)) + (g*b - a*h)*(2*c^2*d + b^2*f - c*(2*a*f)) + c*(g*(2*c^2*d + b^2*f - c*(2*a*f)) - h*(b*c*d + a*b*f))*x) + 1/((b^2 - 4*a*c)*(b^2*d*f + (c*d - a*f)^2)*(p + 1))* Int[(a + b*x + c*x^2)^(p + 1)*(d + f*x^2)^q* Simp[(b*h - 2*g*c)*((c*d - a*f)^2 - (b*d)*(-b*f))*(p + 1) + (b^2*(g*f) - b*(h*c*d + a*h*f) + 2*(g*c*(c*d - a*f)))*(a*f*(p + 1) - c*d*(p + 2)) - (2* f*((g*c)*(-b*(c*d + a*f)) + (g*b - a*h)*(2*c^2*d + b^2*f - c*(2*a*f)))*(p + q + 2) - (b^2*(g*f) - b*(h*c*d + a*h*f) + 2*(g*c*(c*d - a*f)))* (b*f*(p + 1)))*x - c*f*(b^2*(g*f) - b*(h*c*d + a*h*f) + 2*(g*c*(c*d - a*f)))*(2*p + 2*q + 5)*x^2, x], x] /; FreeQ[{a, b, c, d, f, g, h, q}, x] && NeQ[b^2 - 4*a*c, 0] && LtQ[p, -1] && NeQ[b^2*d*f + (c*d - a*f)^2, 0] && Not[Not[IntegerQ[p]] && ILtQ[q, -1]]
Int[(a_ + b_.*x_ + c_.*x_^2)^p_*(d_ + e_.*x_ + f_.*x_^2)^ q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["fd1bc230"]] := h*(a + b*x + c*x^2)^p*(d + e*x + f*x^2)^(q + 1)/(2*f*(p + q + 1)) - (1/(2*f*(p + q + 1)))* Int[(a + b*x + c*x^2)^(p - 1)*(d + e*x + f*x^2)^q* Simp[h*p*(b*d - a*e) + a*(h*e - 2*g*f)*(p + q + 1) + (2*h*p*(c*d - a*f) + b*(h*e - 2*g*f)*(p + q + 1))*x + (h*p*(c*e - b*f) + c*(h*e - 2*g*f)*(p + q + 1))*x^2, x], x] /; FreeQ[{a, b, c, d, e, f, g, h, q}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && GtQ[p, 0] && NeQ[p + q + 1, 0]
Int[(a_ + c_.*x_^2)^p_*(d_ + e_.*x_ + f_.*x_^2)^q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["fcd9a807"]] := h*(a + c*x^2)^p*(d + e*x + f*x^2)^(q + 1)/(2*f*(p + q + 1)) + (1/(2*f*(p + q + 1)))* Int[(a + c*x^2)^(p - 1)*(d + e*x + f*x^2)^q* Simp[a*h*e*p - a*(h*e - 2*g*f)*(p + q + 1) - 2*h*p*(c*d - a*f)*x - (h*c*e*p + c*(h*e - 2*g*f)*(p + q + 1))* x^2, x], x] /; FreeQ[{a, c, d, e, f, g, h, q}, x] && NeQ[e^2 - 4*d*f, 0] && GtQ[p, 0] && NeQ[p + q + 1, 0]
Int[(a_ + b_.*x_ + c_.*x_^2)^p_*(d_ + f_.*x_^2)^q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["fe9f165e"]] := h*(a + b*x + c*x^2)^p*(d + f*x^2)^(q + 1)/(2*f*(p + q + 1)) - (1/(2*f*(p + q + 1)))* Int[(a + b*x + c*x^2)^(p - 1)*(d + f*x^2)^q* Simp[h*p*(b*d) + a*(-2*g*f)*(p + q + 1) + (2*h*p*(c*d - a*f) + b*(-2*g*f)*(p + q + 1))*x + (h*p*(-b*f) + c*(-2*g*f)*(p + q + 1))*x^2, x], x] /; FreeQ[{a, b, c, d, f, g, h, q}, x] && NeQ[b^2 - 4*a*c, 0] && GtQ[p, 0] && NeQ[p + q + 1, 0]
Int[(g_. + h_.*x_)/((a_ + b_.*x_ + c_.*x_^2)*(d_ + e_.*x_ + f_.*x_^2)), x_Symbol, _:RubiNotebookReference["ff5d7c69"]] := With[{q = Simplify[ c^2*d^2 - b*c*d*e + a*c*e^2 + b^2*d*f - 2*a*c*d*f - a*b*e*f + a^2*f^2]}, 1/q*Int[ Simp[g*c^2*d - g*b*c*e + a*h*c*e + g*b^2*f - a*b*h*f - a*g*c*f + c*(h*c*d - g*c*e + g*b*f - a*h*f)*x, x]/(a + b*x + c*x^2), x] + 1/q* Int[Simp[-h*c*d*e + g*c*e^2 + b*h*d*f - g*c*d*f - g*b*e*f + a*g*f^2 - f*(h*c*d - g*c*e + g*b*f - a*h*f)*x, x]/(d + e*x + f*x^2), x] /; NeQ[q, 0]] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0]
Int[(g_. + h_.*x_)/((a_ + b_.*x_ + c_.*x_^2)*(d_ + f_.*x_^2)), x_Symbol, _:RubiNotebookReference["fa126aec"]] := With[{q = Simplify[c^2*d^2 + b^2*d*f - 2*a*c*d*f + a^2*f^2]}, 1/q*Int[ Simp[g*c^2*d + g*b^2*f - a*b*h*f - a*g*c*f + c*(h*c*d + g*b*f - a*h*f)*x, x]/(a + b*x + c*x^2), x] + 1/q* Int[Simp[ b*h*d*f - g*c*d*f + a*g*f^2 - f*(h*c*d + g*b*f - a*h*f)*x, x]/(d + f*x^2), x] /; NeQ[q, 0]] /; FreeQ[{a, b, c, d, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0]
Int[(g_ + h_.*x_)/((a_ + b_.*x_ + c_.*x_^2)* Sqrt[d_. + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["fbd000db"]] := -2*g* Subst[Int[1/(b*d - a*e - b*x^2), x], x, Sqrt[d + e*x + f*x^2]] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && EqQ[c*e - b*f, 0] && EqQ[h*e - 2*g*f, 0]
Int[(g_. + h_.*x_)/((a_ + b_.*x_ + c_.*x_^2)* Sqrt[d_. + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["f996be82"]] := -(h*e - 2*g*f)/(2*f)* Int[1/((a + b*x + c*x^2)*Sqrt[d + e*x + f*x^2]), x] + h/(2*f)* Int[(e + 2*f*x)/((a + b*x + c*x^2)*Sqrt[d + e*x + f*x^2]), x] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && EqQ[c*e - b*f, 0] && NeQ[h*e - 2*g*f, 0]
Int[x_/((a_ + b_.*x_ + c_.*x_^2)*Sqrt[d_ + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["f854d4b5"]] := -2*e* Subst[Int[(1 - d*x^2)/(c*e - b*f - e*(2*c*d - b*e + 2*a*f)*x^2 + d^2*(c*e - b*f)*x^4), x], x, (1 + (e + Sqrt[e^2 - 4*d*f])*x/(2*d))/Sqrt[d + e*x + f*x^2]] /; FreeQ[{a, b, c, d, e, f}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && EqQ[b*d - a*e, 0]
Int[(g_ + h_.*x_)/((a_ + b_.*x_ + c_.*x_^2)* Sqrt[d_ + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["f3089388"]] := g*Subst[Int[1/(a + (c*d - a*f)*x^2), x], x, x/Sqrt[d + e*x + f*x^2]] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && EqQ[b*d - a*e, 0] && EqQ[2*h*d - g*e, 0]
Int[(g_ + h_.*x_)/((a_ + b_.*x_ + c_.*x_^2)* Sqrt[d_ + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["f2caf9bf"]] := -(2*h*d - g*e)/e* Int[1/((a + b*x + c*x^2)*Sqrt[d + e*x + f*x^2]), x] + h/e*Int[(2*d + e*x)/((a + b*x + c*x^2)*Sqrt[d + e*x + f*x^2]), x] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && EqQ[b*d - a*e, 0] && NeQ[2*h*d - g*e, 0]
Int[(g_. + h_.*x_)/((a_. + b_.*x_ + c_.*x_^2)* Sqrt[d_. + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["60ccfa89"]] := -2*g*(g*b - 2*a*h)* Subst[ Int[1/Simp[g*(g*b - 2*a*h)*(b^2 - 4*a*c) - (b*d - a*e)*x^2, x], x], x, Simp[g*b - 2*a*h - (b*h - 2*g*c)*x, x]/ Sqrt[d + e*x + f*x^2]] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && NeQ[b*d - a*e, 0] && EqQ[h^2*(b*d - a*e) - 2*g*h*(c*d - a*f) + g^2*(c*e - b*f), 0]
Int[(g_ + h_.*x_)/((a_ + c_.*x_^2)*Sqrt[d_. + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["610e90be"]] := -2*a*g*h* Subst[Int[1/Simp[2*a^2*g*h*c + a*e*x^2, x], x], x, Simp[a*h - g*c*x, x]/Sqrt[d + e*x + f*x^2]] /; FreeQ[{a, c, d, e, f, g, h}, x] && EqQ[a*h^2*e + 2*g*h*(c*d - a*f) - g^2*c*e, 0]
Int[(g_ + h_.*x_)/((a_. + b_.*x_ + c_.*x_^2)*Sqrt[d_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["63482ee7"]] := -2*g*(g*b - 2*a*h)* Subst[Int[1/Simp[g*(g*b - 2*a*h)*(b^2 - 4*a*c) - b*d*x^2, x], x], x, Simp[g*b - 2*a*h - (b*h - 2*g*c)*x, x]/Sqrt[d + f*x^2]] /; FreeQ[{a, b, c, d, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && EqQ[b*h^2*d - 2*g*h*(c*d - a*f) - g^2*b*f, 0]
Int[(g_. + h_.*x_)/((a_ + b_.*x_ + c_.*x_^2)* Sqrt[d_. + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["628a44d0"]] := With[{q = Rt[b^2 - 4*a*c, 2]}, (2*c*g - h*(b - q))/q* Int[1/((b - q + 2*c*x)*Sqrt[d + e*x + f*x^2]), x] - (2*c*g - h*(b + q))/q* Int[1/((b + q + 2*c*x)*Sqrt[d + e*x + f*x^2]), x]] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && PosQ[b^2 - 4*a*c]
Int[(g_. + h_.*x_)/((a_ + c_.*x_^2)*Sqrt[d_. + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["67c55255"]] := With[{q = Rt[-a*c, 2]}, (h/2 + c*g/(2*q))*Int[1/((-q + c*x)*Sqrt[d + e*x + f*x^2]), x] + (h/2 - c*g/(2*q))*Int[1/((q + c*x)*Sqrt[d + e*x + f*x^2]), x]] /; FreeQ[{a, c, d, e, f, g, h}, x] && NeQ[e^2 - 4*d*f, 0] && PosQ[-a*c]
Int[(g_. + h_.*x_)/((a_ + b_.*x_ + c_.*x_^2)*Sqrt[d_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["66073862"]] := With[{q = Rt[b^2 - 4*a*c, 2]}, (2*c*g - h*(b - q))/q* Int[1/((b - q + 2*c*x)*Sqrt[d + f*x^2]), x] - (2*c*g - h*(b + q))/q* Int[1/((b + q + 2*c*x)*Sqrt[d + f*x^2]), x]] /; FreeQ[{a, b, c, d, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && PosQ[b^2 - 4*a*c]
Int[(g_. + h_.*x_)/((a_. + b_.*x_ + c_.*x_^2)* Sqrt[d_. + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["6441863b"]] := With[{q = Rt[(c*d - a*f)^2 - (b*d - a*e)*(c*e - b*f), 2]}, 1/(2*q)* Int[Simp[ h*(b*d - a*e) - g*(c*d - a*f - q) - (g*(c*e - b*f) - h*(c*d - a*f + q))*x, x]/((a + b*x + c*x^2)*Sqrt[d + e*x + f*x^2]), x] - 1/(2*q)* Int[Simp[ h*(b*d - a*e) - g*(c*d - a*f + q) - (g*(c*e - b*f) - h*(c*d - a*f - q))*x, x]/((a + b*x + c*x^2)*Sqrt[d + e*x + f*x^2]), x]] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0] && NeQ[b*d - a*e, 0] && NegQ[b^2 - 4*a*c]
Int[(g_. + h_.*x_)/((a_ + c_.*x_^2)*Sqrt[d_. + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["6583ec0c"]] := With[{q = Rt[(c*d - a*f)^2 + a*c*e^2, 2]}, 1/(2*q)* Int[Simp[-a*h*e - g*(c*d - a*f - q) + (h*(c*d - a*f + q) - g*c*e)*x, x]/((a + c*x^2)*Sqrt[d + e*x + f*x^2]), x] - 1/(2*q)* Int[Simp[-a*h*e - g*(c*d - a*f + q) + (h*(c*d - a*f - q) - g*c*e)*x, x]/((a + c*x^2)*Sqrt[d + e*x + f*x^2]), x]] /; FreeQ[{a, c, d, e, f, g, h}, x] && NeQ[e^2 - 4*d*f, 0] && NegQ[-a*c]
Int[(g_. + h_.*x_)/((a_. + b_.*x_ + c_.*x_^2)*Sqrt[d_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["6edfab31"]] := With[{q = Rt[(c*d - a*f)^2 + b^2*d*f, 2]}, 1/(2*q)* Int[Simp[ h*b*d - g*(c*d - a*f - q) + (h*(c*d - a*f + q) + g*b*f)*x, x]/((a + b*x + c*x^2)*Sqrt[d + f*x^2]), x] - 1/(2*q)* Int[Simp[ h*b*d - g*(c*d - a*f + q) + (h*(c*d - a*f - q) + g*b*f)*x, x]/((a + b*x + c*x^2)*Sqrt[d + f*x^2]), x]] /; FreeQ[{a, b, c, d, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NegQ[b^2 - 4*a*c]
Int[(g_. + h_.*x_)/(Sqrt[a_ + b_.*x_ + c_.*x_^2]* Sqrt[d_ + e_.*x_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["6f1dc106"]] := With[{s = Rt[b^2 - 4*a*c, 2], t = Rt[e^2 - 4*d*f, 2]}, Sqrt[b + s + 2*c*x]*Sqrt[2*a + (b + s)*x]*Sqrt[e + t + 2*f*x]* Sqrt[2*d + (e + t)*x]/(Sqrt[a + b*x + c*x^2]* Sqrt[d + e*x + f*x^2])* Int[(g + h*x)/(Sqrt[b + s + 2*c*x]*Sqrt[2*a + (b + s)*x]* Sqrt[e + t + 2*f*x]*Sqrt[2*d + (e + t)*x]), x]] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0] && NeQ[e^2 - 4*d*f, 0]
Int[(g_. + h_.*x_)/(Sqrt[a_ + b_.*x_ + c_.*x_^2]*Sqrt[d_ + f_.*x_^2]), x_Symbol, _:RubiNotebookReference["d8709dec"]] := With[{s = Rt[b^2 - 4*a*c, 2], t = Rt[-4*d*f, 2]}, Sqrt[b + s + 2*c*x]*Sqrt[2*a + (b + s)*x]*Sqrt[t + 2*f*x]* Sqrt[2*d + t*x]/(Sqrt[a + b*x + c*x^2]*Sqrt[d + f*x^2])* Int[(g + h*x)/(Sqrt[b + s + 2*c*x]*Sqrt[2*a + (b + s)*x]* Sqrt[t + 2*f*x]*Sqrt[2*d + t*x]), x]] /; FreeQ[{a, b, c, d, f, g, h}, x] && NeQ[b^2 - 4*a*c, 0]
Int[(g_. + h_.*x_)/((a_. + b_.*x_ + c_.*x_^2)^(1/3)*(d_. + e_.*x_ + f_.*x_^2)), x_Symbol, _:RubiNotebookReference["d9b2f7db"]] := With[{q = (-9*c*h^2/(2*c*g - b*h)^2)^(1/3)}, Sqrt[3]*h*q* ArcTan[1/Sqrt[3] - 2^(2/3)*(1 - (3*h*(b + 2*c*x))/(2*c*g - b*h))^(2/3)/(Sqrt[ 3]*(1 + (3*h*(b + 2*c*x))/(2*c*g - b*h))^(1/3))]/f + h*q*Log[d + e*x + f*x^2]/(2*f) - 3*h*q* Log[(1 - 3*h*(b + 2*c*x)/(2*c*g - b*h))^(2/3) + 2^(1/3)*(1 + 3*h*(b + 2*c*x)/(2*c*g - b*h))^(1/3)]/(2*f)] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && EqQ[c*e - b*f, 0] && EqQ[c^2*d - f*(b^2 - 3*a*c), 0] && EqQ[c^2*g^2 - b*c*g*h - 2*b^2*h^2 + 9*a*c*h^2, 0] && GtQ[-9*c*h^2/(2*c*g - b*h)^2, 0]
Int[(g_. + h_.*x_)/((a_. + b_.*x_ + c_.*x_^2)^(1/3)*(d_. + e_.*x_ + f_.*x_^2)), x_Symbol, _:RubiNotebookReference["dbf44982"]] := With[{q = -c/(b^2 - 4*a*c)}, (q*(a + b*x + c*x^2))^(1/3)/(a + b*x + c*x^2)^(1/3)* Int[(g + h*x)/((q*a + b*q*x + c*q*x^2)^(1/3)*(d + e*x + f*x^2)), x]] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && EqQ[c*e - b*f, 0] && EqQ[c^2*d - f*(b^2 - 3*a*c), 0] && EqQ[c^2*g^2 - b*c*g*h - 2*b^2*h^2 + 9*a*c*h^2, 0] && Not[GtQ[4*a - b^2/c, 0]]
Int[(a_. + b_.*x_ + c_.*x_^2)^p_*(d_. + e_.*x_ + f_.*x_^2)^ q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["da3623b5"]] := Unintegrable[(a + b*x + c*x^2)^p*(d + e*x + f*x^2)^q*(g + h*x), x] /; FreeQ[{a, b, c, d, e, f, g, h, p, q}, x]
Int[(a_. + c_.*x_^2)^p_*(d_. + e_.*x_ + f_.*x_^2)^q_*(g_. + h_.*x_), x_Symbol, _:RubiNotebookReference["df793530"]] := Unintegrable[(a + c*x^2)^p*(d + e*x + f*x^2)^q*(g + h*x), x] /; FreeQ[{a, c, d, e, f, g, h, p, q}, x]
Int[(g_. + h_.*u_)^m_.*(a_. + b_.*u_ + c_.*u_^2)^ p_.*(d_. + e_.*u_ + f_.*u_^2)^q_., x_Symbol, _:RubiNotebookReference["debb5f07"]] := 1/Coefficient[u, x, 1]* Subst[Int[(g + h*x)^m*(a + b*x + c*x^2)^p*(d + e*x + f*x^2)^q, x], x, u] /; FreeQ[{a, b, c, d, e, f, g, h, m, p, q}, x] && LinearQ[u, x] && NeQ[u, x]
Int[(g_. + h_.*u_)^m_.*(a_. + c_.*u_^2)^p_.*(d_. + e_.*u_ + f_.*u_^2)^ q_., x_Symbol, _:RubiNotebookReference["dcfde15e"]] := 1/Coefficient[u, x, 1]* Subst[Int[(g + h*x)^m*(a + c*x^2)^p*(d + e*x + f*x^2)^q, x], x, u] /; FreeQ[{a, c, d, e, f, g, h, m, p, q}, x] && LinearQ[u, x] && NeQ[u, x]
