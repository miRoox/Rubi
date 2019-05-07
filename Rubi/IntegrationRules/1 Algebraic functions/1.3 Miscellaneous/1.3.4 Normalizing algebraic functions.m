
(* ::Subsection::Closed:: *)
(* 1.3.4 Normalizing algebraic functions *)
Int[u_.*(c_.*(d_*(a_. + b_.* x_))^q_)^p_, x_Symbol, _:RubiNotebookReference["3c5210d4"]] := (c*(d*(a + b*x))^q)^p/(a + b*x)^(p*q)* Int[u*(a + b*x)^(p*q), x] /; FreeQ[{a, b, c, d, q, p}, x] && Not[IntegerQ[q]] && Not[IntegerQ[p]]
Int[u_.*(c_.*(d_.*(a_. + b_.* x_)^n_)^q_)^p_, x_Symbol, _:RubiNotebookReference["3e14ae8d"]] := (c*(d*(a + b*x)^n)^q)^p/(a + b*x)^(n*p*q)* Int[u*(a + b*x)^(n*p*q), x] /; FreeQ[{a, b, c, d, n, q, p}, x] && Not[IntegerQ[q]] && Not[IntegerQ[p]]
Int[u_.*(c_.*(a_. + b_.*x_^n_.)^q_)^p_, x_Symbol, _:RubiNotebookReference["3fd6c4ba"]] := Simp[(c*(a + b*x^n)^q)^p/(a + b*x^n)^(p*q)]* Int[u*(a + b*x^n)^(p*q), x] /; FreeQ[{a, b, c, n, p, q}, x] && GeQ[a, 0]
Int[u_.*(c_.*(a_ + b_.*x_^n_.)^q_)^p_, x_Symbol, _:RubiNotebookReference["3a99d23f"]] := Simp[(c*(a + b*x^n)^q)^p/(1 + b*x^n/a)^(p*q)]* Int[u*(1 + b*x^n/a)^(p*q), x] /; FreeQ[{a, b, c, n, p, q}, x] && Not[GeQ[a, 0]]
Int[u_.*(e_.*(a_. + b_.*x_^n_.)^q_.*(c_ + d_.*x_^n_.)^q_.)^p_, x_Symbol, _:RubiNotebookReference["3b5bb808"]] := Int[u*(e*(d/b)^q*(a + b*x^n)^(2*q))^p, x] /; FreeQ[{a, b, c, d, e, n, p}, x] && IntegerQ[q] && EqQ[b*c - a*d, 0]
Int[u_.*(e_.*(a_. + b_.*x_^n_.)^q_*(c_ + d_.*x_^n_.)^q_)^p_, x_Symbol, _:RubiNotebookReference["391d0651"]] := Int[u*(e*(-a^2*d/b + b*d*x^(2*n))^q)^p, x] /; FreeQ[{a, b, c, d, e, n, p}, x] && IntegerQ[q] && EqQ[b*c + a*d, 0]
(* Int[u_.*((a_.+b_.*x_^n_.)*(c_+d_.*x_^n_.))^p_,x_Symbol] :=  Int[u*(a+b*x^n)^p*(c+d*x^n)^p,x] /; FreeQ[{a,b,c,d,n,p},x] &&  EqQ[b+d,0] && GtQ[a,0] && GtQ[c,0] *)
Int[u_.*(e_.*(a_. + b_.*x_^n_.)*(c_ + d_.*x_^n_.))^p_, x_Symbol, _:RubiNotebookReference["33832b5b"]] := Int[u*(a*c*e + (b*c + a*d)*e*x^n + b*d*e*x^(2*n))^p, x] /; FreeQ[{a, b, c, d, e, n, p}, x]
Int[u_.*(e_.*(a_. + b_.*x_^n_.)/(c_ + d_.*x_^n_.))^p_, x_Symbol, _:RubiNotebookReference["3241416c"]] := (b*e/d)^p*Int[u, x] /; FreeQ[{a, b, c, d, e, n, p}, x] && EqQ[b*c - a*d, 0]
Int[u_.*(e_.*(a_. + b_.*x_^n_.)/(c_ + d_.*x_^n_.))^p_, x_Symbol, _:RubiNotebookReference["655de6a"]] := Int[u*(a*e + b*e*x^n)^p/(c + d*x^n)^p, x] /; FreeQ[{a, b, c, d, e, n, p}, x] && GtQ[b*d*e, 0] && GtQ[c - a*d/b, 0]
(* Int[u_.*(e_.*(a_.+b_.*x_^n_.)/(c_+d_.*x_^n_.))^p_,x_Symbol] :=  Int[u*(a*e+b*e*x^n)^p/(c+d*x^n)^p,x] /; FreeQ[{a,b,c,d,e,n,p},x] &&  EqQ[b*c+a*d,0] && GtQ[b*e/d,0] && GtQ[c,0] *)
(* Int[u_.*(e_.*(a_.+b_.*x_^n_.)/(c_+d_.*x_^n_.))^p_,x_Symbol] :=  Int[u*(-a*e-b*e*x^n)^p/(-c-d*x^n)^p,x] /; FreeQ[{a,b,c,d,e,n,p},x] &&  EqQ[b*c+a*d,0] && GtQ[b*e/d,0] && LtQ[c,0] *)
Int[(e_.*(a_. + b_.*x_^n_.)/(c_ + d_.*x_^n_.))^p_, x_Symbol, _:RubiNotebookReference["4136033"]] := With[{q = Denominator[p]}, q*e*(b*c - a*d)/n*Subst[ Int[ x^(q*(p + 1) - 1)*(-a*e + c*x^q)^(1/n - 1)/(b*e - d*x^q)^(1/n + 1), x], x, (e*(a + b*x^n)/(c + d*x^n))^(1/q)]] /; FreeQ[{a, b, c, d, e}, x] && FractionQ[p] && IntegerQ[1/n]
Int[x_^m_.*(e_.*(a_. + b_.*x_)/(c_ + d_.*x_))^p_, x_Symbol, _:RubiNotebookReference["15c76b6"]] := With[{q = Denominator[p]}, q*e*(b*c - a*d)* Subst[Int[ x^(q*(p + 1) - 1)*(-a*e + c*x^q)^m/(b*e - d*x^q)^(m + 2), x], x, (e*(a + b*x)/(c + d*x))^(1/q)]] /; FreeQ[{a, b, c, d, e, m}, x] && FractionQ[p] && IntegerQ[m]
Int[x_^m_.*(e_.*(a_. + b_.*x_^n_.)/(c_ + d_.*x_^n_.))^p_, x_Symbol, _:RubiNotebookReference["9e1c81"]] := 1/n*Subst[ Int[x^(Simplify[(m + 1)/n] - 1)*(e*(a + b*x)/(c + d*x))^p, x], x, x^n] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && IntegerQ[Simplify[(m + 1)/n]]
Int[(f_*x_)^m_*(e_.*(a_. + b_.*x_^n_.)/(c_ + d_.*x_^n_.))^p_, x_Symbol, _:RubiNotebookReference["2d8a2d8"]] := Simp[(c*x)^m/x^m]*Int[x^m*(e*(a + b*x^n)/(c + d*x^n))^p, x] /; FreeQ[{a, b, c, d, e, f, m, n, p}, x] && IntegerQ[Simplify[(m + 1)/n]]
Int[u_^r_.*(e_.*(a_. + b_.*x_^n_.)/(c_ + d_.*x_^n_.))^p_, x_Symbol, _:RubiNotebookReference["31ac8ef"]] := With[{q = Denominator[p]}, q*e*(b*c - a*d)/n* Subst[Int[ SimplifyIntegrand[ x^(q*(p + 1) - 1)*(-a*e + c*x^q)^(1/n - 1)/(b*e - d*x^q)^(1/n + 1)* ReplaceAll[u, x -> (-a*e + c*x^q)^(1/n)/(b*e - d*x^q)^(1/n)]^r, x], x], x, (e*(a + b*x^n)/(c + d*x^n))^(1/q)]] /; FreeQ[{a, b, c, d, e}, x] && PolynomialQ[u, x] && FractionQ[p] && IntegerQ[1/n] && IntegerQ[r]
Int[x_^m_.*u_^r_.*(e_.*(a_. + b_.*x_^n_.)/(c_ + d_.*x_^n_.))^p_, x_Symbol, _:RubiNotebookReference["8468fd2"]] := With[{q = Denominator[p]}, q*e*(b*c - a*d)/n* Subst[Int[ SimplifyIntegrand[ x^(q*(p + 1) - 1)*(-a*e + c*x^q)^((m + 1)/n - 1)/(b*e - d*x^q)^((m + 1)/n + 1)* ReplaceAll[u, x -> (-a*e + c*x^q)^(1/n)/(b*e - d*x^q)^(1/n)]^r, x], x], x, (e*(a + b*x^n)/(c + d*x^n))^(1/q)]] /; FreeQ[{a, b, c, d, e}, x] && PolynomialQ[u, x] && FractionQ[p] && IntegerQ[1/n] && IntegersQ[m, r]
Int[u_.*(a_ + b_./(c_ + d_.*x_^n_))^p_, x_Symbol, _:RubiNotebookReference["984e5e5"]] := Int[u*((b + a*c + a*d*x^n)/(c + d*x^n))^p, x] /; FreeQ[{a, b, c, d, n, p}, x]
Int[u_.*(e_.*(a_. + b_.*x_^n_.)^q_.*(c_ + d_.*x_^n_)^r_.)^p_, x_Symbol, _:RubiNotebookReference["14e07184"]] := Simp[(e*(a + b*x^n)^q*(c + d*x^n)^r)^ p/((a + b*x^n)^(p*q)*(c + d*x^n)^(p*r))]* Int[u*(a + b*x^n)^(p*q)*(c + d*x^n)^(p*r), x] /; FreeQ[{a, b, c, d, e, n, p, q, r}, x]
Int[(a_. + b_.*(c_./x_)^n_)^p_, x_Symbol, _:RubiNotebookReference["15221bb3"]] := -c*Subst[Int[(a + b*x^n)^p/x^2, x], x, c/x] /; FreeQ[{a, b, c, n, p}, x]
Int[x_^m_.*(a_. + b_.*(c_./x_)^n_)^p_, x_Symbol, _:RubiNotebookReference["1764a5ea"]] := -c^(m + 1)* Subst[Int[(a + b*x^n)^p/x^(m + 2), x], x, c/x] /; FreeQ[{a, b, c, n, p}, x] && IntegerQ[m]
Int[(d_.*x_)^m_*(a_. + b_.*(c_./x_)^n_)^p_, x_Symbol, _:RubiNotebookReference["16a6cfdd"]] := -c*(d*x)^m*(c/x)^m* Subst[Int[(a + b*x^n)^p/x^(m + 2), x], x, c/x] /; FreeQ[{a, b, c, d, m, n, p}, x] && Not[IntegerQ[m]]
Int[(a_. + b_.*(d_./x_)^n_ + c_.*(d_./x_)^n2_.)^p_, x_Symbol, _:RubiNotebookReference["13e9d958"]] := -d* Subst[Int[(a + b*x^n + c*x^(2*n))^p/x^2, x], x, d/x] /; FreeQ[{a, b, c, d, n, p}, x] && EqQ[n2, 2*n]
Int[x_^m_.*(a_ + b_.*(d_./x_)^n_ + c_.*(d_./x_)^n2_.)^p_, x_Symbol, _:RubiNotebookReference["122bb36f"]] := -d^(m + 1)* Subst[Int[(a + b*x^n + c*x^(2*n))^p/x^(m + 2), x], x, d/x] /; FreeQ[{a, b, c, d, n, p}, x] && EqQ[n2, 2*n] && IntegerQ[m]
Int[(e_.*x_)^m_*(a_ + b_.*(d_./x_)^n_ + c_.*(d_./x_)^n2_.)^p_, x_Symbol, _:RubiNotebookReference["106d0d36"]] := -d*(e*x)^m*(d/x)^m* Subst[Int[(a + b*x^n + c*x^(2*n))^p/x^(m + 2), x], x, d/x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && EqQ[n2, 2*n] && Not[IntegerQ[m]]
Int[(a_. + b_.*(d_./x_)^n_ + c_.*x_^n2_.)^p_, x_Symbol, _:RubiNotebookReference["11af6701"]] := -d* Subst[Int[(a + b*x^n + c/d^(2*n)*x^(2*n))^p/x^2, x], x, d/x] /; FreeQ[{a, b, c, d, n, p}, x] && EqQ[n2, -2*n] && IntegerQ[2*n]
Int[x_^m_.*(a_ + b_.*(d_./x_)^n_ + c_.*x_^n2_.)^p_, x_Symbol, _:RubiNotebookReference["1af3203c"]] := -d^(m + 1)* Subst[Int[(a + b*x^n + c/d^(2*n)*x^(2*n))^p/x^(m + 2), x], x, d/x] /; FreeQ[{a, b, c, d, n, p}, x] && EqQ[n2, -2*n] && IntegerQ[2*n] && IntegerQ[m]
Int[(e_.*x_)^m_*(a_ + b_.*(d_./x_)^n_ + c_.*x_^n2_.)^p_, x_Symbol, _:RubiNotebookReference["1b314a0b"]] := -d*(e*x)^m*(d/x)^m* Subst[Int[(a + b*x^n + c/d^(2*n)*x^(2*n))^p/x^(m + 2), x], x, d/x] /; FreeQ[{a, b, c, d, e, n, p}, x] && EqQ[n2, -2*n] && Not[IntegerQ[m]] && IntegerQ[2*n]
Int[u_.*(e_.*(a_ + b_.*x_^n_.)^r_.)^p_*(f_.*(c_ + d_.*x_^n_.)^s_)^q_, x_Symbol, _:RubiNotebookReference["ac5c16e1"]] := (e*(a + b*x^n)^r)^ p*(f*(c + d*x^n)^s)^q/((a + b*x^n)^(p*r)*(c + d*x^n)^(q*s))* Int[u*(a + b*x^n)^(p*r)*(c + d*x^n)^(q*s), x] /; FreeQ[{a, b, c, d, e, f, n, p, q, r, s}, x]
Int[u_^m_, x_Symbol, _:RubiNotebookReference["ad9e7cd6"]] := Int[ExpandToSum[u, x]^m, x] /; FreeQ[m, x] && LinearQ[u, x] && Not[LinearMatchQ[u, x]]
Int[u_^m_.*v_^n_., x_Symbol, _:RubiNotebookReference["afd8c28f"]] := Int[ExpandToSum[u, x]^m*ExpandToSum[v, x]^n, x] /; FreeQ[{m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
Int[u_^m_.*v_^n_.*w_^p_., x_Symbol, _:RubiNotebookReference["ae1aa8b8"]] := Int[ExpandToSum[u, x]^m*ExpandToSum[v, x]^n*ExpandToSum[w, x]^p, x] /; FreeQ[{m, n, p}, x] && LinearQ[{u, v, w}, x] && Not[LinearMatchQ[{u, v, w}, x]]
Int[u_^m_.*v_^n_.*w_^p_.*z_^q_., x_Symbol, _:RubiNotebookReference["ab55be3d"]] := Int[ExpandToSum[u, x]^m*ExpandToSum[v, x]^n*ExpandToSum[w, x]^p* ExpandToSum[z, x]^q, x] /; FreeQ[{m, n, p, q}, x] && LinearQ[{u, v, w, z}, x] && Not[LinearMatchQ[{u, v, w, z}, x]]
Int[u_^p_, x_Symbol, _:RubiNotebookReference["aa97d40a"]] := Int[ExpandToSum[u, x]^p, x] /; FreeQ[p, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[(c_.*x_)^m_.*u_^p_., x_Symbol, _:RubiNotebookReference["a8d16a53"]] := Int[(c*x)^m*ExpandToSum[u, x]^p, x] /; FreeQ[{c, m, p}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[u_^p_.*v_^q_., x_Symbol, _:RubiNotebookReference["a9130064"]] := Int[ExpandToSum[u, x]^p*ExpandToSum[v, x]^q, x] /; FreeQ[{p, q}, x] && BinomialQ[{u, v}, x] && EqQ[BinomialDegree[u, x] - BinomialDegree[v, x], 0] && Not[BinomialMatchQ[{u, v}, x]]
Int[(e_.*x_)^m_.*u_^p_.*v_^q_., x_Symbol, _:RubiNotebookReference["a24f4759"]] := Int[(e*x)^m*ExpandToSum[u, x]^p*ExpandToSum[v, x]^q, x] /; FreeQ[{e, m, p, q}, x] && BinomialQ[{u, v}, x] && EqQ[BinomialDegree[u, x] - BinomialDegree[v, x], 0] && Not[BinomialMatchQ[{u, v}, x]]
Int[u_^m_.*v_^p_.*w_^q_., x_Symbol, _:RubiNotebookReference["a38d2d6e"]] := Int[ExpandToSum[u, x]^m*ExpandToSum[v, x]^p*ExpandToSum[w, x]^q, x] /; FreeQ[{m, p, q}, x] && BinomialQ[{u, v, w}, x] && EqQ[BinomialDegree[u, x] - BinomialDegree[v, x], 0] && EqQ[BinomialDegree[u, x] - BinomialDegree[w, x], 0] && Not[BinomialMatchQ[{u, v, w}, x]]
Int[(g_.*x_)^m_.*u_^p_.*v_^q_.*z_^r_., x_Symbol, _:RubiNotebookReference["318b2e58"]] := Int[(g*x)^m*ExpandToSum[u, x]^p*ExpandToSum[v, x]^q* ExpandToSum[z, x]^r, x] /; FreeQ[{g, m, p, q, r}, x] && BinomialQ[{u, v, z}, x] && EqQ[BinomialDegree[u, x] - BinomialDegree[v, x], 0] && EqQ[BinomialDegree[u, x] - BinomialDegree[z, x], 0] && Not[BinomialMatchQ[{u, v, z}, x]]
Int[(c_.*x_)^m_.*Pq_*u_^p_., x_Symbol, _:RubiNotebookReference["3049446f"]] := Int[(c*x)^m*Pq*ExpandToSum[u, x]^p, x] /; FreeQ[{c, m, p}, x] && PolyQ[Pq, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[u_^p_, x_Symbol, _:RubiNotebookReference["320ffa36"]] := Int[ExpandToSum[u, x]^p, x] /; FreeQ[p, x] && GeneralizedBinomialQ[u, x] && Not[GeneralizedBinomialMatchQ[u, x]]
Int[(c_.*x_)^m_.*u_^p_., x_Symbol, _:RubiNotebookReference["33cd9001"]] := Int[(c*x)^m*ExpandToSum[u, x]^p, x] /; FreeQ[{c, m, p}, x] && GeneralizedBinomialQ[u, x] && Not[GeneralizedBinomialMatchQ[u, x]]
Int[u_^p_, x_Symbol, _:RubiNotebookReference["36828684"]] := Int[ExpandToSum[u, x]^p, x] /; FreeQ[p, x] && QuadraticQ[u, x] && Not[QuadraticMatchQ[u, x]]
Int[u_^m_.*v_^p_., x_Symbol, _:RubiNotebookReference["3740ecb3"]] := Int[ExpandToSum[u, x]^m*ExpandToSum[v, x]^p, x] /; FreeQ[{m, p}, x] && LinearQ[u, x] && QuadraticQ[v, x] && Not[LinearMatchQ[u, x] && QuadraticMatchQ[v, x]]
Int[u_^m_.*v_^n_.*w_^p_., x_Symbol, _:RubiNotebookReference["350652ea"]] := Int[ExpandToSum[u, x]^m*ExpandToSum[v, x]^n*ExpandToSum[w, x]^p, x] /; FreeQ[{m, n, p}, x] && LinearQ[{u, v}, x] && QuadraticQ[w, x] && Not[LinearMatchQ[{u, v}, x] && QuadraticMatchQ[w, x]]
Int[u_^p_.*v_^q_., x_Symbol, _:RubiNotebookReference["34c438dd"]] := Int[ExpandToSum[u, x]^p*ExpandToSum[v, x]^q, x] /; FreeQ[{p, q}, x] && QuadraticQ[{u, v}, x] && Not[QuadraticMatchQ[{u, v}, x]]
Int[z_^m_.*u_^p_.*v_^q_., x_Symbol, _:RubiNotebookReference["3f987fe0"]] := Int[ExpandToSum[z, x]^m*ExpandToSum[u, x]^p*ExpandToSum[v, x]^q, x] /; FreeQ[{m, p, q}, x] && LinearQ[z, x] && QuadraticQ[{u, v}, x] && Not[LinearMatchQ[z, x] && QuadraticMatchQ[{u, v}, x]]
Int[Pq_*u_^p_., x_Symbol, _:RubiNotebookReference["3e5a15d7"]] := Int[Pq*ExpandToSum[u, x]^p, x] /; FreeQ[p, x] && PolyQ[Pq, x] && QuadraticQ[u, x] && Not[QuadraticMatchQ[u, x]]
Int[u_^m_.*Pq_*v_^p_., x_Symbol, _:RubiNotebookReference["8937493d"]] := Int[ExpandToSum[u, x]^m*Pq*ExpandToSum[v, x]^p, x] /; FreeQ[{m, p}, x] && PolyQ[Pq, x] && LinearQ[u, x] && QuadraticQ[v, x] && Not[LinearMatchQ[u, x] && QuadraticMatchQ[v, x]]
Int[u_^p_, x_Symbol, _:RubiNotebookReference["88f5230a"]] := Int[ExpandToSum[u, x]^p, x] /; FreeQ[p, x] && TrinomialQ[u, x] && Not[TrinomialMatchQ[u, x]]
Int[(d_.*x_)^m_.*u_^p_., x_Symbol, _:RubiNotebookReference["8ab39d53"]] := Int[(d*x)^m*ExpandToSum[u, x]^p, x] /; FreeQ[{d, m, p}, x] && TrinomialQ[u, x] && Not[TrinomialMatchQ[u, x]]
Int[u_^q_.*v_^p_., x_Symbol, _:RubiNotebookReference["8b71f764"]] := Int[ExpandToSum[u, x]^q*ExpandToSum[v, x]^p, x] /; FreeQ[{p, q}, x] && BinomialQ[u, x] && TrinomialQ[v, x] && Not[BinomialMatchQ[u, x] && TrinomialMatchQ[v, x]]
Int[u_^q_.*v_^p_., x_Symbol, _:RubiNotebookReference["8e3ee1e1"]] := Int[ExpandToSum[u, x]^q*ExpandToSum[v, x]^p, x] /; FreeQ[{p, q}, x] && BinomialQ[u, x] && BinomialQ[v, x] && Not[BinomialMatchQ[u, x] && BinomialMatchQ[v, x]]
Int[(f_.*x_)^m_.*z_^q_.*u_^p_., x_Symbol, _:RubiNotebookReference["8ffc8bd6"]] := Int[(f*x)^m*ExpandToSum[z, x]^q*ExpandToSum[u, x]^p, x] /; FreeQ[{f, m, p, q}, x] && BinomialQ[z, x] && TrinomialQ[u, x] && Not[BinomialMatchQ[z, x] && TrinomialMatchQ[u, x]]
Int[(f_.*x_)^m_.*z_^q_.*u_^p_., x_Symbol, _:RubiNotebookReference["8dba358f"]] := Int[(f*x)^m*ExpandToSum[z, x]^q*ExpandToSum[u, x]^p, x] /; FreeQ[{f, m, p, q}, x] && BinomialQ[z, x] && BinomialQ[u, x] && Not[BinomialMatchQ[z, x] && BinomialMatchQ[u, x]]
Int[Pq_*u_^p_., x_Symbol, _:RubiNotebookReference["8c785fb8"]] := Int[Pq*ExpandToSum[u, x]^p, x] /; FreeQ[p, x] && PolyQ[Pq, x] && TrinomialQ[u, x] && Not[TrinomialMatchQ[u, x]]
Int[(d_.*x_)^m_.*Pq_*u_^p_., x_Symbol, _:RubiNotebookReference["87241885"]] := Int[(d*x)^m*Pq*ExpandToSum[u, x]^p, x] /; FreeQ[{d, m, p}, x] && PolyQ[Pq, x] && TrinomialQ[u, x] && Not[TrinomialMatchQ[u, x]]
Int[u_^p_, x_Symbol, _:RubiNotebookReference["86e672b2"]] := Int[ExpandToSum[u, x]^p, x] /; FreeQ[p, x] && GeneralizedTrinomialQ[u, x] && Not[GeneralizedTrinomialMatchQ[u, x]]
Int[(d_.*x_)^m_.*u_^p_., x_Symbol, _:RubiNotebookReference["9b82e6d3"]] := Int[(d*x)^m*ExpandToSum[u, x]^p, x] /; FreeQ[{d, m, p}, x] && GeneralizedTrinomialQ[u, x] && Not[GeneralizedTrinomialMatchQ[u, x]]
Int[z_*u_^p_., x_Symbol, _:RubiNotebookReference["9a408ce4"]] := Int[ExpandToSum[z, x]*ExpandToSum[u, x]^p, x] /; FreeQ[p, x] && BinomialQ[z, x] && GeneralizedTrinomialQ[u, x] && EqQ[BinomialDegree[z, x] - GeneralizedTrinomialDegree[u, x], 0] && Not[BinomialMatchQ[z, x] && GeneralizedTrinomialMatchQ[u, x]]
Int[(f_.*x_)^m_.*z_*u_^p_., x_Symbol, _:RubiNotebookReference["980632bd"]] := Int[(f*x)^m*ExpandToSum[z, x]*ExpandToSum[u, x]^p, x] /; FreeQ[{f, m, p}, x] && BinomialQ[z, x] && GeneralizedTrinomialQ[u, x] && EqQ[BinomialDegree[z, x] - GeneralizedTrinomialDegree[u, x], 0] && Not[BinomialMatchQ[z, x] && GeneralizedTrinomialMatchQ[u, x]]
