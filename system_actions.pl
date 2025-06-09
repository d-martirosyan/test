% Define Conditions
condition(f1).  % Complaint has been received
condition(f2).  % System issues

% Define Actions
action(d1) :- condition(f1), writeln('Համակարգի աշխատունակության ստուգում').
action(d2) :- condition(f1), condition(f2), writeln('Ապարատային մասի սխալի հայտնաբերում').
action(d3) :- condition(f1), condition(f2), writeln('Խափանված սարքի վերանորոգում').
action(d4) :- condition(f1), not(condition(f2)), writeln('Ծրագրային մասի ստուգում').
action(d5) :- condition(f1), condition(f2), writeln('Ծրագիր վերականգնում').
action(d6) :- condition(f1), condition(f2), writeln('Համակարգի աշխատունակության վերականգնում').
action(d7) :- not(condition(f2)), writeln('Փորձագետի հրավիրում').

% Define Query
query :- action(d1), action(d2), action(d3), action(d6).

