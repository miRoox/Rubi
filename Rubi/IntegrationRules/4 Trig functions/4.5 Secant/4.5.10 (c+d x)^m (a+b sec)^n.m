
(* ::Subsection::Closed:: *)
(* 4.5.10 (c+d x)^m (a+b sec)^n *)
Int[(c_. + d_.*x_)^m_.*csc[e_. + k_.*Pi + f_.*Complex[0, fz_]*x_], x_Symbol, _:RubiNotebookReference["4446caef"]] := -2*(c + d*x)^m* ArcTanh[E^(-I*k*Pi)*E^(-I*e + f*fz*x)]/(f*fz*I) - d*m/(f*fz*I)* Int[(c + d*x)^(m - 1)*Log[1 - E^(-I*k*Pi)*E^(-I*e + f*fz*x)], x] + d*m/(f*fz*I)* Int[(c + d*x)^(m - 1)*Log[1 + E^(-I*k*Pi)*E^(-I*e + f*fz*x)], x] /; FreeQ[{c, d, e, f, fz}, x] && IntegerQ[2*k] && IGtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*csc[e_. + k_.*Pi + f_.*x_], x_Symbol, _:RubiNotebookReference["460074b6"]] := -2*(c + d*x)^m* ArcTanh[E^(I*k*Pi)*E^(I*(e + f*x))]/f - d*m/f* Int[(c + d*x)^(m - 1)*Log[1 - E^(I*k*Pi)*E^(I*(e + f*x))], x] + d*m/f* Int[(c + d*x)^(m - 1)*Log[1 + E^(I*k*Pi)*E^(I*(e + f*x))], x] /; FreeQ[{c, d, e, f}, x] && IntegerQ[2*k] && IGtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*csc[e_. + f_.*Complex[0, fz_]*x_], x_Symbol, _:RubiNotebookReference["47c21e81"]] := -2*(c + d*x)^m*ArcTanh[E^(-I*e + f*fz*x)]/(f*fz*I) - d*m/(f*fz*I)* Int[(c + d*x)^(m - 1)*Log[1 - E^(-I*e + f*fz*x)], x] + d*m/(f*fz*I)* Int[(c + d*x)^(m - 1)*Log[1 + E^(-I*e + f*fz*x)], x] /; FreeQ[{c, d, e, f, fz}, x] && IGtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*csc[e_. + f_.*x_], x_Symbol, _:RubiNotebookReference["428d0804"]] := -2*(c + d*x)^m*ArcTanh[E^(I*(e + f*x))]/f - d*m/f*Int[(c + d*x)^(m - 1)*Log[1 - E^(I*(e + f*x))], x] + d*m/f*Int[(c + d*x)^(m - 1)*Log[1 + E^(I*(e + f*x))], x] /; FreeQ[{c, d, e, f}, x] && IGtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*csc[e_. + f_.*x_]^2, x_Symbol, _:RubiNotebookReference["434f6233"]] := -(c + d*x)^m*Cot[e + f*x]/f + d*m/f*Int[(c + d*x)^(m - 1)*Cot[e + f*x], x] /; FreeQ[{c, d, e, f}, x] && GtQ[m, 0]
Int[(c_. + d_.*x_)*(b_.*csc[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["4109dc6a"]] := -b^2*(c + d*x)* Cot[e + f*x]*(b*Csc[e + f*x])^(n - 2)/(f*(n - 1)) - b^2*d*(b*Csc[e + f*x])^(n - 2)/(f^2*(n - 1)*(n - 2)) + b^2*(n - 2)/(n - 1)*Int[(c + d*x)*(b*Csc[e + f*x])^(n - 2), x] /; FreeQ[{b, c, d, e, f}, x] && GtQ[n, 1] && NeQ[n, 2]
Int[(c_. + d_.*x_)^m_*(b_.*csc[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["40cbb65d"]] := -b^2*(c + d*x)^m* Cot[e + f*x]*(b*Csc[e + f*x])^(n - 2)/(f*(n - 1)) - b^2*d* m*(c + d*x)^(m - 1)*(b*Csc[e + f*x])^(n - 2)/(f^2*(n - 1)*(n - 2)) + b^2*(n - 2)/(n - 1)* Int[(c + d*x)^m*(b*Csc[e + f*x])^(n - 2), x] + b^2*d^2*m*(m - 1)/(f^2*(n - 1)*(n - 2))* Int[(c + d*x)^(m - 2)*(b*Csc[e + f*x])^(n - 2), x] /; FreeQ[{b, c, d, e, f}, x] && GtQ[n, 1] && NeQ[n, 2] && GtQ[m, 1]
Int[(c_. + d_.*x_)*(b_.*csc[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["4b97f160"]] := d*(b*Csc[e + f*x])^n/(f^2*n^2) + (c + d*x)*Cos[e + f*x]*(b*Csc[e + f*x])^(n + 1)/(b*f*n) + (n + 1)/(b^2*n)*Int[(c + d*x)*(b*Csc[e + f*x])^(n + 2), x] /; FreeQ[{b, c, d, e, f}, x] && LtQ[n, -1]
Int[(c_. + d_.*x_)^m_*(b_.*csc[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["4a559b57"]] := d*m*(c + d*x)^(m - 1)*(b*Csc[e + f*x])^n/(f^2*n^2) + (c + d*x)^m*Cos[e + f*x]*(b*Csc[e + f*x])^(n + 1)/(b*f*n) + (n + 1)/(b^2*n)*Int[(c + d*x)^m*(b*Csc[e + f*x])^(n + 2), x] - d^2*m*(m - 1)/(f^2*n^2)* Int[(c + d*x)^(m - 2)*(b*Csc[e + f*x])^n, x] /; FreeQ[{b, c, d, e, f}, x] && LtQ[n, -1] && GtQ[m, 1]
Int[(c_. + d_.*x_)^m_.*(b_.*csc[e_. + f_.*x_])^n_, x_Symbol, _:RubiNotebookReference["b7262394"]] := (b*Sin[e + f*x])^n*(b*Csc[e + f*x])^n* Int[(c + d*x)^m/(b*Sin[e + f*x])^n, x] /; FreeQ[{b, c, d, e, f, m, n}, x] && Not[IntegerQ[n]]
Int[(c_. + d_.*x_)^m_.*(a_ + b_.*csc[e_. + f_.*x_])^n_., x_Symbol, _:RubiNotebookReference["b6e449a3"]] := Int[ExpandIntegrand[(c + d*x)^m, (a + b*Csc[e + f*x])^n, x], x] /; FreeQ[{a, b, c, d, e, f, m}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[(c_. + d_.*x_)^m_.*(a_ + b_.*csc[e_. + f_.*x_])^n_., x_Symbol, _:RubiNotebookReference["b4a2f7fa"]] := Int[ExpandIntegrand[(c + d*x)^m, Sin[e + f*x]^(-n)/(b + a*Sin[e + f*x])^(-n), x], x] /; FreeQ[{a, b, c, d, e, f}, x] && ILtQ[n, 0] && IGtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*csc[e_. + f_.*x_]^n_., x_Symbol, _:RubiNotebookReference["b5609dcd"]] := If[MatchQ[f, f1_.*Complex[0, j_]], If[MatchQ[e, e1_. + Pi/2], Unintegrable[(c + d*x)^m*Sech[I*(e - Pi/2) + I*f*x]^n, x], (-I)^n*Unintegrable[(c + d*x)^m*Csch[-I*e - I*f*x]^n, x]], If[MatchQ[e, e1_. + Pi/2], Unintegrable[(c + d*x)^m*Sec[e - Pi/2 + f*x]^n, x], Unintegrable[(c + d*x)^m*Csc[e + f*x]^n, x]]] /; FreeQ[{c, d, e, f, m, n}, x] && IntegerQ[n]
Int[(c_. + d_.*x_)^m_.*(a_. + b_.*csc[e_. + f_.*x_])^n_., x_Symbol, _:RubiNotebookReference["b02f8b48"]] := Unintegrable[(c + d*x)^m*(a + b*Csc[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, m, n}, x]
Int[u_^m_.*(a_. + b_.*Sec[v_])^n_., x_Symbol, _:RubiNotebookReference["b1ede17f"]] := Int[ExpandToSum[u, x]^m*(a + b*Sec[ExpandToSum[v, x]])^n, x] /; FreeQ[{a, b, m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
Int[u_^m_.*(a_. + b_.*Csc[v_])^n_., x_Symbol, _:RubiNotebookReference["b3ab5f26"]] := Int[ExpandToSum[u, x]^m*(a + b*Csc[ExpandToSum[v, x]])^n, x] /; FreeQ[{a, b, m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
