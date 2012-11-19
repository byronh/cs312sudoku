                                                                     
                                                                     
                                                                     
                                             
/*
Ian Lavery #36506095
Byron Henze #66809088
*/

/* This runs all the simple tests. If it 
works correctly, you should see three identical 
and completed sudoku tables, and finally the 
word false (as test0c will fail.) */
test :-
    test0, nl,
    test0a, nl,
    test0b, nl,
    test0c.

/* This is a completly solved solution. */
test0 :-
    L = [
             [9,6,3,1,7,4,2,5,8],
             [1,7,8,3,2,5,6,4,9],
             [2,5,4,6,8,9,7,3,1],
             [8,2,1,4,3,7,5,9,6],
             [4,9,6,8,5,2,3,1,7],
             [7,3,5,9,6,1,8,2,4],
             [5,8,9,7,1,3,4,6,2],
             [3,1,7,2,4,6,9,8,5],
             [6,4,2,5,9,8,1,7,3]],
        sudoku(L),
        printsudoku(L).

/* This has a solution (the one in test0) which 
should be found very quickly. */
test0a :-
    L = [
             [9,_,3,1,7,4,2,5,8],
             [_,7,_,3,2,5,6,4,9],
             [2,5,4,6,8,9,7,3,1],
             [8,2,1,4,3,7,5,_,6],
             [4,9,6,8,5,2,3,1,7],
             [7,3,_,9,6,1,8,2,4],
             [5,8,9,7,1,3,4,6,2],
             [3,1,7,2,4,6,9,8,5],
             [6,4,2,5,9,8,1,7,3]],
        sudoku(L),
        printsudoku(L).

/* This has a solution (the one in test0) and 
may take a few seconds to find. */
test0b :-
    L = [
             [9,_,3,1,7,4,2,5,_],
             [_,7,_,3,2,5,6,4,9],
             [2,5,4,6,_,9,_,3,1],
             [_,2,1,4,3,_,5,_,6],
             [4,9,_,8,_,2,3,1,_],
             [_,3,_,9,6,_,8,2,_],
             [5,8,9,7,1,3,4,6,2],
             [_,1,7,2,_,6,_,8,5],
             [6,4,2,5,9,8,1,7,3]],
        sudoku(L),
        printsudoku(L).

/* This one obviously has no solution (column 2 has 
two nines in it.) and it may take a few seconds 
to deduce this. */
test0c :-
    L = [
             [_,9,3,1,7,4,2,5,8],
             [_,7,_,3,2,5,6,4,9],
             [2,5,4,6,8,9,7,3,1],
             [8,2,1,4,3,7,5,_,6],
             [4,9,6,8,5,2,3,1,7],
             [7,3,_,9,6,1,8,2,4],
             [5,8,9,7,1,3,4,6,2],
             [3,1,7,2,4,6,9,8,5],
             [6,4,2,5,9,8,1,7,3]],
        sudoku(L),
        printsudoku(L).

/* Here is an extra test for you to try. It would be
nice if your program can solve this puzzle, but it's
not a requirement. */

test0d :-
    L = [
             [9,_,3,1,_,4,2,5,_],
             [_,7,_,3,2,5,6,4,9],
             [2,5,4,6,_,9,_,3,1],
             [_,2,1,4,3,_,5,_,6],
             [4,9,_,8,_,2,3,1,_],
             [_,3,_,9,6,_,8,2,_],
             [5,8,9,7,1,3,4,6,2],
             [_,1,7,2,_,6,_,8,5],
             [6,4,2,5,_,8,1,7,3]],
        sudoku(L),
        printsudoku(L).


/* The next 3 tests are supposed to be progressively 
harder to solve. Our first attempt at a solver did not 
find a solution in a reasonable length of time for 
any of these, so if you manage to write a solver 
that does them in a reasonable length of time, 
expect to recieve top or possibly bonus marks. (BUT 
YOU MUST TELL US THIS IN YOUR SUBMISSION OR WE WON'T 
RUN THESE TESTS.) */
test1 :-
    L = [
             [_,6,_,1,_,4,_,5,_],
             [_,_,8,3,_,5,6,_,_],
             [2,_,_,_,_,_,_,_,1],
             [8,_,_,4,_,7,_,_,6],
             [_,_,6,_,_,_,3,_,_],
             [7,_,_,9,_,1,_,_,4],
             [5,_,_,_,_,_,_,_,2],
             [_,_,7,2,_,6,9,_,_],
             [_,4,_,5,_,8,_,7,_]],
        sudoku(L),
        printsudoku(L).

test2 :-
    L = [
             [_,_,4,_,_,3,_,7,_],
             [_,8,_,_,7,_,_,_,_],
             [_,7,_,_,_,8,2,_,5],
             [4,_,_,_,_,_,3,1,_],
             [9,_,_,_,_,_,_,_,8],
             [_,1,5,_,_,_,_,_,4],
             [1,_,6,9,_,_,_,3,_],
             [_,_,_,_,2,_,_,6,_],
             [_,2,_,4,_,_,5,_,_]],
        sudoku(L),
        printsudoku(L).

test3 :-
    L = [
             [_,4,3,_,8,_,2,5,_],
             [6,_,_,_,_,_,_,_,_],
             [_,_,_,_,_,1,_,9,4],
             [9,_,_,_,_,4,_,7,_],
             [_,_,_,6,_,8,_,_,_],
             [_,1,_,2,_,_,_,_,3],
             [8,2,_,5,_,_,_,_,_],
             [_,_,_,_,_,_,_,_,5],
             [_,3,4,_,9,_,7,1,_]],
        sudoku(L),
        printsudoku(L).


% print suduko table
printsudoku([]).
printsudoku([H|T]) :-
    write(H),nl,
    printsudoku(T).


% Expects a list of lists 9 by 9 grid.

/*first sudoku splits the grid into a logical grid with 
  numbers identifying columns and letters indentifying rows*/
/*sudoku(L) :- [
             [A1,A2,A3,A4,A5,A6,A7,A8,A9],
             [B1,B2,B3,B4,B5,B6,B7,B8,B9],
             [C1,C2,C3,C4,C5,C6,C7,C8,C9],
             [D1,D2,D3,D4,D5,D6,D7,D8,D9],
             [E1,E2,E3,E4,E5,E6,E7,E8,E9],
             [F1,F2,F3,F4,F5,F6,F7,F8,F9],
             [G1,G2,G3,G4,G5,G6,G7,G8,G9],
             [H1,H2,H3,H4,H5,H6,H7,H8,H9],
             [I1,I2,I3,I4,I5,I6,I7,I8,I9]] = L,
             
             % then looks for a solution to each 3x3 block           
             worthy([A1,A2,A3,B1,B2,B3,C1,C2,C3]),
             worthy([A4,A5,A6,B4,B5,B6,C4,C5,C6]),
             worthy([A7,A8,A9,B7,B8,B9,C7,C8,C9]),
             worthy([D1,D2,D3,E1,E2,E3,F1,F2,F3]),
             worthy([D4,D5,D6,E4,E5,E6,F4,F5,F6]),
             worthy([D7,D8,D9,E7,E8,E9,F7,F8,F9]),
             worthy([G1,G2,G3,H1,H2,H3,I1,I2,I3]),
             worthy([G4,G5,G6,H4,H5,H6,I4,I5,I6]),
             worthy([G7,G8,G9,H7,H8,H9,I7,I8,I9]),
             
             % then looks for a solution to each row
             worthy([A1,A2,A3,A4,A5,A6,A7,A8,A9]),!,
             worthy([B1,B2,B3,B4,B5,B6,B7,B8,B9]),
             worthy([C1,C2,C3,C4,C5,C6,C7,C8,C9]),
             worthy([D1,D2,D3,D4,D5,D6,D7,D8,D9]),
             worthy([E1,E2,E3,E4,E5,E6,E7,E8,E9]),
             worthy([F1,F2,F3,F4,F5,F6,F7,F8,F9]),
             worthy([G1,G2,G3,G4,G5,G6,G7,G8,G9]),
             worthy([H1,H2,H3,H4,H5,H6,H7,H8,H9]),
             worthy([I1,I2,I3,I4,I5,I6,I7,I8,I9]),
             
             % finally a solution to each column
             worthy([A1,B1,C1,D1,E1,F1,G1,H1,I1]),
             worthy([A2,B2,C2,D2,E2,F2,G2,H2,I2]),
             worthy([A3,B3,C3,D3,E3,F3,G3,H3,I3]),
             worthy([A4,B4,C4,D4,E4,F4,G4,H4,I4]),
             worthy([A5,B5,C5,D5,E5,F5,G5,H5,I5]),
             worthy([A6,B6,C6,D6,E6,F6,G6,H6,I6]),
             worthy([A7,B7,C7,D7,E7,F7,G7,H7,I7]),
             worthy([A8,B8,C8,D8,E8,F8,G8,H8,I8]),
             worthy([A9,B9,C9,D9,E9,F9,G9,H9,I9]),
             !.
*/
             
             % making all three of these groups of checks assures the solution is accurate

/* The following code is the scaled up solution finder that was presented
in class (slides of lecture 17) to solve Minidoku. 

worthy checks the two fundamental validators of a sudoku solution:
1) Are all the numbers between 1-9?
2) Are all the numbers different in the specified block, column or row? 
*/

sudoku(L) :- maplist(worthy, L),
             flipgrid(L, L2), maplist(worthy, L2),
             boxes(L, L3), maplist(worthy, L3),
             !.

flipgrid([[]|_],[]) :- !.
flipgrid(L,[H|T]) :- getfirst(L,H,B), flipgrid(B,T).

getfirst([],[],[]).
getfirst([[H|T]|R],[H|Hs],[T|Ts]) :- getfirst(R,Hs,Ts).

boxes([
        [A1,A2,A3,B1,B2,B3,C1,C2,C3],
        [A4,A5,A6,B4,B5,B6,C4,C5,C6],
        [A7,A8,A9,B7,B8,B9,C7,C8,C9],
        [D1,D2,D3,E1,E2,E3,F1,F2,F3],
        [D4,D5,D6,E4,E5,E6,F4,F5,F6],
        [D7,D8,D9,E7,E8,E9,F7,F8,F9],
        [G1,G2,G3,H1,H2,H3,I1,I2,I3],
        [G4,G5,G6,H4,H5,H6,I4,I5,I6],
        [G7,G8,G9,H7,H8,H9,I7,I8,I9]
    ],[
        [A1,A2,A3,A4,A5,A6,A7,A8,A9],
        [B1,B2,B3,B4,B5,B6,B7,B8,B9],
        [C1,C2,C3,C4,C5,C6,C7,C8,C9],
        [D1,D2,D3,D4,D5,D6,D7,D8,D9],
        [E1,E2,E3,E4,E5,E6,E7,E8,E9],
        [F1,F2,F3,F4,F5,F6,F7,F8,F9],
        [G1,G2,G3,G4,G5,G6,G7,G8,G9],
        [H1,H2,H3,H4,H5,H6,H7,H8,H9],
        [I1,I2,I3,I4,I5,I6,I7,I8,I9]
    ]).

worthy(L) :- valid(L),diff(L).
             
%list of values to use to solve sudoku           
validval(1).
validval(2).
validval(3).
validval(4).
validval(5).
validval(6).
validval(7).
validval(8).
validval(9).

%checks if each value in the provided list is valid
valid([H]) :- validval(H).
valid([H|T]) :- validval(H), valid(T).

/*checks if each value in the provided list is different by proving 
that the chosen value is not a member of rest of the list*/
diff([_]).
diff([H|T]) :- not(member(H,T)), diff(T).

%checks if value is in a specified list.
member(H,[H|_]).
member(X,[_|T]) :- member(X,T).      
