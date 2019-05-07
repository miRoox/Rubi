
(* ::Subsection::Closed:: *)
(* 9.4 Miscellaneous integration rules *)
Int[(a_. + b_.*F_[c_.*Sqrt[d_. + e_.*x_]/Sqrt[f_. + g_.*x_]])^ n_./(A_. + B_.*x_ + C_.*x_^2), x_Symbol, _:RubiNotebookReference["98f70f2b"]] := 2*e*g/(C*(e*f - d*g))* Subst[Int[(a + b*F[c*x])^n/x, x], x, Sqrt[d + e*x]/Sqrt[f + g*x]] /; FreeQ[{a, b, c, d, e, f, g, A, B, C, F}, x] && EqQ[C*d*f - A*e*g, 0] && EqQ[B*e*g - C*(e*f + d*g), 0] && IGtQ[n, 0]
Int[(a_. + b_.*F_[c_.*Sqrt[d_. + e_.*x_]/Sqrt[f_. + g_.*x_]])^ n_./(A_. + C_.*x_^2), x_Symbol, _:RubiNotebookReference["9ab1b172"]] := 2*e*g/(C*(e*f - d*g))* Subst[Int[(a + b*F[c*x])^n/x, x], x, Sqrt[d + e*x]/Sqrt[f + g*x]] /; FreeQ[{a, b, c, d, e, f, g, A, C, F}, x] && EqQ[C*d*f - A*e*g, 0] && EqQ[e*f + d*g, 0] && IGtQ[n, 0]
Int[(a_. + b_.*F_[c_.*Sqrt[d_. + e_.*x_]/Sqrt[f_. + g_.*x_]])^ n_/(A_. + B_.*x_ + C_.*x_^2), x_Symbol, _:RubiNotebookReference["9b73db45"]] := Unintegrable[(a + b*F[c*Sqrt[d + e*x]/Sqrt[f + g*x]])^ n/(A + B*x + C*x^2), x] /; FreeQ[{a, b, c, d, e, f, g, A, B, C, F, n}, x] && EqQ[C*d*f - A*e*g, 0] && EqQ[B*e*g - C*(e*f + d*g), 0] && Not[IGtQ[n, 0]]
Int[(a_. + b_.*F_[c_.*Sqrt[d_. + e_.*x_]/Sqrt[f_. + g_.*x_]])^ n_/(A_ + C_.*x_^2), x_Symbol, _:RubiNotebookReference["9e3ccdc0"]] := Unintegrable[(a + b*F[c*Sqrt[d + e*x]/Sqrt[f + g*x]])^n/(A + C*x^2), x] /; FreeQ[{a, b, c, d, e, f, g, A, C, F, n}, x] && EqQ[C*d*f - A*e*g, 0] && EqQ[e*f + d*g, 0] && Not[IGtQ[n, 0]]
Int[u_/y_, x_Symbol, _:RubiNotebookReference["9ffea7f7"]] := With[{q = DerivativeDivides[y, u, x]}, q*Log[RemoveContent[y, x]] /; Not[FalseQ[q]]]
Int[u_/(y_*w_), x_Symbol, _:RubiNotebookReference["9db819ae"]] := With[{q = DerivativeDivides[y*w, u, x]}, q*Log[RemoveContent[y*w, x]] /; Not[FalseQ[q]]]
Int[u_*y_^m_., x_Symbol, _:RubiNotebookReference["9c7a7399"]] := With[{q = DerivativeDivides[y, u, x]}, q*y^(m + 1)/(m + 1) /; Not[FalseQ[q]]] /; FreeQ[m, x] && NeQ[m, -1]
Int[u_*y_^m_.*z_^n_., x_Symbol, _:RubiNotebookReference["972634a4"]] := With[{q = DerivativeDivides[y*z, u*z^(n - m), x]}, q*y^(m + 1)*z^(m + 1)/(m + 1) /; Not[FalseQ[q]]] /; FreeQ[{m, n}, x] && NeQ[m, -1]
Int[u_, x_Symbol, _:RubiNotebookReference["96e45e93"]] := With[{v = SimplifyIntegrand[u, x]}, Int[v, x] /; SimplerIntegrandQ[v, u, x]]
Int[u_.*(e_.*Sqrt[a_. + b_.*x_^n_.] + f_.*Sqrt[c_. + d_.*x_^n_.])^m_, x_Symbol, _:RubiNotebookReference["2bf394f8"]] := (a*e^2 - c*f^2)^m* Int[ExpandIntegrand[u*(e*Sqrt[a + b*x^n] - f*Sqrt[c + d*x^n])^(-m), x], x] /; FreeQ[{a, b, c, d, e, f, n}, x] && ILtQ[m, 0] && EqQ[b*e^2 - d*f^2, 0]
Int[u_.*(e_.*Sqrt[a_. + b_.*x_^n_.] + f_.*Sqrt[c_. + d_.*x_^n_.])^m_, x_Symbol, _:RubiNotebookReference["2a31fecf"]] := (b*e^2 - d*f^2)^m* Int[ExpandIntegrand[ u*x^(m*n)*(e*Sqrt[a + b*x^n] - f*Sqrt[c + d*x^n])^(-m), x], x] /; FreeQ[{a, b, c, d, e, f, n}, x] && ILtQ[m, 0] && EqQ[a*e^2 - c*f^2, 0]
Int[u_^m_.*(a_.*u_^n_ + v_)^p_.*w_, x_Symbol, _:RubiNotebookReference["28774096"]] := Int[u^(m + n*p)*(a + u^(-n)*v)^p*w, x] /; FreeQ[{a, m, n}, x] && IntegerQ[p] && Not[GtQ[n, 0]] && Not[FreeQ[v, x]]
Int[u_*(a_. + b_.*y_)^m_.*(c_. + d_.*v_)^n_., x_Symbol, _:RubiNotebookReference["29b52aa1"]] := With[{q = DerivativeDivides[y, u, x]}, q*Subst[Int[(a + b*x)^m*(c + d*x)^n, x], x, y] /; Not[FalseQ[q]]] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[v, y]
Int[u_*(a_. + b_.*y_)^m_.*(c_. + d_.*v_)^n_.*(e_. + f_.*w_)^p_., x_Symbol, _:RubiNotebookReference["2cfa3c24"]] := With[{q = DerivativeDivides[y, u, x]}, q*Subst[Int[(a + b*x)^m*(c + d*x)^n*(e + f*x)^p, x], x, y] /; Not[FalseQ[q]]] /; FreeQ[{a, b, c, d, e, f, m, n, p}, x] && EqQ[v, y] && EqQ[w, y]
Int[u_*(a_. + b_.*y_)^m_.*(c_. + d_.*v_)^n_.*(e_. + f_.*w_)^ p_.*(g_. + h_.*z_)^q_., x_Symbol, _:RubiNotebookReference["2d385613"]] := With[{r = DerivativeDivides[y, u, x]}, r*Subst[Int[(a + b*x)^m*(c + d*x)^n*(e + f*x)^p*(g + h*x)^q, x], x, y] /; Not[FalseQ[r]]] /; FreeQ[{a, b, c, d, e, f, g, h, m, n, p, q}, x] && EqQ[v, y] && EqQ[w, y] && EqQ[z, y]
Int[u_.*(a_ + b_.*y_^n_), x_Symbol, _:RubiNotebookReference["2f7ee84a"]] := With[{q = DerivativeDivides[y, u, x]}, a*Int[u, x] + b*q*Subst[Int[x^n, x], x, y] /; Not[FalseQ[q]]] /; FreeQ[{a, b, n}, x]
Int[u_.*(a_. + b_.*y_^n_)^p_, x_Symbol, _:RubiNotebookReference["2ebc827d"]] := With[{q = DerivativeDivides[y, u, x]}, q*Subst[Int[(a + b*x^n)^p, x], x, y] /; Not[FalseQ[q]]] /; FreeQ[{a, b, n, p}, x]
Int[u_.*v_^m_.*(a_. + b_.*y_^n_)^p_., x_Symbol, _:RubiNotebookReference["25e0c540"]] := Module[{q, r}, q*r*Subst[Int[x^m*(a + b*x^n)^p, x], x, y] /; Not[FalseQ[r = Divides[y^m, v^m, x]]] && Not[FalseQ[q = DerivativeDivides[y, u, x]]]] /; FreeQ[{a, b, m, n, p}, x]
Int[u_.*(a_. + b_.*y_^n_ + c_.*v_^n2_.)^p_, x_Symbol, _:RubiNotebookReference["2422af77"]] := With[{q = DerivativeDivides[y, u, x]}, q*Subst[Int[(a + b*x^n + c*x^(2*n))^p, x], x, y] /; Not[FalseQ[q]]] /; FreeQ[{a, b, c, n, p}, x] && EqQ[n2, 2*n] && EqQ[v, y]
Int[u_.*(A_ + B_.*y_^n_) (a_. + b_.*v_^n_ + c_.*w_^n2_.)^p_., x_Symbol, _:RubiNotebookReference["39463b16"]] := With[{q = DerivativeDivides[y, u, x]}, q*Subst[Int[(A + B*x^n)*(a + b*x^n + c*x^(2*n))^p, x], x, y] /; Not[FalseQ[q]]] /; FreeQ[{a, b, c, A, B, n, p}, x] && EqQ[n2, 2*n] && EqQ[v, y] && EqQ[w, y]
Int[u_.*(A_ + B_.*y_^n_) (a_. + c_.*w_^n2_.)^p_., x_Symbol, _:RubiNotebookReference["38845121"]] := With[{q = DerivativeDivides[y, u, x]}, q*Subst[Int[(A + B*x^n)*(a + c*x^(2*n))^p, x], x, y] /; Not[FalseQ[q]]] /; FreeQ[{a, c, A, B, n, p}, x] && EqQ[n2, 2*n] && EqQ[w, y]
Int[u_.*v_^m_.*(a_. + b_.*y_^n_ + c_.*w_^n2_.)^p_., x_Symbol, _:RubiNotebookReference["3ac2ef78"]] := Module[{q, r}, q*r* Subst[Int[x^m*(a + b*x^n + c*x^(2*n))^p, x], x, y] /; Not[FalseQ[r = Divides[y^m, v^m, x]]] && Not[FalseQ[q = DerivativeDivides[y, u, x]]]] /; FreeQ[{a, b, c, m, n, p}, x] && EqQ[n2, 2*n] && EqQ[w, y]
Int[u_.*z_^m_.*(A_ + B_.*y_^n_)*(a_. + b_.*v_^n_ + c_.*w_^n2_.)^p_., x_Symbol, _:RubiNotebookReference["3b00854f"]] := Module[{q, r}, q*r* Subst[Int[x^m*(A + B*x^n)*(a + b*x^n + c*x^(2*n))^p, x], x, y] /; Not[FalseQ[r = Divides[y^m, z^m, x]]] && Not[FalseQ[q = DerivativeDivides[y, u, x]]]] /; FreeQ[{a, b, c, A, B, m, n, p}, x] && EqQ[n2, 2*n] && EqQ[v, y] && EqQ[w, y]
Int[u_.*z_^m_.*(A_ + B_.*y_^n_)*(a_. + c_.*w_^n2_.)^p_., x_Symbol, _:RubiNotebookReference["3e4f93ca"]] := Module[{q, r}, q*r* Subst[Int[x^m*(A + B*x^n)*(a + c*x^(2*n))^p, x], x, y] /; Not[FalseQ[r = Divides[y^m, z^m, x]]] && Not[FalseQ[q = DerivativeDivides[y, u, x]]]] /; FreeQ[{a, c, A, B, m, n, p}, x] && EqQ[n2, 2*n] && EqQ[w, y]
Int[u_.*(a_. + b_.*y_^n_)^m_.*(c_. + d_.*v_^n_)^p_., x_Symbol, _:RubiNotebookReference["3f8df9fd"]] := With[{q = DerivativeDivides[y, u, x]}, q*Subst[Int[(a + b*x^n)^m*(c + d*x^n)^p, x], x, y] /; Not[FalseQ[q]]] /; FreeQ[{a, b, c, d, m, n, p}, x] && EqQ[v, y]
Int[u_.*(a_. + b_.*y_^n_)^m_.*(c_. + d_.*v_^n_)^p_.*(e_. + f_.*w_^n_)^ q_., x_Symbol, _:RubiNotebookReference["3dcb47a4"]] := With[{r = DerivativeDivides[y, u, x]}, r*Subst[Int[(a + b*x^n)^m*(c + d*x^n)^p*(e + f*x^n)^q, x], x, y] /; Not[FalseQ[r]]] /; FreeQ[{a, b, c, d, e, f, m, n, p, q}, x] && EqQ[v, y] && EqQ[w, y]
Int[u_*F_^v_, x_Symbol, _:RubiNotebookReference["3c092d93"]] := With[{q = DerivativeDivides[v, u, x]}, q*F^v/Log[F] /; Not[FalseQ[q]]] /; FreeQ[F, x]
Int[u_*w_^m_.*F_^v_, x_Symbol, _:RubiNotebookReference["37556aae"]] := With[{q = DerivativeDivides[v, u, x]}, q*Subst[Int[x^m*F^x, x], x, v] /; Not[FalseQ[q]]] /; FreeQ[{F, m}, x] && EqQ[w, v]
Int[u_*(a_ + b_.*v_^p_.*w_^p_.)^m_., x_Symbol, _:RubiNotebookReference["36970099"]] := With[{c = Simplify[u/(w*D[v, x] + v*D[w, x])]}, c*Subst[Int[(a + b*x^p)^m, x], x, v*w] /; FreeQ[c, x]] /; FreeQ[{a, b, m, p}, x] && IntegerQ[p]
Int[u_*(a_ + b_.*v_^p_.*w_^q_.)^m_.*v_^r_., x_Symbol, _:RubiNotebookReference["81fa5c73"]] := With[{c = Simplify[u/(p*w*D[v, x] + q*v*D[w, x])]}, c*p/(r + 1)* Subst[Int[(a + b*x^(p/(r + 1)))^m, x], x, v^(r + 1)*w] /; FreeQ[c, x]] /; FreeQ[{a, b, m, p, q, r}, x] && EqQ[p, q*(r + 1)] && NeQ[r, -1] && IntegerQ[p/(r + 1)]
Int[u_*(a_ + b_.*v_^p_.*w_^q_.)^m_.*v_^r_.*w_^s_., x_Symbol, _:RubiNotebookReference["80383644"]] := With[{c = Simplify[u/(p*w*D[v, x] + q*v*D[w, x])]}, c*p/(r + 1)* Subst[Int[(a + b*x^(p/(r + 1)))^m, x], x, v^(r + 1)*w^(s + 1)] /; FreeQ[c, x]] /; FreeQ[{a, b, m, p, q, r, s}, x] && EqQ[p*(s + 1), q*(r + 1)] && NeQ[r, -1] && IntegerQ[p/(r + 1)]
Int[u_*(a_.*v_^p_. + b_.*w_^q_.)^m_., x_Symbol, _:RubiNotebookReference["827e881d"]] := With[{c = Simplify[u/(p*w*D[v, x] - q*v*D[w, x])]}, c*p*Subst[Int[(b + a*x^p)^m, x], x, v*w^(m*q + 1)] /; FreeQ[c, x]] /; FreeQ[{a, b, m, p, q}, x] && EqQ[p + q*(m*p + 1), 0] && IntegerQ[p] && IntegerQ[m]
(* Int[u_*(a_.*v_^p_.+b_.*w_^q_.)^m_.,x_Symbol] :=  With[{c=Simplify[u/(p*w*D[v,x]-q*v*D[w,x])]}, -c*q*Subst[Int[(a+b*x^q)^m,x],x,v^(m*p+1)*w] /; FreeQ[c,x]] /;  FreeQ[{a,b,m,p,q},x] && EqQ[p+q*(m*p+1),0] && IntegerQ[q] &&  IntegerQ[m] *)
Int[u_*(a_.*v_^p_. + b_.*w_^q_.)^m_.*v_^r_., x_Symbol, _:RubiNotebookReference["86f3f4af"]] := With[{c = Simplify[u/(p*w*D[v, x] - q*v*D[w, x])]}, -c*q*Subst[Int[(a + b*x^q)^m, x], x, v^(m*p + r + 1)*w] /; FreeQ[c, x]] /; FreeQ[{a, b, m, p, q, r}, x] && EqQ[p + q*(m*p + r + 1), 0] && IntegerQ[q] && IntegerQ[m]
Int[u_*(a_.*v_^p_. + b_.*w_^q_.)^m_.*w_^s_., x_Symbol, _:RubiNotebookReference["87319e98"]] := With[{c = Simplify[u/(p*w*D[v, x] - q*v*D[w, x])]}, -c*q/(s + 1)* Subst[Int[(a + b*x^(q/(s + 1)))^m, x], x, v^(m*p + 1)*w^(s + 1)] /; FreeQ[c, x]] /; FreeQ[{a, b, m, p, q, s}, x] && EqQ[p*(s + 1) + q*(m*p + 1), 0] && NeQ[s, -1] && IntegerQ[q/(s + 1)] && IntegerQ[m]
Int[u_*(a_.*v_^p_. + b_.*w_^q_.)^m_.*v_^r_.*w_^s_., x_Symbol, _:RubiNotebookReference["857720c1"]] := With[{c = Simplify[u/(p*w*D[v, x] - q*v*D[w, x])]}, -c*q/(s + 1)* Subst[Int[(a + b*x^(q/(s + 1)))^m, x], x, v^(m*p + r + 1)*w^(s + 1)] /; FreeQ[c, x]] /; FreeQ[{a, b, m, p, q, r, s}, x] && EqQ[p*(s + 1) + q*(m*p + r + 1), 0] && NeQ[s, -1] && IntegerQ[q/(s + 1)] && IntegerQ[m]
Int[u_*x_^m_., x_Symbol, _:RubiNotebookReference["84b54af6"]] := 1/(m + 1)*Subst[Int[SubstFor[x^(m + 1), u, x], x], x, x^(m + 1)] /; FreeQ[m, x] && NeQ[m, -1] && FunctionOfQ[x^(m + 1), u, x]
If[TrueQ[$LoadShowSteps], Int[u_, x_Symbol] := With[{lst = SubstForFractionalPowerOfLinear[u, x]}, ShowStep["", "Int[F[(a+b*x)^(1/n),x],x]", "n/b*Subst[Int[x^(n-1)*F[x,-a/b+x^n/b],x],x,(a+b*x)^(1/n)]", Hold[ lst[[2]]*lst[[4]]* Subst[Int[lst[[1]], x], x, lst[[3]]^(1/lst[[2]])]]] /; Not[FalseQ[lst]] && SubstForFractionalPowerQ[u, lst[[3]], x]] /; SimplifyFlag, Int[u_, x_Symbol, _:RubiNotebookReference["8fe90dcb"]] := With[{lst = SubstForFractionalPowerOfLinear[u, x]}, lst[[2]]*lst[[4]]* Subst[Int[lst[[1]], x], x, lst[[3]]^(1/lst[[2]])] /; Not[FalseQ[lst]] && SubstForFractionalPowerQ[u, lst[[3]], x]]]
If[TrueQ[$LoadShowSteps], Int[u_, x_Symbol] := With[{lst = SubstForFractionalPowerOfQuotientOfLinears[u, x]}, ShowStep["", "Int[F[((a+b*x)/(c+d*x))^(1/n),x],x]", "n*(b*c-a*d)*Subst[Int[x^(n-1)*F[x,(-a+c*x^n)/(b-d*x^n)]/(b-d*x^ n)^2,x],x,((a+b*x)/(c+d*x))^(1/n)]", Hold[ lst[[2]]*lst[[4]]* Subst[Int[lst[[1]], x], x, lst[[3]]^(1/lst[[2]])]]] /; Not[FalseQ[lst]]] /; SimplifyFlag, Int[u_, x_Symbol, _:RubiNotebookReference["8e2b67fc"]] := With[{lst = SubstForFractionalPowerOfQuotientOfLinears[u, x]}, lst[[2]]*lst[[4]]* Subst[Int[lst[[1]], x], x, lst[[3]]^(1/lst[[2]])] /; Not[FalseQ[lst]]]]
Int[u_.*(a_.*v_^m_.*w_^n_.*z_^q_.)^p_, x_Symbol, _:RubiNotebookReference["1c2d64ca"]] := a^IntPart[p]*(a*v^m*w^n*z^q)^ FracPart[p]/(v^(m*FracPart[p])*w^(n*FracPart[p])* z^(q*FracPart[p]))*Int[u*v^(m*p)*w^(n*p)*z^(p*q), x] /; FreeQ[{a, m, n, p, q}, x] && Not[IntegerQ[p]] && Not[FreeQ[v, x]] && Not[FreeQ[w, x]] && Not[FreeQ[z, x]]
Int[u_.*(a_.*v_^m_.*w_^n_.)^p_, x_Symbol, _:RubiNotebookReference["1def0efd"]] := a^IntPart[p]*(a*v^m*w^n)^ FracPart[p]/(v^(m*FracPart[p])*w^(n*FracPart[p]))* Int[u*v^(m*p)*w^(n*p), x] /; FreeQ[{a, m, n, p}, x] && Not[IntegerQ[p]] && Not[FreeQ[v, x]] && Not[FreeQ[w, x]]
Int[u_.*(a_.*v_^m_.)^p_, x_Symbol, _:RubiNotebookReference["1fa9b0a4"]] := a^IntPart[p]*(a*v^m)^FracPart[p]/v^(m*FracPart[p])* Int[u*v^(m*p), x] /; FreeQ[{a, m, p}, x] && Not[IntegerQ[p]] && Not[FreeQ[v, x]] && Not[EqQ[a, 1] && EqQ[m, 1]] && Not[EqQ[v, x] && EqQ[m, 1]]
Int[u_.*(a_. + b_.*x_^n_)^p_, x_Symbol, _:RubiNotebookReference["1e6bda93"]] := b^IntPart[p]*(a + b*x^n)^ FracPart[p]/(x^(n*FracPart[p])*(1 + a*x^(-n)/b)^FracPart[p])* Int[u*x^(n*p)*(1 + a*x^(-n)/b)^p, x] /; FreeQ[{a, b, p}, x] && Not[IntegerQ[p]] && ILtQ[n, 0] && Not[RationalFunctionQ[u, x]] && IntegerQ[p + 1/2]
Int[u_.*(a_. + b_.*v_^n_)^p_, x_Symbol, _:RubiNotebookReference["1b24cc16"]] := (a + b*v^n)^ FracPart[p]/(v^(n*FracPart[p])*(b + a*v^(-n))^FracPart[p])* Int[u*v^(n*p)*(b + a*v^(-n))^p, x] /; FreeQ[{a, b, p}, x] && Not[IntegerQ[p]] && ILtQ[n, 0] && BinomialQ[v, x] && Not[LinearQ[v, x]]
Int[u_.*(a_. + b_.*x_^m_.*v_^n_)^p_, x_Symbol, _:RubiNotebookReference["1ae6a621"]] := (a + b*x^m*v^n)^ FracPart[p]/(v^(n*FracPart[p])*(b*x^m + a*v^(-n))^FracPart[p])* Int[u*v^(n*p)*(b*x^m + a*v^(-n))^p, x] /; FreeQ[{a, b, m, p}, x] && Not[IntegerQ[p]] && ILtQ[n, 0] && BinomialQ[v, x]
Int[u_.*(a_.*x_^r_. + b_.*x_^s_.)^m_, x_Symbol, _:RubiNotebookReference["18a01878"]] := With[{v = (a*x^r + b*x^s)^ FracPart[ m]/(x^(r*FracPart[m])*(a + b*x^(s - r))^FracPart[m])}, v*Int[u*x^(m*r)*(a + b*x^(s - r))^m, x] /; NeQ[Simplify[v], 1]] /; FreeQ[{a, b, m, r, s}, x] && Not[IntegerQ[m]] && PosQ[s - r]
Int[u_/(a_ + b_.*x_^n_), x_Symbol, _:RubiNotebookReference["1962724f"]] := With[{v = RationalFunctionExpand[u/(a + b*x^n), x]}, Int[v, x] /; SumQ[v]] /; FreeQ[{a, b}, x] && IGtQ[n, 0]
Int[u_*(a_. + b_.*x_^n_. + c_.*x_^n2_.)^p_., x_Symbol, _:RubiNotebookReference["123e3572"]] := 1/(4^p*c^p)*Int[u*(b + 2*c*x^n)^(2*p), x] /; FreeQ[{a, b, c, n}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p] && Not[AlgebraicFunctionQ[u, x]]
Int[u_*(a_. + b_.*x_^n_. + c_.*x_^n2_.)^p_, x_Symbol, _:RubiNotebookReference["13fc5f45"]] := (a + b*x^n + c*x^(2*n))^p/(b + 2*c*x^n)^(2*p)* Int[u*(b + 2*c*x^n)^(2*p), x] /; FreeQ[{a, b, c, n, p}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]] && Not[AlgebraicFunctionQ[u, x]]
Int[u_/(a_. + b_.*x_^n_. + c_.*x_^n2_.), x_Symbol, _:RubiNotebookReference["a49103af"]] := With[{v = RationalFunctionExpand[u/(a + b*x^n + c*x^(2*n)), x]}, Int[v, x] /; SumQ[v]] /; FreeQ[{a, b, c}, x] && EqQ[n2, 2*n] && IGtQ[n, 0]
Int[u_./(a_.*x_^m_. + b_.*Sqrt[c_.*x_^n_]), x_Symbol, _:RubiNotebookReference["a5536998"]] := Int[u*(a*x^m - b*Sqrt[c*x^n])/(a^2*x^(2*m) - b^2*c*x^n), x] /; FreeQ[{a, b, c, m, n}, x]
If[TrueQ[$LoadShowSteps], Int[u_, x_Symbol] := With[{lst = FunctionOfLinear[u, x]}, ShowStep["", "Int[F[a+b*x],x]", "Subst[Int[F[x],x],x,a+b*x]/b", Hold[ Dist[1/lst[[3]], Subst[Int[lst[[1]], x], x, lst[[2]] + lst[[3]]*x], x]]] /; Not[FalseQ[lst]]] /; SimplifyFlag, Int[u_, x_Symbol, _:RubiNotebookReference["a715d7c1"]] := With[{lst = FunctionOfLinear[u, x]}, Dist[1/lst[[3]], Subst[Int[lst[[1]], x], x, lst[[2]] + lst[[3]]*x], x] /; Not[FalseQ[lst]]]]
If[TrueQ[$LoadShowSteps], Int[u_/x_, x_Symbol] := With[{lst = PowerVariableExpn[u, 0, x]}, ShowStep["", "Int[F[(c*x)^n]/x,x]", "Subst[Int[F[x]/x,x],x,(c*x)^n]/n", Hold[ 1/lst[[2]]* Subst[Int[NormalizeIntegrand[Simplify[lst[[1]]/x], x], x], x, (lst[[3]]*x)^lst[[2]]]]] /; Not[FalseQ[lst]] && NeQ[lst[[2]], 0]] /; SimplifyFlag && NonsumQ[u] && Not[RationalFunctionQ[u, x]], Int[u_/x_, x_Symbol, _:RubiNotebookReference["a6d7bdf6"]] := With[{lst = PowerVariableExpn[u, 0, x]}, 1/lst[[2]]* Subst[Int[NormalizeIntegrand[Simplify[lst[[1]]/x], x], x], x, (lst[[3]]*x)^lst[[2]]] /; Not[FalseQ[lst]] && NeQ[lst[[2]], 0]] /; NonsumQ[u] && Not[RationalFunctionQ[u, x]]]
If[TrueQ[$LoadShowSteps], Int[u_*x_^m_., x_Symbol] := With[{lst = PowerVariableExpn[u, m + 1, x]}, ShowStep["If g=GCD[m+1,n]>1,", "Int[x^m*F[x^n],x]", "1/g*Subst[Int[x^((m+1)/g-1)*F[x^(n/g)],x],x,x^g]", Hold[ 1/lst[[2]]* Subst[Int[NormalizeIntegrand[Simplify[lst[[1]]/x], x], x], x, (lst[[3]]*x)^lst[[2]]]]] /; Not[FalseQ[lst]] && NeQ[lst[[2]], m + 1]] /; SimplifyFlag && IntegerQ[m] && NeQ[m, -1] && NonsumQ[u] && (GtQ[m, 0] || Not[AlgebraicFunctionQ[u, x]]), Int[u_*x_^m_., x_Symbol, _:RubiNotebookReference["a398ab73"]] := With[{lst = PowerVariableExpn[u, m + 1, x]}, 1/lst[[2]]* Subst[Int[NormalizeIntegrand[Simplify[lst[[1]]/x], x], x], x, (lst[[3]]*x)^lst[[2]]] /; Not[FalseQ[lst]] && NeQ[lst[[2]], m + 1]] /; IntegerQ[m] && NeQ[m, -1] && NonsumQ[u] && (GtQ[m, 0] || Not[AlgebraicFunctionQ[u, x]])]
Int[x_^m_*u_, x_Symbol, _:RubiNotebookReference["a25ac144"]] := With[{k = Denominator[m]}, k*Subst[Int[x^(k*(m + 1) - 1)*ReplaceAll[u, x -> x^k], x], x, x^(1/k)]] /; FractionQ[m]
If[TrueQ[$LoadShowSteps], Int[u_, x_Symbol] := With[{lst = FunctionOfSquareRootOfQuadratic[u, x]}, ShowStep["", "Int[F[Sqrt[a+b*x+c*x^2],x],x]", "2*Subst[Int[F[(c*Sqrt[a]-b*x+Sqrt[a]*x^2)/(c-x^2),(-b+2* Sqrt[a]*x)/(c-x^2)]* (c*Sqrt[a]-b*x+Sqrt[a]*x^2)/(c-x^2)^2,x],x,(-Sqrt[a]+Sqrt[a+ b*x+c*x^2])/x]", Hold[2*Subst[Int[lst[[1]], x], x, lst[[2]]]]] /; Not[FalseQ[lst]] && EqQ[lst[[3]], 1]] /; SimplifyFlag && EulerIntegrandQ[u, x], Int[u_, x_Symbol, _:RubiNotebookReference["a01c7f1d"]] := With[{lst = FunctionOfSquareRootOfQuadratic[u, x]}, 2*Subst[Int[lst[[1]], x], x, lst[[2]]] /; Not[FalseQ[lst]] && EqQ[lst[[3]], 1]] /; EulerIntegrandQ[u, x]]
If[TrueQ[$LoadShowSteps], Int[u_, x_Symbol] := With[{lst = FunctionOfSquareRootOfQuadratic[u, x]}, ShowStep["", "Int[F[Sqrt[a+b*x+c*x^2],x],x]", "2*Subst[Int[F[(a*Sqrt[c]+b*x+Sqrt[c]*x^2)/(b+2*Sqrt[c]*x),(- a+x^2)/(b+2*Sqrt[c]*x)]* (a*Sqrt[c]+b*x+Sqrt[c]*x^2)/(b+2*Sqrt[c]*x)^2,x],x,Sqrt[c]* x+Sqrt[a+b*x+c*x^2]]", Hold[2*Subst[Int[lst[[1]], x], x, lst[[2]]]]] /; Not[FalseQ[lst]] && EqQ[lst[[3]], 2]] /; SimplifyFlag && EulerIntegrandQ[u, x], Int[u_, x_Symbol, _:RubiNotebookReference["a1de152a"]] := With[{lst = FunctionOfSquareRootOfQuadratic[u, x]}, 2*Subst[Int[lst[[1]], x], x, lst[[2]]] /; Not[FalseQ[lst]] && EqQ[lst[[3]], 2]] /; EulerIntegrandQ[u, x]]
If[TrueQ[$LoadShowSteps], Int[u_, x_Symbol] := With[{lst = FunctionOfSquareRootOfQuadratic[u, x]}, ShowStep["", "Int[F[Sqrt[a+b*x+c*x^2],x],x]", "-2*Sqrt[b^2-4*a*c]*Subst[Int[F[-Sqrt[b^2-4*a*c]*x/(c-x^2), (b*c+c*Sqrt[b^2-4*a*c]+(-b+Sqrt[b^2-4*a*c])*x^2)/(-2*c*(c- x^2))]*x/(c-x^2)^2,x], x,2*c*Sqrt[a+b*x+c*x^2]/(b-Sqrt[b^2-4*a*c]+2*c*x)]", Hold[2*Subst[Int[lst[[1]], x], x, lst[[2]]]]] /; Not[FalseQ[lst]] && EqQ[lst[[3]], 3]] /; SimplifyFlag && EulerIntegrandQ[u, x], Int[u_, x_Symbol, _:RubiNotebookReference["aa825217"]] := With[{lst = FunctionOfSquareRootOfQuadratic[u, x]}, 2*Subst[Int[lst[[1]], x], x, lst[[2]]] /; Not[FalseQ[lst]] && EqQ[lst[[3]], 3]] /; EulerIntegrandQ[u, x]]
Int[1/(a_ + b_.*v_^2), x_Symbol, _:RubiNotebookReference["ab403820"]] := (*1/(2*a)*Int[Together[1/(1-Rt[-b/a,2]*v)],x] +  1/(2*a)*Int[Together[1/(1+Rt[-b/a,2]*v)],x] /; *) 1/(2*a)*Int[Together[1/(1 - v/Rt[-a/b, 2])], x] + 1/(2*a)*Int[Together[1/(1 + v/Rt[-a/b, 2])], x] /; FreeQ[{a, b}, x]
Int[1/(a_ + b_.*v_^n_), x_Symbol, _:RubiNotebookReference["b624ac41"]] := Dist[2/(a*n), Sum[Int[Together[1/(1 - v^2/((-1)^(4*k/n)*Rt[-a/b, n/2]))], x], {k, 1, n/2}], x] /; FreeQ[{a, b}, x] && IGtQ[n/2, 1]
Int[1/(a_ + b_.*v_^n_), x_Symbol, _:RubiNotebookReference["b7e6c676"]] := Dist[1/(a*n), Sum[Int[Together[1/(1 - v/((-1)^(2*k/n)*Rt[-a/b, n]))], x], {k, 1, n}], x] /; FreeQ[{a, b}, x] && IGtQ[(n - 1)/2, 0]
Int[v_/(a_ + b_.*u_^n_.), x_Symbol, _:RubiNotebookReference["b5a0782f"]] := Int[ReplaceAll[ ExpandIntegrand[PolynomialInSubst[v, u, x]/(a + b*x^n), x], x -> u], x] /; FreeQ[{a, b}, x] && IGtQ[n, 0] && PolynomialInQ[v, u, x]
Int[u_, x_Symbol, _:RubiNotebookReference["b4621218"]] := With[{v = NormalizeIntegrand[u, x]}, Int[v, x] /; v =!= u]
Int[u_, x_Symbol, _:RubiNotebookReference["b12d049d"]] := With[{v = ExpandIntegrand[u, x]}, Int[v, x] /; SumQ[v]]
Int[u_.*(a_. + b_.*x_^m_.)^p_.*(c_. + d_.*x_^n_.)^q_., x_Symbol, _:RubiNotebookReference["b0ef6eaa"]] := (a + b*x^m)^p*(c + d*x^n)^q/x^(m*p)* Int[u*x^(m*p), x] /; FreeQ[{a, b, c, d, m, n, p, q}, x] && EqQ[a + d, 0] && EqQ[b + c, 0] && EqQ[m + n, 0] && EqQ[p + q, 0]
Int[u_*(a_ + b_.*x_^n_. + c_.*x_^n2_.)^p_, x_Symbol, _:RubiNotebookReference["b2a9d0f3"]] := Sqrt[a + b*x^n + c*x^(2*n)]/((4*c)^(p - 1/2)*(b + 2*c*x^n))* Int[u*(b + 2*c*x^n)^(2*p), x] /; FreeQ[{a, b, c, n, p}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p - 1/2]
If[TrueQ[$LoadShowSteps], Int[u_, x_Symbol] := With[{lst = SubstForFractionalPowerOfLinear[u, x]}, ShowStep["", "Int[F[(a+b*x)^(1/n),x],x]", "n/b*Subst[Int[x^(n-1)*F[x,-a/b+x^n/b],x],x,(a+b*x)^(1/n)]", Hold[ lst[[2]]*lst[[4]]* Subst[Int[lst[[1]], x], x, lst[[3]]^(1/lst[[2]])]]] /; Not[FalseQ[lst]]] /; SimplifyFlag, Int[u_, x_Symbol, _:RubiNotebookReference["b36bbac4"]] := With[{lst = SubstForFractionalPowerOfLinear[u, x]}, lst[[2]]*lst[[4]]* Subst[Int[lst[[1]], x], x, lst[[3]]^(1/lst[[2]])] /; Not[FalseQ[lst]]]]
Int[u_, x_] := CannotIntegrate[u, x]
