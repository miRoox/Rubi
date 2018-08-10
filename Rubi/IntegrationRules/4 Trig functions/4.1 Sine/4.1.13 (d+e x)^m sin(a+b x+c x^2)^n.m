
(* ::Section:: *)
(* 4.1.13 (d+e x)^m sin(a+b x+c x^2)^n *)

(* ::Subsection::Closed:: *)
(* 4.1.13 (d+e x)^m sin(a+b x+c x^2)^n *)
Int[Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := Int[Sin[(b + 2*c*x)^2/(4*c)], x] /; FreeQ[{a, b, c}, x] && EqQ[b^2 - 4*a*c, 0]
Int[Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := Int[Cos[(b + 2*c*x)^2/(4*c)], x] /; FreeQ[{a, b, c}, x] && EqQ[b^2 - 4*a*c, 0]
Int[Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := Cos[(b^2 - 4*a*c)/(4*c)]*Int[Sin[(b + 2*c*x)^2/(4*c)], x] - Sin[(b^2 - 4*a*c)/(4*c)]*Int[Cos[(b + 2*c*x)^2/(4*c)], x] /; FreeQ[{a, b, c}, x] && NeQ[b^2 - 4*a*c, 0]
Int[Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := Cos[(b^2 - 4*a*c)/(4*c)]*Int[Cos[(b + 2*c*x)^2/(4*c)], x] + Sin[(b^2 - 4*a*c)/(4*c)]*Int[Sin[(b + 2*c*x)^2/(4*c)], x] /; FreeQ[{a, b, c}, x] && NeQ[b^2 - 4*a*c, 0]
Int[Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_), x_Symbol] := Int[ExpandTrigReduce[Sin[a + b*x + c*x^2]^n, x], x] /; FreeQ[{a, b, c}, x] && IGtQ[n, 1]
Int[Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_), x_Symbol] := Int[ExpandTrigReduce[Cos[a + b*x + c*x^2]^n, x], x] /; FreeQ[{a, b, c}, x] && IGtQ[n, 1]
Int[Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_.), x_Symbol] := Unintegrable[Sin[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, n}, x]
Int[Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_.), x_Symbol] := Unintegrable[Cos[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, n}, x]
Int[Sin[v_]^(n_.), x_Symbol] := Int[Sin[ExpandToSum[v, x]]^n, x] /; IGtQ[n, 0] && QuadraticQ[v, x] &&  !QuadraticMatchQ[v, x]
Int[Cos[v_]^(n_.), x_Symbol] := Int[Cos[ExpandToSum[v, x]]^n, x] /; IGtQ[n, 0] && QuadraticQ[v, x] &&  !QuadraticMatchQ[v, x]
Int[((d_) + (e_.)*(x_))*Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := (-e)*(Cos[a + b*x + c*x^2]/(2*c)) /; FreeQ[{a, b, c, d, e}, x] && EqQ[2*c*d - b*e, 0]
Int[((d_) + (e_.)*(x_))*Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := e*(Sin[a + b*x + c*x^2]/(2*c)) /; FreeQ[{a, b, c, d, e}, x] && EqQ[2*c*d - b*e, 0]
Int[((d_.) + (e_.)*(x_))^(m_)*Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := (-e)*(d + e*x)^(m - 1)*(Cos[a + b*x + c*x^2]/(2*c)) + e^2*((m - 1)/(2*c))*Int[(d + e*x)^(m - 2)*Cos[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[2*c*d - b*e, 0] && GtQ[m, 1]
Int[((d_.) + (e_.)*(x_))^(m_)*Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := e*(d + e*x)^(m - 1)*(Sin[a + b*x + c*x^2]/(2*c)) - e^2*((m - 1)/(2*c))*Int[(d + e*x)^(m - 2)*Sin[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[2*c*d - b*e, 0] && GtQ[m, 1]
Int[((d_.) + (e_.)*(x_))^(m_)*Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := (d + e*x)^(m + 1)*(Sin[a + b*x + c*x^2]/(e*(m + 1))) - 2*(c/(e^2*(m + 1)))*Int[(d + e*x)^(m + 2)*Cos[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[2*c*d - b*e, 0] && LtQ[m, -1]
Int[((d_.) + (e_.)*(x_))^(m_)*Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := (d + e*x)^(m + 1)*(Cos[a + b*x + c*x^2]/(e*(m + 1))) + 2*(c/(e^2*(m + 1)))*Int[(d + e*x)^(m + 2)*Sin[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[2*c*d - b*e, 0] && LtQ[m, -1]
Int[((d_.) + (e_.)*(x_))*Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := (-e)*(Cos[a + b*x + c*x^2]/(2*c)) + ((2*c*d - b*e)/(2*c))*Int[Sin[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && NeQ[2*c*d - b*e, 0]
Int[((d_.) + (e_.)*(x_))*Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := e*(Sin[a + b*x + c*x^2]/(2*c)) + ((2*c*d - b*e)/(2*c))*Int[Cos[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && NeQ[2*c*d - b*e, 0]
Int[((d_.) + (e_.)*(x_))^(m_)*Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := (-e)*(d + e*x)^(m - 1)*(Cos[a + b*x + c*x^2]/(2*c)) - ((b*e - 2*c*d)/(2*c))*Int[(d + e*x)^(m - 1)*Sin[a + b*x + c*x^2], x] + e^2*((m - 1)/(2*c))*Int[(d + e*x)^(m - 2)*Cos[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && NeQ[b*e - 2*c*d, 0] && GtQ[m, 1]
Int[((d_.) + (e_.)*(x_))^(m_)*Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := e*(d + e*x)^(m - 1)*(Sin[a + b*x + c*x^2]/(2*c)) - ((b*e - 2*c*d)/(2*c))*Int[(d + e*x)^(m - 1)*Cos[a + b*x + c*x^2], x] - e^2*((m - 1)/(2*c))*Int[(d + e*x)^(m - 2)*Sin[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && NeQ[b*e - 2*c*d, 0] && GtQ[m, 1]
Int[((d_.) + (e_.)*(x_))^(m_)*Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := (d + e*x)^(m + 1)*(Sin[a + b*x + c*x^2]/(e*(m + 1))) - ((b*e - 2*c*d)/(e^2*(m + 1)))*Int[(d + e*x)^(m + 1)*Cos[a + b*x + c*x^2], x] - 2*(c/(e^2*(m + 1)))*Int[(d + e*x)^(m + 2)*Cos[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && NeQ[b*e - 2*c*d, 0] && LtQ[m, -1]
Int[((d_.) + (e_.)*(x_))^(m_)*Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := (d + e*x)^(m + 1)*(Cos[a + b*x + c*x^2]/(e*(m + 1))) + ((b*e - 2*c*d)/(e^2*(m + 1)))*Int[(d + e*x)^(m + 1)*Sin[a + b*x + c*x^2], x] + 2*(c/(e^2*(m + 1)))*Int[(d + e*x)^(m + 2)*Sin[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && NeQ[b*e - 2*c*d, 0] && LtQ[m, -1]
Int[((d_.) + (e_.)*(x_))^(m_.)*Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_), x_Symbol] := Int[ExpandTrigReduce[(d + e*x)^m, Sin[a + b*x + c*x^2]^n, x], x] /; FreeQ[{a, b, c, d, e, m}, x] && IGtQ[n, 1]
Int[((d_.) + (e_.)*(x_))^(m_.)*Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_), x_Symbol] := Int[ExpandTrigReduce[(d + e*x)^m, Cos[a + b*x + c*x^2]^n, x], x] /; FreeQ[{a, b, c, d, e, m}, x] && IGtQ[n, 1]
Int[((d_.) + (e_.)*(x_))^(m_.)*Sin[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_.), x_Symbol] := Unintegrable[(d + e*x)^m*Sin[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, d, e, m, n}, x]
Int[((d_.) + (e_.)*(x_))^(m_.)*Cos[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_.), x_Symbol] := Unintegrable[(d + e*x)^m*Cos[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, d, e, m, n}, x]
Int[(u_)^(m_.)*Sin[v_]^(n_.), x_Symbol] := Int[ExpandToSum[u, x]^m*Sin[ExpandToSum[v, x]]^n, x] /; FreeQ[m, x] && IGtQ[n, 0] && LinearQ[u, x] && QuadraticQ[v, x] &&  !(LinearMatchQ[u, x] && QuadraticMatchQ[v, x])
Int[(u_)^(m_.)*Cos[v_]^(n_.), x_Symbol] := Int[ExpandToSum[u, x]^m*Cos[ExpandToSum[v, x]]^n, x] /; FreeQ[m, x] && IGtQ[n, 0] && LinearQ[u, x] && QuadraticQ[v, x] &&  !(LinearMatchQ[u, x] && QuadraticMatchQ[v, x])