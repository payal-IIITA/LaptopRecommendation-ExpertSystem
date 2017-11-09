isgaming(X):-
    ram(X,R),R>=8,
    hd_size(X,H),H>=512,
    screen_size(X,S),S>15,
    (processor_brand(X,'intel');processor_brand(X,'amd');processor_brand(X,'nvidia')),(processor_model(X,'i5');processor_model(X,'i3');processor_model(X,'i7')),
    gc_size(X,G),G>=2,
    os(X,'windows').

isdev(X):-
    ram(X,R),R>=8,
    hd_size(X,H),H>=512,
    screen_size(X,S),S>14,
    clock_speed(X,C),C>=2.3,
    (processor_brand(X,'intel'),(processor_model(X,'i5');processor_model(X,'i3'))),
    gc_size(X,G),G>=1.

isclerk(X):-
    ram(X,R),R>=2,
    hd_size(X,H),H>=512,
    screen_size(X,S),S>12,
    processor_brand(X,'intel'),
    os(X,'windows').

ishome(X):-
    ram(X,R),R>=4,
    hd_size(X,H),H>=512,
    screen_size(X,S),S>13,
    os(X,'windows');os(X,'mac').
