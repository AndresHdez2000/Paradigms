%Male  
  male(james1).
  male(charles1).
  male(charles2).
  male(james2).
  male(george1).
%female
  female(catherine).
  female(elizabeth).
  female(sophia).
%Parent
  parent(charles1, james1).
  parent(elizabeth, james1).
  parent(charles2, charles1).
  parent(catherine, charles1).
  parent(james2, charles1).
  parent(sophia, elizabeth).
  parent(george1, sophia).

%brother
bro(charles1, elizabeth).
bro(charles2, james2)
bro(charles2, catherine)
bro(james2, catherine)
bro(james2, charles2)

bro(X,Y):-parent(X,Z), parent(Y,Z),male(X)

%Sister
sis(elizabeth, charles1)
sis(catherine, charles2)
sis(catherine, james2)

bro(X,Y):-parent(X,Z), parent(Y,Z),female(X)

%grandparent
abue(X,Z) :-parent(X,Y),parent(Y,Z).

%tio
tio(X,Z):-parent(X,Y), bro(Y,Z)

%tia
tia(X,Z):-parent(X,Y), sis(Y,Z)

%primo
primo(X,A):-(parent(X,Y), sis(Y,Z)),(parent(A,Z))