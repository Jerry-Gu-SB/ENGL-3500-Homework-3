// Please fix the errors in this Ink file. 

// NOTE: some errors can be fixed multiple ways. As long as you fix the error and the story flows logically, your fix is good. 

// NOTE #2: some errors will not show as an error in Ink-- you will have to deduce what the "novice coder" meant to do, and change one interpretted code statement to another to make it work as intended. (These should be fairly obvious.) 

// NOTE #3: try to intuit the intent of the "novice coder"-- you can "fix" it by completely re-writing the story, but that would be inserting your author's voice into the story. Try to only fix the code based on what the original author intended. 

// When you are finished, please refine the Ink Story you wrote during Monday's in-class Ink Game Jam. Stories DO NOT need to incorporate all the code statements. You can turn in a story that ONLY uses basic Choices, and that would be sufficient. 

// By "refine" I mean turn in a complete game. More will be said in class about the constraints, but please remember "complete" does not necessarily mean "complex". You will hopefully be able to finish most of your game in class, and will only need to debug a bit of code to get it ready to turn in. 

// Extensions are available. If you spend more than two hours on this homework, you do not need to spend another two hours refining your game (unless you want to). 

// '~var' --> 'VAR'
VAR has_rabbit = false 
// ~ has_hedgehog = true 
VAR has_hedgehog = false

VAR checked_doors = 0
You stand before four doors. 
// need to go to the first divert
-> doors

// - (doors) should be == doors ==
== doors ==
* Door one 
    Behind door one is a stuffed rabbit. You take the rabbit. 
    // need to retypecast as a bool not a string
    // has_rabbit = "true"
    ~ has_rabbit = true
    // ~ checked_doors+
    ~ checked_doors++
    -> doors
* Door two 
    Nothing is behind door two.
    // ~ checked_doors+
    ~ checked_doors++
    -> doors
* Door three 
    Behind door three is a stuffed hedgehog. You take the hedgehog. 
    ~ has_hedgehog = true
    // ~ checked_doors+
    ~ checked_doors++
    -> doors
* Door four 
    There is nothing behind door four. 
    // ~ checked_doors+
    ~ checked_doors++
        -> doors
// need to have a + instead of * to allow player to leave if they choose "How do I leave?" before choosing all the doors
+ How do I leave? 
-> try_to_leave 

=== try_to_leave 
// * {checked_doors < 5} You need to check every door -> doors
// logic error, needs less than 4 doors
* {checked_doors < 4} You need to check every door -> doors

// * {checked_doors = 4} You may leave.
* {checked_doors == 4} You may leave.

// [
{
// - has_rabbit and has_hedgehog: 
 - has_rabbit && has_hedgehog: 
    The stuffed animals turn their stuffed-animal necks and beckon you to come closer.
    
    * Lean in?
        "Wake up, you're dreaming."
        -> how_do_i_wake_up
    * Screw this! I'm out of here! 
        -> how_do_i_wake_up
- else: you need some special items to leave...
    // i think they need to get the rabbit and hedgehog
    -> doors
}

// = how_do_i_wake_up
== how_do_i_wake_up ==

// ~ temp chosen_animal = 0
VAR chosen_animal = ""
* Pinch yourself. -> how_do_i_wake_up
* Jump up and down -> how_do_i_wake_up
* Stare at the stuffed animals quizically. -> how_do_i_wake_up 
* "You must choose one of us."
    * * Choose rabbit. 
        ~ chosen_animal = "rabbit"
        // -> how_do_i_wake_up
        -> you_finally_wake_up_on_your_own
    * * Choose hedgehog. 
        ~ chosen_animal = "hedgehog"
        -> you_finally_wake_up_on_your_own
        // -> how_do_i_wake_up
// logic error, just put these into the you finally wake
// -> you_finally_wake_up_on_your_own

// = you_finally_wake_up_on_your own
== you_finally_wake_up_on_your_own ==

Phew! You're awake. 

* Rub your eyes. 

- When you rub your eyes, you notice something at the foot of your bed. It's the {chosen_animal}. Its button eye twitches. 

THE END
// need an end divert
-> END
