# README

## Problem statement
TL;DR
Regression testing gets harder as functionality gets added. It can't all be tested each iteration, we need a way to effectively share the load, as well as to ensure lower priority functionality is also tested at some regularity.


Portal and its accompanying subsystems are too complex to be regression tested exhaustively in a limited time. Anything that is not tested in a release represents a risk of some failure or regression. Effort that is spent testing these areas helps us uncover potential regressions. Increasing regression testing comes at a cost of time and money. Some strategies we have used in the past to help reduce this risk are:
- Assign a person to do regression testing (spend 2-3 days going through the major components of the application)
- Shared regression: Try and break it up to be shared by multiple people  (and still get it all done)
- Shared prioritized regression: give flexibility to testers to run tests for a given area, without a script to run, to test basic functionality, and view from the lens of a user, rather than of a feature.

Since January we have been using the Shared prioritized regression, however there are no tools that allow us to divide the product into its major areas, and guide us to which would be the most important to test based on priority to business, time since last regression test, and other change which increases it’s risk.
We also don’t have a way to easily see the history of regression testing to find insights on it. Currently its a manual process of using a spreadsheet to do the calculations and prioritizations, then the result is copied into our wiki where it can be viewed/edited by everyone in real time. Its a somewhat laborious manual process to prep this data. https://wiki.cisco.com/display/AMPE/Regression+Shared+Worksheet

While the primary goal is to manage the task of doing regression testing, there are additional benefits that can be realized
- Since a tester only works on a handful of tasks, they can spend a little time and do more than just look at the happy path
- Testers can take on an area that they are unfamiliar with and learn about it (in reality this helps us step in to our users shoes a little more in terms of first time use experience)
  - Also, testers can buddy up to help each other learn some of the nuances of an area without it being as steep of a learning curve
  - This will help spread out the knowledge of the system, and help prevent siloing

## Proposed solution
A rails application that has a high level list of regression tests. They will be listed in priority order based on 3 criteria:
 - Importance to business
 - Time since last test
 - Priority bump (ie recent changes or other circumstances may mean we want to increase the priority of related features)


Will probably be continuous, ie there doesn’t have to be a formal start/end to a regression cycle in terms of priority

Potential Enhancements:
  - Show a report of a given feature.. see how often its been regression tested
  - Show bugs and enhancement requests that have been discovered during regression testing
  - Allow users to see who is currently testing a feature, and be able to join them to help learn a new area that is unfamiliar


## Table
test_story
  Id, Area, persona, test name, short description, more info
Test History
  Id, regression id, tester, date completed, buddy, notes, bugs
User
  Id, Name
Bump priority
  Id, reason, regression id, duration (times, or time bound?), severity

### Pages
- add/edit regression item
- Regression priority list (ordered list of regression priorities) (MMF- can use this to generate and paste into wiki)(show all, or just up to x unclaimed)
Add/edit user
- Regression history - for regression item, show table of all tests run against it
- bug links

Priority calculation.. days elapsed since done, business priority, bump value.. get a number
  How to deal with ties


Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
