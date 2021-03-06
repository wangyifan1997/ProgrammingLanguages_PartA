(* Homework1 Simple Test *)
(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)
use "hw1.sml";

val test1_1 = is_older ((1,2,3),(2,3,4)) = true

val test1_2 = is_older ((1,2,3),(1,2,4)) = true

val test1_3 = is_older ((1,2,3),(1,2,1)) = false

val test1_4 = is_older ((1,3,5),(1,2,20)) = false

val test1_5 = is_older ((1,1,2),(1,8,31)) = true

val test2_1 = number_in_month ([(2012,2,28),(2013,12,1)],2) = 1

val test2_2 = number_in_month ([(2020,9,18),(2010,3,4)],4) = 0

val test2_3 = number_in_month ([(2020,9,20),(2010,3,4),(2012,3,5)],3) = 2

val test3_1 = number_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3

val test4_1 = dates_in_month ([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)]

val test5_1 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]

val test6_1 = get_nth (["hi", "there", "how", "are", "you"], 2) = "there"

val test6_2 = get_nth (["hi", "there", "how", "are", "you"], 1) = "hi"

val test6_3 = get_nth (["hi", "there", "how", "are", "you"], 5) = "you"

val test7_1 = date_to_string (2013, 6, 1) = "June 1, 2013"

val test7_2 = date_to_string (1, 2, 25) = "February 25, 1"

val test7_3 = date_to_string (6, 2, 1) = "February 1, 6"

val test8_1 = number_before_reaching_sum (10, [1,2,3,4,5]) = 3

val test8_2 = number_before_reaching_sum (2, [1,2,3,4,5]) = 1

val test9_1 = what_month 70 = 3

val test9_2 = what_month 31 = 1

val test9_3 = what_month 32 = 2

val test10 = month_range (31, 34) = [1,2,2,2]

val test11 = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31)

val test13_1 = reasonable_date((2020, 2, 29)) = true

val test13_2 = reasonable_date((2019, 2, 29)) = false

val test13_3 = reasonable_date((2013, 1, 31)) = true

val test13_4 = reasonable_date((~3, 2, 4)) = false

val test13_5 = reasonable_date((2000, 2, 29)) = true

val test13_6 = reasonable_date((2100, 2, 29)) = false

val test13_7 = reasonable_date((2002, 4, 31)) = false

val test_remove_duplicates_1 = remove_duplicates([1, 2, 2, 3, 3, 4]) = [1, 2, 3, 4]

val test_remove_duplicates_2 = remove_duplicates([1, 2, 3, 4]) = [1, 2, 3, 4]

val test_remove_duplicates_3 = remove_duplicates([1]) = [1]

val test_remove_duplicates_4 = remove_duplicates([1, 1, 2, 10, 11]) = [1, 2, 10, 11]

val test_remove_duplicates_5 = remove_duplicates([5, 2, 2, 5, 5]) = [2, 5]