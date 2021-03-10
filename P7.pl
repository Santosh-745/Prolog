program:-
   write('==>   Hello'),nl,
   write('==>   Please Enter Symptom   1   ==>  '),
   read(A),
   write('==>   Please Enter Symptom   2   ==>  '),
   read(B),
   write('==>   Please Enter Symptom   3   ==>  '),
   read(C),
   write('==>   Please Enter Symptom   4   ==>  '),
   read(D),
   write('==>   Please Enter Symptom   5   ==>  '),
   read(E),
   write('==>   Please Enter Symptom   6   ==>  '),
   read(F),
   write('==>   Please Enter Symptom   7   ==>  '),
   read(G),
   %write(A),
   %write(B),
   %write(C).
   deases(A,B,C,D,E,F,G,X,Y),
   write('==>   YOU HAVE A  '),
   write(X),
   write('\n==>   ADVISE '),
   write(Y).

deases(A,B,C,D,E,F,G,'FEVER','\n==>   Take Paracitamol\n==>   Take enough rest \n==>   INCREASE FlUID'):-
   ( A = 'feeling_unconfirmtable'; A = 'weakness'; A = 'high_temprature' ;A = 'headach';  A = 'no'  ),
   ( B = 'feeling_unconfirmtable'; B = 'weakness'; B = 'high_temprature' ;B = 'headach';  B = 'no'),
   ( C = 'feeling_unconfirmtable'; C = 'weakness'; C = 'high_temprature' ;C = 'headach'; C = 'no'  ),
   ( D = 'feeling_unconfirmtable'; D = 'weakness'; D = 'high_temprature' ;D = 'headach'; D = 'no'),
   (E = 'no'),   (F = 'no'),   (G = 'no').


deases(A,B,C,D,E,F,G,'COMMON_COLD','\n==>   ENSURE_YOUR_CHILD_WASHES_HANDS_AND_PROPERLY_DISPOSES_USING_TISSUES \n==>   INCREASE FlUID'):-
   ( A = 'fever'; A = 'cough'; A = 'sneezing' ;A = 'headach'; A = 'runny_nose' ;  A = 'no'  ),
   ( B = 'fever'; B = 'cough'; B = 'sneezing' ;B = 'headach'; B = 'runny_nose' ;  B = 'no'),
   ( C = 'fever'; C = 'cough'; C = 'sneezing' ;C = 'headach'; c = 'runny_nose' ;  C = 'no' ),
   ( D = 'fever'; D = 'cough'; D = 'sneezing' ;D = 'headach'; D = 'runny_nose' ;  D = 'no'),
   ( E = 'fever'; E = 'cough'; E = 'sneezing' ;E = 'headach'; E = 'runny_nose' ;  E = 'no'),  (F = 'no'),   (G = 'no').

deases(A,B,C,D,E,F,G,'FLUUUUUUU','\n==>   CHILD_NEEDS_TO_TAKE_AMPLE_RREST \n==>   INCREASE FlUID \n==>   CONSULT_A_DOCTOR'):-
   ( A = 'headach'; A = 'cough'; A = 'sneezing';  A = 'extreme_fatigue'; A = 'fever'; A = 'stomach_cramp'; A = 'body_ache' ; A = 'no' ) ,
   ( B = 'headach'; B = 'cough'; B = 'sneezing';  B = 'extreme_fatigue'; B = 'fever'; B = 'stomach_cramp'; B = 'body_ache' ; B = 'no' ),
   ( C = 'headach'; C = 'cough'; C = 'sneezing';  C = 'extreme_fatigue'; C = 'fever'; C = 'stomach_cramp'; C = 'body_ache' ; C = 'no' ),
   ( D = 'headach'; D = 'cough'; D = 'sneezing';  D = 'extreme_fatigue'; D = 'fever'; D = 'stomach_cramp'; D = 'body_ache' ; D = 'no' ),
   ( E = 'headach'; E = 'cough'; E = 'sneezing';  E = 'extreme_fatigue'; E = 'fever'; E = 'stomach_cramp'; E = 'body_ache' ; E = 'no' ),
   ( F = 'headach'; F = 'cough'; F = 'sneezing';  F = 'extreme_fatigue'; F = 'fever'; F = 'stomach_cramp'; F = 'body_ache' ; F = 'no' ),
   ( G = 'headach'; G = 'cough'; G = 'sneezing';  G = 'extreme_fatigue'; G = 'fever'; G = 'stomach_cramp'; G = 'body_ache' ; G = 'no' ).

deases(A,B,C,D,E,F,G,'HAND_FOOT_AND_MOUTH_DEASIS','\n==>   ANTIPIRATIC_AND_ANTIANALGESIC_MEDICINES \n==>   KEEP_YOUR_CHILD_AT_HOME_UNTIL_RECOVERY'):-
   ( A = 'painful_blisters_on_hand_feet_and_mouth'; A = 'fever' ; A = 'no' ),
   ( B = 'painful_blisters_on_hand_feet_and_mouth'; B = 'fever' ; B = 'no' ),
   (C = 'no'),   (D = 'no'),   (E = 'no'),   (F = 'no'),   (G = 'no').


deases(A,B,C,D,E,F,G,'CONJUCTIVITIS','\n==>   MAKE_SURE_YOUR_CHILD_IS_WELL_RESTED-AND_MAINTAIN_A_GOOD_HYGINE'):-
   ( A = 'red_itchy_and_watery_eyes'; A = 'pus'  ; A = 'no'  ),
   ( B = 'red_itchy_and_watery_eyes'; B = 'pus'  ; B = 'no'  ),
   (C = 'no'), (D = 'no'),   (E = 'no'),   (F = 'no'),   (G = 'no').

deases(A,B,C,D,E,F,G,'CHICKEN_POX','\n==>   USE_PARACITAMOL_for_FEVER \n==>   APPLY CALMINE LOTION ON THE BLISTERS'):-
   ( A = 'itchy_blisters_on_body'; A = 'fever' ; A = 'no'  ),
   ( B = 'itchy_blisters_on_body'; B='fever'  ; B = 'no' ),
   ( C='no'  ),(D = 'no'),   (E = 'no'),   (F = 'no'),   (G = 'no').


deases(A,B,C,D,E,F,G,'GASTROENTERITIS','\n==>   GIVE AMPLE WATER AND OTHER LIQUIDS TO KEEP YOUR BODY HYDRATED\n==>   CONSULT DOCTOR FOR MEDICATION'):-
   ( A = 'vomiting'; A = 'nausea'; A = 'tummy_aches' ; A = 'sore_throat' ; A = 'runny_nose'; A = 'fever' ; A = 'dehydration' ; A = 'no'  ),
   ( B = 'vomiting'; B = 'nausea'; B = 'tummy_aches' ; B = 'sore_throat' ; B = 'runny_nose'; B = 'fever' ; B = 'dehydration' ; B = 'no'  ),
   ( C = 'vomiting'; C = 'nausea'; C = 'tummy_aches' ; C = 'sore_throat' ; C = 'runny_nose'; C = 'fever' ; C = 'dehydration' ; c = 'no' ),
   ( D = 'vomiting'; D = 'nausea'; D = 'tummy_aches' ; D = 'sore_throat' ; D = 'runny_nose'; D = 'fever' ; D = 'dehydration' ; D = 'no' ),
   ( E = 'vomiting'; E = 'nausea'; E = 'tummy_aches' ; E = 'sore_throat' ; E = 'runny_nose'; E = 'fever' ; E = 'dehydration' ; E = 'no' ),
   ( F = 'vomiting'; F = 'nausea'; F = 'tummy_aches' ; F = 'sore_throat' ; F = 'runny_nose'; F = 'fever' ; F = 'dehydration' ; F = 'no' ),
   ( G = 'vomiting'; G = 'nausea'; G = 'tummy_aches' ; G = 'sore_throat' ; G = 'runny_nose'; G = 'fever' ; G = 'dehydration' ; G = 'no' ).

deases(A,B,C,D,E,F,G,'HEPATITIS_A','\n==>   PROPER NUTRITIONS AND GOOD DIET CAN HELP YOUR CHILD FEEL BETTER'):-
   ( A = 'diarrhoea'; A = 'nausea'; A = 'fever' ; A = 'loss_of_appetite' ; A = 'no' ),
   ( B = 'diarrhoea'; B = 'nausea'; B = 'fever' ; B = 'loss_of_appetite' ; B = 'no'  ),
   ( C = 'diarrhoea'; C = 'nausea'; C = 'fever' ; C = 'loss_of_appetite' ; C = 'no'  ),
   ( D = 'diarrhoea'; D = 'nausea'; D = 'fever' ; D = 'loss_of_appetite' ; D = 'no'  ),(E = 'no'),   (F = 'no'),   (G = 'no').
























