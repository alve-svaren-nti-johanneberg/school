require "./next_number"
fail unless next_number(-88) == -87
fail unless next_number(104) == 105

require "./previous_number"
fail unless previous_number(104) == 103
fail unless previous_number(-88) == -89

require "./square"
fail unless square(3) == 9
fail unless square(-83477) == 6968409529