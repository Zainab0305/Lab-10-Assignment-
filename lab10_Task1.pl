
square_area(S, Area) :- Area is S * S.
square_perimeter(S, P) :- P is 4 * S.


rectangle_area(L, W, Area) :- Area is L * W.
rectangle_perimeter(L, W, P) :- P is 2 * (L + W).


triangle_area(B, H, Area) :- Area is 0.5 * B * H.
triangle_perimeter(A, B, C, P) :- P is A + B + C.

