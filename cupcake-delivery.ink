VAR cupcake = ""


Hurry! You must deliver these cupcakes to the evil cupcake lady, or she will turn all of your friends and families into absolutely delectable cupcakes!

* "Fine by me" -> fine_by_me
* "Oh God which cupcake do I want to choose?"
* * Can't go wrong with vanilla!
~ cupcake = "vanilla"
* * Snickerdoodle cupcakes, just like in good ole' O'Hill!
~ cupcake = "snickerdoodle"
* * Isn't it her birthday soon? Let's go birthday chocolate!
~ cupcake = "birthday chocolate"

- You hurriedly grab half a dozen and toss them in a box.
You need to get there as fast as possible, but you're holding half a dozen cupcakes in a loosely packaged box! How do I get to the evil cupcake lady's house? -> transit_choice

== transit_choice ==
* [Call an Uber] -> UBER
* [Get a Veo bike] -> VEO
* [Just run with the dang things] -> RUN

== UBER ==
You call an uber.
...
// add a delay in actual game implementation, but impossible in ink
* You wait.
...
** You wait some more.
...
*** You wait even more.
...
**** ...
This thing is just taking way too dang long! Screw this, let's try something else. -> transit_choice

== RUN == 
You start running, but as soon as you start running, you start to see the cupcakes bouncing around dangerously. You stop and decide to choose a different way. -> transit_choice

== VEO ==
"Welcome to Veo." The scooter pipes up to life. You thought you were going to get one of those bikes, but you only see a scooter around.

With scooter in one hand and box in the other, you kick off balancing as well as possible. However, you get to a red light with pedestrians crossing to your right.
    Time is running short, what do you do?
    -> break_the_law_or_not
    
== break_the_law_or_not ==
* [Break the law and cross with the pedestrians to the other side] -> break_the_law
* [Wait for the light to turn red] -> law_abiding

== law_abiding ==
...
...
...
...
this thing is taking too long...

->break_the_law_or_not

== break_the_law ==
You cross over and catch some scornful looks from your fellow pedestrians.
As you get to the evil cupcake lady's house, you start to get a little nervous. Your heartrate starts to rise as you get closer and closer to her house...

"Thank you for riding Veo."

-> approach_house

== approach_house ==
You approach her house.
* [Knock on her door]
* [Ring the doorbell]
* [Look through the window]

- "WHY HELLO THERE DARLING!"
The lady suddenly appears behind you right as you begin to move. 

"I see you have some {cupcake} cupcakes for me! Let's see how you did."

"Yum! Very delicious. Very well then, I will let your family and friends go, I'm sure they were going to be equally as delicious but I am satisfied."

As soon as she appears, she spins around and in a flash of light disappears, alongside the house you were standing at. 
// add in what kind of cupcakes later as well.
You find yourself standing there, holding your box of {cupcake} cupcakes.

-> END

== fine_by_me == 
... Okay? -> END
