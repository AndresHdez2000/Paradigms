saw(anna,beata).
saw(anna,christa).
saw(beata,christa).
saw(donna,eva).

cheater(Cheater):-
	saw_each_other(Cheater,Person1),
	saw_each_other(Cheater,Person2),
	Person1\==Person2,
	\+ saw_each_other(Person1,Person2),
	!.
cheater(gondola_driver).

saw_each_other(Person1,Person2):- saw(Person1,Person2).
saw_each_other(Person1,Person2):- saw(Person2,Person1).

