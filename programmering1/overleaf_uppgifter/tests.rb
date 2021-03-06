require_relative "./next_number"
fail unless next_number(-88) == -87
fail unless next_number(104) == 105

require_relative "./previous_number"
fail unless previous_number(104) == 103
fail unless previous_number(-88) == -89

require_relative "./square"
fail unless square(3) == 9
fail unless square(-83477) == 6968409529

require_relative "./cube"
fail unless cube(2) == 8
fail unless cube(243) == 14348907

require_relative "./add"
fail unless add(2, 6) == 8
fail unless add(-3443, 234234234) == 234230791
fail unless add(-3443, -555) == -3998

require_relative "./subtract"
fail unless subtract(2, 6) == -4
fail unless subtract(-3443, 234234234) == -234237677
fail unless subtract(-3443, -555) == -2888

require_relative "./hypotenuse"
fail unless hypotenuse(3, 4) == 5.0
fail unless hypotenuse(68, 76) == 101.9803902718557

require_relative "./absolute"
fail unless absolute(-33) == 33
fail unless absolute(4) == 4
fail unless absolute(-14.3) == 14.3

require_relative "./is_negative"
fail unless is_negative(55) == false
fail unless is_negative(-4) == true
fail unless is_negative(0) == false

require_relative "./is_positive"
fail unless is_positive(55) == true
fail unless is_positive(-4) == false
fail unless is_positive(0) == true

require_relative "./is_even"
fail unless is_even(55) == false
fail unless is_even(-54056540) == true
fail unless is_even(0) == true

require_relative "./is_odd"
fail unless is_odd(55) == true
fail unless is_odd(-54056540) == false
fail unless is_odd(0) == false

require_relative "./is_divisible_by"
fail unless is_divisible_by(-25, 5) == true
fail unless is_divisible_by(-18, 4) == false
fail unless is_divisible_by(104224, 3257) == true

require_relative "./smallest_of_two"
fail unless smallest_of_two(-25, 5) == -25
fail unless smallest_of_two(5, 4) == 4

require_relative "./smallest_of_three"
fail unless smallest_of_three(-25, 7, 2) == -25
fail unless smallest_of_three(50, 4, -100) == -100
fail unless smallest_of_three(100, 57, 72) == 57

require_relative "./sum_to"
fail unless sum_to(6) == 21
fail unless sum_to(874) == 382375

require_relative "./sum_even"
fail unless sum_even(6) == 12
fail unless sum_even(10) == 30

require_relative "./add_exclamation"
gammal_text = "hello"
fail unless add_exclamation(gammal_text) == "hello!"
fail unless gammal_text == "hello"

require_relative "./first_character"
fail unless first_character("hej") == "h"

require_relative "./last_character"
fail unless last_character("hej") == "j"

require_relative "./is_empty"
fail unless is_empty("")
fail if is_empty("not empty")

require_relative "./length_of_string"
fail unless length_of_string("hej") == 3
fail unless length_of_string("") == 0

require_relative "./nth_character"
fail unless nth_character("hej", 1) == "h"
fail unless nth_character("hej", 0) == "j"

require_relative "./palindrom"
fail unless palindrom("natur rutan")
fail unless palindrom("anna")
fail unless palindrom("ajabaja")
fail if palindrom("ni talar bra latin")

require_relative "./average_number"
fail unless average_number([1, 2, 3]) == 2
fail unless average_number([13, 10, 9, 111, 319, 1, -99]) == 52

require_relative "./approximate_the_golden_ratio"
fail unless absolute(approximate_the_golden_ratio(1000) - 1.618033988749894)

require_relative "./append"
fail unless append([1, 2, 3], 4) == [1, 2, 3, 4]

require_relative "./average"
fail unless average([1, 2, 3]) == 2
begin
  average([1, 2, 3, "hello"])
rescue TypeError
else
  fail
end

require_relative "./concat"
fail unless concat([1, 2, 3, "hello"], [nil, 0.1]) == [1, 2, 3, "hello", nil, 0.1]

require_relative "./contains"
fail unless contains([1, 2, 3, "h"], "h")
fail if contains([], "h")

require_relative "./count"
fail unless count([1, 2, 3, 3, 3, 3], 3) == 4

require_relative "./exclude"
fail unless exclude([1, 1, 1, 1, 1, 1, 1, 1, 1, 2], 1) == [2]

require_relative "./filter"
fail unless filter([111, 2, 3, 1, 1], 1) == [1, 1]

require_relative "./max"
fail unless max([2, 1, 3]) == 3

require_relative "./min"
fail unless min([2, 1, 3]) == 1

require_relative "./prepend"
fail unless prepend([1, 2, 3], "h") == ["h", 1, 2, 3]

require_relative "./split_char"
fail unless split_char("hej hallå där", " ") == ["hej", "hallå", "där"]
fail unless split_char("1;2;3;4", ";") == ["1", "2", "3", "4"]
begin
  split_char([1, 2, 3], "hello")
rescue TypeError
else
  fail
end
begin
  split_char("hello", "123")
rescue TypeError
else
  fail
end

require_relative "./sum"
fail unless sum([2, 1]) == 3

require_relative "./unique"
fail unless unique([1, 1, 1, 1, 1, 1, 2, 3]) == [1, 2, 3]

puts "All tests passed!"
