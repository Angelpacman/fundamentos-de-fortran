program parameter_example
  integer, parameter :: &
    number_of_states = 50, &
    number_of_senators_per_state = 2, &
    number_of_senators = &
    number_of_states*number_of_senators_per_state

  print*, &
    "There are", number_of_states, &
    "states in the united stated of america"
  print*, &
    "From this we can calculate that there are"
  print*, number_of_senators, &
    "senators in the united states senate."
end program parameter_example
