---
Title : Lifetime Pacing
Description : Lifetime pacing intelligently distributes a budget over the lifespan of
a line item's flight.
---


# Lifetime Pacing



Lifetime pacing intelligently distributes a budget over the lifespan of
a line item's flight.

Lifetime pacing calculates the daily budget required to ensure the line
item fully delivers its flight budget. Lifetime pacing uses flight,
budget, and pacing settings as well as in-progress flight spend to
calculate daily budgets.



## Lifetime Pacing Algorithm

Xandr's budget pacing algorithm uses
minute-to-minute analysis to distribute a line item's flight budget over
the total amount of time of a flight. This ensures more precise pacing.



There are two line item settings you can use to influence how the
algorithm should distribute spend:

- Pacing Percent
- Underspend Catch-Up







## Pacing Percentage

Pacing percentage determines how the budget is distributed over the
course of the flight. Pacing percent values may be 50-150%.



- **Pacing set to 100%**: The flight budget is distributed evenly over
  every day in the flight.
- **Pacing set higher than 100%**: The flight budget allocates more
  money to daily budgets at the beginning of the flight than at the end.
  For example, if a trader prefers to spend a larger portion of the
  budget earlier in the flight, to ensure full delivery, the trader may
  choose to pace at 120%.
- **Pacing set lower than 100%**: The flight budget allocates more money
  to daily budgets at the end of the flight than at the beginning.







## Underspend Catch-Up

Underspend Catch-Up allows you to
dictate how Xandr's system deals with an
underdelivered daily budget. Select
Evenly if you'd like the unspent
portions of your budget to be spent evenly throughout the rest of
flight, or ASAP if you'd like the
unspent budget to be spent as soon as possible.





## Daily Pacing Allocation

Daily Pacing Allocation determines how
the daily budget should be spent in one day. Select
Evenly if you'd like the daily budget
to be spent evenly throughout the day.



<b>Note:</b> Daily Pacing Allocation doesn't
affect the lifetime pacing algorithm's daily budget calculations.
Rather, it affects the outcome of flight spend by pacing daily budgets'
spend behavior.



By selecting Evenly, your line item
paces to a **geo spend curve** that represents available impressions for
the targeted geography. Select ASAP if
you'd like the daily budget to be spent as soon as possible. By
selecting ASAP, your line item doesn't
pace to a spend curve, and
<a href="adaptive-pacing.md" class="xref">adaptive pacing</a> doesn't
shade bids.





## Related Topics

- <a href="adaptive-pacing.md" class="xref">Adaptive Pacing</a>
- <a href="set-up-line-item-budgeting-and-scheduling.md" class="xref"
  title="You can add revenue type, payment model, budget, flight, daily pacing allocation, underspend catch-up, and daypart details for the line item.">Set
  Up Line Item Budgeting and Scheduling</a>






