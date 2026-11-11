
user(zainab, zai004).
user(sara, sa234).
user(fatimah, pass987).


login :- attempt(3).

attempt(0) :-
    nl,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

attempt(N) :-
    N > 0,
    nl,
    write('Enter username: '), read(U),
    write('Enter password: '), read(P),
    (   user(U, P)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        N1 is N - 1,
        attempt(N1)
    ).
