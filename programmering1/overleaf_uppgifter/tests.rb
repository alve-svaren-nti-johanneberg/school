require "./next_number"
fail unless next_number(-88) == -87
fail unless next_number(104) == 105

require "./previous_number"
fail unless previous_number(104) == 103
fail unless previous_number(-88) == -89

require "./square"
fail unless square(3) == 9
fail unless square(-83477) == 6968409529

require "./cube"
fail unless cube(2) == 8
fail unless cube(243) == 14348907

require "./add"
fail unless add(2,6) == 8
fail unless add(-3443,234234234) == 234230791
fail unless add(-3443,-555) == -3998

require "./subtract"
fail unless subtract(2,6) == -4
fail unless subtract(-3443,234234234) == -234237677
fail unless subtract(-3443,-555) == -2888

require "./hypotenuse"
fail unless hypotenuse(3,4) == 5.0
fail unless hypotenuse(68,76) == 101.9803902718557

require "./absolute"
fail unless absolute(-33) == 33
fail unless absolute(4) == 4
fail unless absolute(-14.3) == 14.3

require "./is_negative"
fail unless is_negative(55) == false
fail unless is_negative(-4) == true
fail unless is_negative(0) == false