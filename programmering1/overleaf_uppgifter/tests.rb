require "./next_number"
fail unless next_number(-88) == -87
fail unless next_number(104) == 105

require "./previous_number"
fail unless previous_number(104) == 103
fail unless previous_number(-88) == -89
