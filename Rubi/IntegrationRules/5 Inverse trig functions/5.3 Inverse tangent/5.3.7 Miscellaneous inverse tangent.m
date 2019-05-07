
(* ::Subsection::Closed:: *)
(* 5.3.7 Miscellaneous inverse tangent *)
Int[ArcTan[a_ + b_.*x_^n_], x_Symbol, _:RubiNotebookReference["ae441ec"]] := x*ArcTan[a + b*x^n] - b*n*Int[x^n/(1 + a^2 + 2*a*b*x^n + b^2*x^(2*n)), x] /; FreeQ[{a, b, n}, x]
Int[ArcCot[a_ + b_.*x_^n_], x_Symbol, _:RubiNotebookReference["8a2ffb5"]] := x*ArcCot[a + b*x^n] + b*n*Int[x^n/(1 + a^2 + 2*a*b*x^n + b^2*x^(2*n)), x] /; FreeQ[{a, b, n}, x]
Int[ArcTan[a_. + b_.*x_^n_]/x_, x_Symbol, _:RubiNotebookReference["9609582"]] := I/2*Int[Log[1 - I*a - I*b*x^n]/x, x] - I/2*Int[Log[1 + I*a + I*b*x^n]/x, x] /; FreeQ[{a, b, n}, x]
Int[ArcCot[a_. + b_.*x_^n_]/x_, x_Symbol, _:RubiNotebookReference["c2f8307"]] := I/2*Int[Log[1 - I/(a + b*x^n)]/x, x] - I/2*Int[Log[1 + I/(a + b*x^n)]/x, x] /; FreeQ[{a, b, n}, x]
Int[x_^m_.*ArcTan[a_ + b_.*x_^n_], x_Symbol, _:RubiNotebookReference["dede930"]] := x^(m + 1)*ArcTan[a + b*x^n]/(m + 1) - b*n/(m + 1)* Int[x^(m + n)/(1 + a^2 + 2*a*b*x^n + b^2*x^(2*n)), x] /; FreeQ[{a, b}, x] && RationalQ[m, n] && m + 1 != 0 && m + 1 != n
Int[x_^m_.*ArcCot[a_ + b_.*x_^n_], x_Symbol, _:RubiNotebookReference["fab5769"]] := x^(m + 1)*ArcCot[a + b*x^n]/(m + 1) + b*n/(m + 1)* Int[x^(m + n)/(1 + a^2 + 2*a*b*x^n + b^2*x^(2*n)), x] /; FreeQ[{a, b}, x] && RationalQ[m, n] && m + 1 != 0 && m + 1 != n
Int[ArcTan[a_. + b_.*f_^(c_. + d_.*x_)], x_Symbol, _:RubiNotebookReference["e693d5e"]] := I/2*Int[Log[1 - I*a - I*b*f^(c + d*x)], x] - I/2*Int[Log[1 + I*a + I*b*f^(c + d*x)], x] /; FreeQ[{a, b, c, d, f}, x]
Int[ArcCot[a_. + b_.*f_^(c_. + d_.*x_)], x_Symbol, _:RubiNotebookReference["5357a63"]] := I/2*Int[Log[1 - I/(a + b*f^(c + d*x))], x] - I/2*Int[Log[1 + I/(a + b*f^(c + d*x))], x] /; FreeQ[{a, b, c, d, f}, x] 
Int[x_^m_.*ArcTan[a_. + b_.*f_^(c_. + d_.*x_)], x_Symbol, _:RubiNotebookReference["4f71054"]] := I/2*Int[x^m*Log[1 - I*a - I*b*f^(c + d*x)], x] - I/2*Int[x^m*Log[1 + I*a + I*b*f^(c + d*x)], x] /; FreeQ[{a, b, c, d, f}, x] && IntegerQ[m] && m > 0
Int[x_^m_.*ArcCot[a_. + b_.*f_^(c_. + d_.*x_)], x_Symbol, _:RubiNotebookReference["2e61d0a5"]] := I/2*Int[x^m*Log[1 - I/(a + b*f^(c + d*x))], x] - I/2*Int[x^m*Log[1 + I/(a + b*f^(c + d*x))], x] /; FreeQ[{a, b, c, d, f}, x] && IntegerQ[m] && m > 0
Int[u_.*ArcTan[c_./(a_. + b_.*x_^n_.)]^m_., x_Symbol, _:RubiNotebookReference["2fa3ba92"]] := Int[u*ArcCot[a/c + b*x^n/c]^m, x] /; FreeQ[{a, b, c, n, m}, x]
Int[u_.*ArcCot[c_./(a_. + b_.*x_^n_.)]^m_., x_Symbol, _:RubiNotebookReference["2de504cb"]] := Int[u*ArcTan[a/c + b*x^n/c]^m, x] /; FreeQ[{a, b, c, n, m}, x]
Int[ArcTan[c_.*x_/Sqrt[a_. + b_.*x_^2]], x_Symbol, _:RubiNotebookReference["2c276efc"]] := x*ArcTan[(c*x)/Sqrt[a + b*x^2]] - c*Int[x/Sqrt[a + b*x^2], x] /; FreeQ[{a, b, c}, x] && EqQ[b + c^2, 0]
Int[ArcCot[c_.*x_/Sqrt[a_. + b_.*x_^2]], x_Symbol, _:RubiNotebookReference["29687879"]] := x*ArcCot[(c*x)/Sqrt[a + b*x^2]] + c*Int[x/Sqrt[a + b*x^2], x] /; FreeQ[{a, b, c}, x] && EqQ[b + c^2, 0]
Int[ArcTan[c_.*x_/Sqrt[a_. + b_.*x_^2]]/x_, x_Symbol, _:RubiNotebookReference["28aa124e"]] := ArcTan[c*x/Sqrt[a + b*x^2]]*Log[x] - c*Int[Log[x]/Sqrt[a + b*x^2], x] /; FreeQ[{a, b, c}, x] && EqQ[b + c^2, 0]
Int[ArcCot[c_.*x_/Sqrt[a_. + b_.*x_^2]]/x_, x_Symbol, _:RubiNotebookReference["2aecac17"]] := ArcCot[c*x/Sqrt[a + b*x^2]]*Log[x] + c*Int[Log[x]/Sqrt[a + b*x^2], x] /; FreeQ[{a, b, c}, x] && EqQ[b + c^2, 0]
Int[(d_.*x_)^m_.*ArcTan[c_.*x_/Sqrt[a_. + b_.*x_^2]], x_Symbol, _:RubiNotebookReference["2b2ec620"]] := (d*x)^(m + 1)* ArcTan[(c*x)/Sqrt[a + b*x^2]]/(d*(m + 1)) - c/(d*(m + 1))*Int[(d*x)^(m + 1)/Sqrt[a + b*x^2], x] /; FreeQ[{a, b, c, d, m}, x] && EqQ[b + c^2, 0] && NeQ[m, -1]
Int[(d_.*x_)^m_.*ArcCot[c_.*x_/Sqrt[a_. + b_.*x_^2]], x_Symbol, _:RubiNotebookReference["2072811d"]] := (d*x)^(m + 1)* ArcCot[(c*x)/Sqrt[a + b*x^2]]/(d*(m + 1)) + c/(d*(m + 1))*Int[(d*x)^(m + 1)/Sqrt[a + b*x^2], x] /; FreeQ[{a, b, c, d, m}, x] && EqQ[b + c^2, 0] && NeQ[m, -1]
Int[1/(Sqrt[a_. + b_.*x_^2]*ArcTan[c_.*x_/Sqrt[a_. + b_.*x_^2]]), x_Symbol, _:RubiNotebookReference["21b0eb2a"]] := 1/c*Log[ArcTan[c*x/Sqrt[a + b*x^2]]] /; FreeQ[{a, b, c}, x] && EqQ[b + c^2, 0]
Int[1/(Sqrt[a_. + b_.*x_^2]*ArcCot[c_.*x_/Sqrt[a_. + b_.*x_^2]]), x_Symbol, _:RubiNotebookReference["3cd47f4b"]] := -1/c*Log[ArcCot[c*x/Sqrt[a + b*x^2]]] /; FreeQ[{a, b, c}, x] && EqQ[b + c^2, 0]
Int[ArcTan[c_.*x_/Sqrt[a_. + b_.*x_^2]]^m_./Sqrt[a_. + b_.*x_^2], x_Symbol, _:RubiNotebookReference["3d16157c"]] := ArcTan[c*x/Sqrt[a + b*x^2]]^(m + 1)/(c*(m + 1)) /; FreeQ[{a, b, c, m}, x] && EqQ[b + c^2, 0] && NeQ[m, -1]
Int[ArcCot[c_.*x_/Sqrt[a_. + b_.*x_^2]]^m_./Sqrt[a_. + b_.*x_^2], x_Symbol, _:RubiNotebookReference["3f50ab25"]] := -ArcCot[c*x/Sqrt[a + b*x^2]]^(m + 1)/(c*(m + 1)) /; FreeQ[{a, b, c, m}, x] && EqQ[b + c^2, 0] && NeQ[m, -1]
Int[ArcTan[c_.*x_/Sqrt[a_. + b_.*x_^2]]^m_./Sqrt[d_. + e_.*x_^2], x_Symbol, _:RubiNotebookReference["3e92c112"]] := Sqrt[a + b*x^2]/Sqrt[d + e*x^2]* Int[ArcTan[c*x/Sqrt[a + b*x^2]]^m/Sqrt[a + b*x^2], x] /; FreeQ[{a, b, c, d, e, m}, x] && EqQ[b + c^2, 0] && EqQ[b*d - a*e, 0]
Int[ArcCot[c_.*x_/Sqrt[a_. + b_.*x_^2]]^m_./Sqrt[d_. + e_.*x_^2], x_Symbol, _:RubiNotebookReference["3bddd797"]] := Sqrt[a + b*x^2]/Sqrt[d + e*x^2]* Int[ArcCot[c*x/Sqrt[a + b*x^2]]^m/Sqrt[a + b*x^2], x] /; FreeQ[{a, b, c, d, e, m}, x] && EqQ[b + c^2, 0] && EqQ[b*d - a*e, 0]
Int[u_.*ArcTan[v_ + s_.*Sqrt[w_]], x_Symbol, _:RubiNotebookReference["3a1fbda0"]] := Pi*s/4*Int[u, x] + 1/2*Int[u*ArcTan[v], x] /; EqQ[s^2, 1] && EqQ[w, v^2 + 1]
Int[u_.*ArcCot[v_ + s_.*Sqrt[w_]], x_Symbol, _:RubiNotebookReference["385903f9"]] := Pi*s/4*Int[u, x] - 1/2*Int[u*ArcTan[v], x] /; EqQ[s^2, 1] && EqQ[w, v^2 + 1]
If[TrueQ[$LoadShowSteps], Int[u_*v_^n_., x_Symbol] := With[{tmp = InverseFunctionOfLinear[u, x]}, ShowStep["", "Int[f[x,ArcTan[a+b*x]]/(1+(a+b*x)^2),x]", "Subst[Int[f[-a/b+Tan[x]/b,x],x],x,ArcTan[a+b*x]]/b", Hold[ (-Discriminant[v, x]/(4*Coefficient[v, x, 2]))^n/ Coefficient[tmp[[1]], x, 1]* Subst[ Int[SimplifyIntegrand[ SubstForInverseFunction[u, tmp, x]*Sec[x]^(2*(n + 1)), x], x], x, tmp]]] /; Not[FalseQ[tmp]] && EqQ[Head[tmp], ArcTan] && EqQ[Discriminant[v, x]*tmp[[1]]^2 + D[v, x]^2, 0]] /; SimplifyFlag && QuadraticQ[v, x] && ILtQ[n, 0] && NegQ[Discriminant[v, x]] && MatchQ[u, r_.*f_^w_ /; FreeQ[f, x]], Int[u_*v_^n_., x_Symbol, _:RubiNotebookReference["399b69ce"]] := With[{tmp = InverseFunctionOfLinear[u, x]}, (-Discriminant[v, x]/(4*Coefficient[v, x, 2]))^n/ Coefficient[tmp[[1]], x, 1]* Subst[ Int[SimplifyIntegrand[ SubstForInverseFunction[u, tmp, x]*Sec[x]^(2*(n + 1)), x], x], x, tmp] /; Not[FalseQ[tmp]] && EqQ[Head[tmp], ArcTan] && EqQ[Discriminant[v, x]*tmp[[1]]^2 + D[v, x]^2, 0]] /; QuadraticQ[v, x] && ILtQ[n, 0] && NegQ[Discriminant[v, x]] && MatchQ[u, r_.*f_^w_ /; FreeQ[f, x]]]
If[TrueQ[$LoadShowSteps], Int[u_*v_^n_., x_Symbol] := With[{tmp = InverseFunctionOfLinear[u, x]}, ShowStep["", "Int[f[x,ArcCot[a+b*x]]/(1+(a+b*x)^2),x]", "-Subst[Int[f[-a/b+Cot[x]/b,x],x],x,ArcCot[a+b*x]]/b", Hold[ -(-Discriminant[v, x]/(4*Coefficient[v, x, 2]))^n/ Coefficient[tmp[[1]], x, 1]* Subst[ Int[SimplifyIntegrand[ SubstForInverseFunction[u, tmp, x]*Csc[x]^(2*(n + 1)), x], x], x, tmp]]] /; Not[FalseQ[tmp]] && EqQ[Head[tmp], ArcCot] && EqQ[Discriminant[v, x]*tmp[[1]]^2 + D[v, x]^2, 0]] /; SimplifyFlag && QuadraticQ[v, x] && ILtQ[n, 0] && NegQ[Discriminant[v, x]] && MatchQ[u, r_.*f_^w_ /; FreeQ[f, x]], Int[u_*v_^n_., x_Symbol, _:RubiNotebookReference["32c72ef3"]] := With[{tmp = InverseFunctionOfLinear[u, x]}, -(-Discriminant[v, x]/(4*Coefficient[v, x, 2]))^n/ Coefficient[tmp[[1]], x, 1]* Subst[ Int[SimplifyIntegrand[ SubstForInverseFunction[u, tmp, x]*Csc[x]^(2*(n + 1)), x], x], x, tmp] /; Not[FalseQ[tmp]] && EqQ[Head[tmp], ArcCot] && EqQ[Discriminant[v, x]*tmp[[1]]^2 + D[v, x]^2, 0]] /; QuadraticQ[v, x] && ILtQ[n, 0] && NegQ[Discriminant[v, x]] && MatchQ[u, r_.*f_^w_ /; FreeQ[f, x]]]
Int[ArcTan[c_. + d_.*Tan[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["330544c4"]] := x*ArcTan[c + d*Tan[a + b*x]] - I*b*Int[x/(c + I*d + c*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[(c + I*d)^2, -1]
Int[ArcCot[c_. + d_.*Tan[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["8468182e"]] := x*ArcCot[c + d*Tan[a + b*x]] + I*b*Int[x/(c + I*d + c*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[(c + I*d)^2, -1]
Int[ArcTan[c_. + d_.*Cot[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["85aa7219"]] := x*ArcTan[c + d*Cot[a + b*x]] - I*b*Int[x/(c - I*d - c*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[(c - I*d)^2, -1]
Int[ArcCot[c_. + d_.*Cot[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["87eccc40"]] := x*ArcCot[c + d*Cot[a + b*x]] + I*b*Int[x/(c - I*d - c*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[(c - I*d)^2, -1]
Int[ArcTan[c_. + d_.*Tan[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["862ea677"]] := x*ArcTan[c + d*Tan[a + b*x]] - b*(1 + I*c + d)* Int[x*E^(2*I*a + 2*I*b*x)/(1 + I*c - d + (1 + I*c + d)*E^(2*I*a + 2*I*b*x)), x] + b*(1 - I*c - d)* Int[x*E^(2*I*a + 2*I*b*x)/(1 - I*c + d + (1 - I*c - d)*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d}, x] && NeQ[(c + I*d)^2, -1]
Int[ArcCot[c_. + d_.*Tan[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["8361b0f2"]] := x*ArcCot[c + d*Tan[a + b*x]] + b*(1 + I*c + d)* Int[x*E^(2*I*a + 2*I*b*x)/(1 + I*c - d + (1 + I*c + d)*E^(2*I*a + 2*I*b*x)), x] - b*(1 - I*c - d)* Int[x*E^(2*I*a + 2*I*b*x)/(1 - I*c + d + (1 - I*c - d)*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d}, x] && NeQ[(c + I*d)^2, -1]
Int[ArcTan[c_. + d_.*Cot[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["82a3dac5"]] := x*ArcTan[c + d*Cot[a + b*x]] + b*(1 + I*c - d)* Int[x*E^(2*I*a + 2*I*b*x)/(1 + I*c + d - (1 + I*c - d)*E^(2*I*a + 2*I*b*x)), x] - b*(1 - I*c + d)* Int[x*E^(2*I*a + 2*I*b*x)/(1 - I*c - d - (1 - I*c + d)*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d}, x] && NeQ[(c + I*d)^2, -1]
Int[ArcCot[c_. + d_.*Cot[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["80e5649c"]] := x*ArcCot[c + d*Cot[a + b*x]] - b*(1 + I*c - d)* Int[x*E^(2*I*a + 2*I*b*x)/(1 + I*c + d - (1 + I*c - d)*E^(2*I*a + 2*I*b*x)), x] + b*(1 - I*c + d)* Int[x*E^(2*I*a + 2*I*b*x)/(1 - I*c - d - (1 - I*c + d)*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d}, x] && NeQ[(c - I*d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcTan[c_. + d_.*Tan[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["81270eab"]] := (e + f*x)^(m + 1)* ArcTan[c + d*Tan[a + b*x]]/(f*(m + 1)) - I*b/(f*(m + 1))* Int[(e + f*x)^(m + 1)/(c + I*d + c*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && EqQ[(c + I*d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcCot[c_. + d_.*Tan[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["8a7b4996"]] := (e + f*x)^(m + 1)* ArcCot[c + d*Tan[a + b*x]]/(f*(m + 1)) + I*b/(f*(m + 1))* Int[(e + f*x)^(m + 1)/(c + I*d + c*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && EqQ[(c + I*d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcTan[c_. + d_.*Cot[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["8bb923a1"]] := (e + f*x)^(m + 1)* ArcTan[c + d*Cot[a + b*x]]/(f*(m + 1)) - I*b/(f*(m + 1))* Int[(e + f*x)^(m + 1)/(c - I*d - c*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && EqQ[(c - I*d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcCot[c_. + d_.*Cot[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["19bf2097"]] := (e + f*x)^(m + 1)* ArcCot[c + d*Cot[a + b*x]]/(f*(m + 1)) + I*b/(f*(m + 1))* Int[(e + f*x)^(m + 1)/(c - I*d - c*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && EqQ[(c - I*d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcTan[c_. + d_.*Tan[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["187d4aa0"]] := (e + f*x)^(m + 1)* ArcTan[c + d*Tan[a + b*x]]/(f*(m + 1)) - b*(1 + I*c + d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 + I*c - d + (1 + I*c + d)*E^(2*I*a + 2*I*b*x)), x] + b*(1 - I*c - d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 - I*c + d + (1 - I*c - d)*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NeQ[(c + I*d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcCot[c_. + d_.*Tan[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["1a3bf4f9"]] := (e + f*x)^(m + 1)* ArcCot[c + d*Tan[a + b*x]]/(f*(m + 1)) + b*(1 + I*c + d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 + I*c - d + (1 + I*c + d)*E^(2*I*a + 2*I*b*x)), x] - b*(1 - I*c - d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 - I*c + d + (1 - I*c - d)*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NeQ[(c + I*d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcTan[c_. + d_.*Cot[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["1bf99ece"]] := (e + f*x)^(m + 1)* ArcTan[c + d*Cot[a + b*x]]/(f*(m + 1)) + b*(1 + I*c - d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 + I*c + d - (1 + I*c - d)*E^(2*I*a + 2*I*b*x)), x] - b*(1 - I*c + d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 - I*c - d - (1 - I*c + d)*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NeQ[(c - I*d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcCot[c_. + d_.*Cot[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["1eb6884b"]] := (e + f*x)^(m + 1)* ArcCot[c + d*Cot[a + b*x]]/(f*(m + 1)) - b*(1 + I*c - d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 + I*c + d - (1 + I*c - d)*E^(2*I*a + 2*I*b*x)), x] + b*(1 - I*c + d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 - I*c - d - (1 - I*c + d)*E^(2*I*a + 2*I*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NeQ[(c - I*d)^2, -1]
Int[ArcTan[Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["1f74e27c"]] := x*ArcTan[Tanh[a + b*x]] - b*Int[x*Sech[2*a + 2*b*x], x] /; FreeQ[{a, b}, x]
Int[ArcCot[Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["1d325c25"]] := x*ArcCot[Tanh[a + b*x]] + b*Int[x*Sech[2*a + 2*b*x], x] /; FreeQ[{a, b}, x]
Int[ArcTan[Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["1cf03612"]] := x*ArcTan[Coth[a + b*x]] + b*Int[x*Sech[2*a + 2*b*x], x] /; FreeQ[{a, b}, x]
Int[ArcCot[Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["17ac712f"]] := x*ArcCot[Coth[a + b*x]] - b*Int[x*Sech[2*a + 2*b*x], x] /; FreeQ[{a, b}, x]
Int[(e_. + f_.*x_)^m_.*ArcTan[Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["166e1b18"]] := (e + f*x)^(m + 1)* ArcTan[Tanh[a + b*x]]/(f*(m + 1)) - b/(f*(m + 1))*Int[(e + f*x)^(m + 1)*Sech[2*a + 2*b*x], x] /; FreeQ[{a, b, e, f}, x] && IGtQ[m, 0]
Int[(e_. + f_.*x_)^m_.*ArcCot[Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["a10347f2"]] := (e + f*x)^(m + 1)* ArcCot[Tanh[a + b*x]]/(f*(m + 1)) + b/(f*(m + 1))*Int[(e + f*x)^(m + 1)*Sech[2*a + 2*b*x], x] /; FreeQ[{a, b, e, f}, x] && IGtQ[m, 0]
Int[(e_. + f_.*x_)^m_.*ArcTan[Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["a0c12dc5"]] := (e + f*x)^(m + 1)* ArcTan[Coth[a + b*x]]/(f*(m + 1)) + b/(f*(m + 1))*Int[(e + f*x)^(m + 1)*Sech[2*a + 2*b*x], x] /; FreeQ[{a, b, e, f}, x] && IGtQ[m, 0]
Int[(e_. + f_.*x_)^m_.*ArcCot[Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["a287939c"]] := (e + f*x)^(m + 1)* ArcCot[Coth[a + b*x]]/(f*(m + 1)) - b/(f*(m + 1))*Int[(e + f*x)^(m + 1)*Sech[2*a + 2*b*x], x] /; FreeQ[{a, b, e, f}, x] && IGtQ[m, 0]
Int[ArcTan[c_. + d_.*Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["a345f9ab"]] := x*ArcTan[c + d*Tanh[a + b*x]] - b*Int[x/(c - d + c*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[(c - d)^2, -1]
Int[ArcCot[c_. + d_.*Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["a60aef2e"]] := x*ArcCot[c + d*Tanh[a + b*x]] + b*Int[x/(c - d + c*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[(c - d)^2, -1]
Int[ArcTan[c_. + d_.*Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["a7c88519"]] := x*ArcTan[c + d*Coth[a + b*x]] - b*Int[x/(c - d - c*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[(c - d)^2, -1]
Int[ArcCot[c_. + d_.*Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["a58e3b40"]] := x*ArcCot[c + d*Coth[a + b*x]] + b*Int[x/(c - d - c*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[(c - d)^2, -1]
Int[ArcTan[c_. + d_.*Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["a44c5177"]] := x*ArcTan[c + d*Tanh[a + b*x]] + I*b*(I - c - d)* Int[x*E^(2*a + 2*b*x)/(I - c + d + (I - c - d)*E^(2*a + 2*b*x)), x] - I*b*(I + c + d)* Int[x*E^(2*a + 2*b*x)/(I + c - d + (I + c + d)*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d}, x] && NeQ[(c - d)^2, -1]
Int[ArcCot[c_. + d_.*Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["af10164a"]] := x*ArcCot[c + d*Tanh[a + b*x]] - I*b*(I - c - d)* Int[x*E^(2*a + 2*b*x)/(I - c + d + (I - c - d)*E^(2*a + 2*b*x)), x] + I*b*(I + c + d)* Int[x*E^(2*a + 2*b*x)/(I + c - d + (I + c + d)*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d}, x] && NeQ[(c - d)^2, -1]
Int[ArcTan[c_. + d_.*Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["aed27c7d"]] := x*ArcTan[c + d*Coth[a + b*x]] - I*b*(I - c - d)* Int[x*E^(2*a + 2*b*x)/(I - c + d - (I - c - d)*E^(2*a + 2*b*x)), x] + I*b*(I + c + d)* Int[x*E^(2*a + 2*b*x)/(I + c - d - (I + c + d)*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d}, x] && NeQ[(c - d)^2, -1]
Int[ArcCot[c_. + d_.*Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["b3b6e81c"]] := x*ArcCot[c + d*Coth[a + b*x]] + I*b*(I - c - d)* Int[x*E^(2*a + 2*b*x)/(I - c + d - (I - c - d)*E^(2*a + 2*b*x)), x] - I*b*(I + c + d)* Int[x*E^(2*a + 2*b*x)/(I + c - d - (I + c + d)*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d}, x] && NeQ[(c - d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcTan[c_. + d_.*Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["b274822b"]] := (e + f*x)^(m + 1)* ArcTan[c + d*Tanh[a + b*x]]/(f*(m + 1)) - b/(f*(m + 1))* Int[(e + f*x)^(m + 1)/(c - d + c*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && EqQ[(c - d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcCot[c_. + d_.*Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["b0323c72"]] := (e + f*x)^(m + 1)* ArcCot[c + d*Tanh[a + b*x]]/(f*(m + 1)) + b/(f*(m + 1))* Int[(e + f*x)^(m + 1)/(c - d + c*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && EqQ[(c - d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcTan[c_. + d_.*Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["b1f05645"]] := (e + f*x)^(m + 1)* ArcTan[c + d*Coth[a + b*x]]/(f*(m + 1)) - b/(f*(m + 1))* Int[(e + f*x)^(m + 1)/(c - d - c*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && EqQ[(c - d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcCot[c_. + d_.*Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["b4bf40c0"]] := (e + f*x)^(m + 1)* ArcCot[c + d*Coth[a + b*x]]/(f*(m + 1)) + b/(f*(m + 1))* Int[(e + f*x)^(m + 1)/(c - d - c*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && EqQ[(c - d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcTan[c_. + d_.*Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["b57d2af7"]] := (e + f*x)^(m + 1)* ArcTan[c + d*Tanh[a + b*x]]/(f*(m + 1)) + I*b*(I - c - d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(I - c + d + (I - c - d)*E^(2*a + 2*b*x)), x] - I*b*(I + c + d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(I + c - d + (I + c + d)*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NeQ[(c - d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcCot[c_. + d_.*Tanh[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["b73b94ae"]] := (e + f*x)^(m + 1)* ArcCot[c + d*Tanh[a + b*x]]/(f*(m + 1)) - I*b*(I - c - d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(I - c + d + (I - c - d)*E^(2*a + 2*b*x)), x] + I*b*(I + c + d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(I + c - d + (I + c + d)*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NeQ[(c - d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcTan[c_. + d_.*Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["b6f9fe99"]] := (e + f*x)^(m + 1)* ArcTan[c + d*Coth[a + b*x]]/(f*(m + 1)) - I*b*(I - c - d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(I - c + d - (I - c - d)*E^(2*a + 2*b*x)), x] + I*b*(I + c + d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(I + c - d - (I + c + d)*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NeQ[(c - d)^2, -1]
Int[(e_. + f_.*x_)^m_.*ArcCot[c_. + d_.*Coth[a_. + b_.*x_]], x_Symbol, _:RubiNotebookReference["bda5b9a4"]] := (e + f*x)^(m + 1)* ArcCot[c + d*Coth[a + b*x]]/(f*(m + 1)) + I*b*(I - c - d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(I - c + d - (I - c - d)*E^(2*a + 2*b*x)), x] - I*b*(I + c + d)/(f*(m + 1))* Int[(e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(I + c - d - (I + c + d)*E^(2*a + 2*b*x)), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NeQ[(c - d)^2, -1]
Int[ArcTan[u_], x_Symbol, _:RubiNotebookReference["bc67d393"]] := x*ArcTan[u] - Int[SimplifyIntegrand[x*D[u, x]/(1 + u^2), x], x] /; InverseFunctionFreeQ[u, x]
Int[ArcCot[u_], x_Symbol, _:RubiNotebookReference["b0a8f79"]] := x*ArcCot[u] + Int[SimplifyIntegrand[x*D[u, x]/(1 + u^2), x], x] /; InverseFunctionFreeQ[u, x]
Int[(c_. + d_.*x_)^m_.*(a_. + b_.*ArcTan[u_]), x_Symbol, _:RubiNotebookReference["ac8e54e"]] := (c + d*x)^(m + 1)*(a + b*ArcTan[u])/(d*(m + 1)) - b/(d*(m + 1))* Int[SimplifyIntegrand[(c + d*x)^(m + 1)*D[u, x]/(1 + u^2), x], x] /; FreeQ[{a, b, c, d, m}, x] && NeQ[m, -1] && InverseFunctionFreeQ[u, x] && Not[FunctionOfQ[(c + d*x)^(m + 1), u, x]] && FalseQ[PowerVariableExpn[u, m + 1, x]]
Int[(c_. + d_.*x_)^m_.*(a_. + b_.*ArcCot[u_]), x_Symbol, _:RubiNotebookReference["88e5b17"]] := (c + d*x)^(m + 1)*(a + b*ArcCot[u])/(d*(m + 1)) + b/(d*(m + 1))* Int[SimplifyIntegrand[(c + d*x)^(m + 1)*D[u, x]/(1 + u^2), x], x] /; FreeQ[{a, b, c, d, m}, x] && NeQ[m, -1] && InverseFunctionFreeQ[u, x] && Not[FunctionOfQ[(c + d*x)^(m + 1), u, x]] && FalseQ[PowerVariableExpn[u, m + 1, x]]
Int[v_*(a_. + b_.*ArcTan[u_]), x_Symbol, _:RubiNotebookReference["94c3120"]] := With[{w = IntHide[v, x]}, Dist[(a + b*ArcTan[u]), w, x] - b*Int[SimplifyIntegrand[w*D[u, x]/(1 + u^2), x], x] /; InverseFunctionFreeQ[w, x]] /; FreeQ[{a, b}, x] && InverseFunctionFreeQ[u, x] && Not[MatchQ[v, (c_. + d_.*x)^m_. /; FreeQ[{c, d, m}, x]]] && FalseQ[FunctionOfLinear[v*(a + b*ArcTan[u]), x]]
Int[v_*(a_. + b_.*ArcCot[u_]), x_Symbol, _:RubiNotebookReference["c0327a5"]] := With[{w = IntHide[v, x]}, Dist[(a + b*ArcCot[u]), w, x] + b*Int[SimplifyIntegrand[w*D[u, x]/(1 + u^2), x], x] /; InverseFunctionFreeQ[w, x]] /; FreeQ[{a, b}, x] && InverseFunctionFreeQ[u, x] && Not[MatchQ[v, (c_. + d_.*x)^m_. /; FreeQ[{c, d, m}, x]]] && FalseQ[FunctionOfLinear[v*(a + b*ArcCot[u]), x]]
Int[ArcTan[v_]*Log[w_]/(a_. + b_.*x_), x_Symbol, _:RubiNotebookReference["dc14d92"]] := I/2*Int[Log[1 - I*v]*Log[w]/(a + b*x), x] - I/2*Int[Log[1 + I*v]*Log[w]/(a + b*x), x] /; FreeQ[{a, b}, x] && LinearQ[v, x] && LinearQ[w, x] && EqQ[Simplify[D[v/(a + b*x), x]], 0] && EqQ[Simplify[D[w/(a + b*x), x]], 0]
Int[ArcTan[v_]*Log[w_], x_Symbol, _:RubiNotebookReference["f87f3cb"]] := x*ArcTan[v]*Log[w] - Int[SimplifyIntegrand[x*Log[w]*D[v, x]/(1 + v^2), x], x] - Int[SimplifyIntegrand[x*ArcTan[v]*D[w, x]/w, x], x] /; InverseFunctionFreeQ[v, x] && InverseFunctionFreeQ[w, x]
Int[ArcCot[v_]*Log[w_], x_Symbol, _:RubiNotebookReference["e4599fc"]] := x*ArcCot[v]*Log[w] + Int[SimplifyIntegrand[x*Log[w]*D[v, x]/(1 + v^2), x], x] - Int[SimplifyIntegrand[x*ArcCot[v]*D[w, x]/w, x], x] /; InverseFunctionFreeQ[v, x] && InverseFunctionFreeQ[w, x]
Int[u_*ArcTan[v_]*Log[w_], x_Symbol, _:RubiNotebookReference["519dec1"]] := With[{z = IntHide[u, x]}, Dist[ArcTan[v]*Log[w], z, x] - Int[SimplifyIntegrand[z*Log[w]*D[v, x]/(1 + v^2), x], x] - Int[SimplifyIntegrand[z*ArcTan[v]*D[w, x]/w, x], x] /; InverseFunctionFreeQ[z, x]] /; InverseFunctionFreeQ[v, x] && InverseFunctionFreeQ[w, x]
Int[u_*ArcCot[v_]*Log[w_], x_Symbol, _:RubiNotebookReference["4dbb4f6"]] := With[{z = IntHide[u, x]}, Dist[ArcCot[v]*Log[w], z, x] + Int[SimplifyIntegrand[z*Log[w]*D[v, x]/(1 + v^2), x], x] - Int[SimplifyIntegrand[z*ArcCot[v]*D[w, x]/w, x], x] /; InverseFunctionFreeQ[z, x]] /; InverseFunctionFreeQ[v, x] && InverseFunctionFreeQ[w, x]
