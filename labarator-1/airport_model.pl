% Պայմաններ
condition(ticket_checked).
condition(passport_checked).
condition(flight_ready).
condition(plane_ready).

% Գործողություններ
action(check_in) :- condition(ticket_checked), condition(passport_checked).
action(verify_passport) :- condition(ticket_checked), condition(passport_checked).
action(confirm_passenger) :- condition(ticket_checked), condition(passport_checked), condition(flight_ready).
action(plane_preparation) :- condition(plane_ready).
action(plane_servicing) :- condition(plane_ready), condition(flight_ready).

% Արդյունքներ
result(ready_to_fly) :- action(check_in), action(verify_passport), action(confirm_passenger), action(plane_preparation), action(plane_servicing).

% Օրինակ օգտագործում
?- result(ready_to_fly).

