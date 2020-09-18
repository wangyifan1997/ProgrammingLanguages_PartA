(* #1 *)
fun is_older(date1: int*int*int, date2: int*int*int) =
    if #1 date1 < #1 date2
    then true
    else if #1 date1 > #1 date2
    then false
    else
        if #2 date1 < #2 date2
        then true
        else if #2 date1 > #2 date2
        then false
        else
            if #3 date1 < #3 date2
            then true
            else false

(* #2 *)
fun number_in_month(dates: (int*int*int) list, month: int) =
    if null dates
    then 0
    else
        if #2 (hd dates) = month
        then 1 + number_int_month(tl dates, month)
        else number_int_month(tl dates, month)

(* #3 *)
fun number_in_months(dates: (int*int*int) list, months: int list) =
    if null months
    then 0
    else number_in_month(dates, hd months) + number_in_months(dates, tl months)

(* #4 *)
fun dates_in_month(dates: (int*int*int) list, month: int) =
    if null dates
    then []
    else
        if #2 (hd dates) = month
        then (hd dates) :: dates_in_month(tl dates, month)
        else dates_in_month(tl dates, month)

(* #5 *)
fun dates_in_months(dates: (int*int*int) list, months: int list) =
    if null months
    then []
    else dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)

(* #6 *)
fun get_nth(strings: string list, n: int) =
    if n = 1
    then hd strings
    else get_nth(tl strings, n-1)

(* #7 *)
fun date_to_string(date: int*int*int) =
    let
      val months = ["January", "Feburuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    in
      get_nth(months, #2 date) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date)
    end

(* #8 *)
fun number_before_reaching_sum(sum: int, nums: int list) =
    let
      val this = hd nums
      val next = hd (tl nums)
    in
      if this + next > sum
      then 1
      else 1 + number_before_reaching_sum(sum-this, tl nums)
    end

(* #9 *)
fun what_month(day: int) =
    let
      val months = [31,28,31,30,31,30,31,31,30,31,30,31]
    in
      1 + number_before_reaching_sum(365, months)
    end

