/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
 equality 1==2
 not equal 1== 2
 greater >
 lesser <
 great equal >=
 less equal <=
*/




VAR strength = 0
VAR pet_name = ""
VAR torches = 0 
VAR coins = 0
VAR playerN = ""
VAR affection = 0
VAR skillz = 0
-> memory

==memory==
before you stands cave josh, you wish your childhood pet was with you. The cave might be less intimidating then. what was your pets name...?

* [pickle] 
~ pet_name = "pickle"
-> memory_2

* [ham sandwich] 
~ pet_name = "ham sandwich"
-> memory_2

* [earfquake] 
~ pet_name = "earfquake"
-> memory_2


==memory_2==
for some odd reason... you cant seem to remember your own name... but if you had to choose a new one, what would it be?
* [phelony]
~ playerN = "phelony"
-> cave_mouth

* [moon unit] 
~ playerN = "moon unit"
-> cave_mouth

* [abstinence]
~ playerN = "abstinence"
-> cave_mouth

* [these names suck!] -> too_bad

==too_bad==
thats too damn bad!!

*aww man... -> memory_2

== cave_mouth ==
{playerN}, You are at the enterance to a cave. as you step inside, a large door slams down behind you, stopping you from exiting unless you have a key. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

you made it to the cave, if only {pet_name} could see you now!

you have {torches} torches
you have {coins} coins

+{affection < 2} [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west

{pet_name == "pickle": pickle would love it here in the west... he was always partial to those old cowboy movies...| } 
+ {torches > 0} [light torch] -> litwest

+ [Go Back] -> cave_mouth

== litwest ==
you enter a barren room, the walls are lined with visibly aged stone bricks. the room is damp and smells like wet paint.

upon furth inspection, the further most wall has a singular coin slot...

"pssssttt... hey!!! hey hey!! over here!!" 
+ [Go Back] -> cave_mouth

*[who goes there!!] -> coinsy
* {coins == 5} [ive got somerhing for you!] -> forme

==forme==
you walk over to the talking coin slot
if coinsy had eyes they would've lit up.
"for little ole' me? youre too kind pal!"
you shovel the coins individually into his mouth(?), he loudly chews on each one.

"well kid! heres what i promised ya!"
Coinsy spits out the key.

*[heck yeah]->heck
==heck==
you thank Coisy and wave to him as you head for the exit.
the key clicks perfectly into place and the door slowly opens.
as you walk back to your home, the air feels cold and lonely. you cant help but think about your old pet {pet_name}...
the walk mightve been less isolating then... ->END


==coinsy==
you find the source of the noise, that being the coin slot on the wall.
"heya kid, names coinsy"
the coin slot morphs shape to move like a moth as he talks.
{playerN == "moon unit": "moon unit is its? well its nice ta meet ya pal!"| }
{playerN == "abstinence": "abstinence is its? well its nice ta meet ya pal!"| }
{playerN == "phelony": "phelony is its? well its nice ta meet ya pal!"| }

"im here to work as ya kind ole merchant man. but! i do only "sell" one thing..."

*[go on...?] -> go_on

== go_on ==

"why... da key to da exit of course!"
"so whenever youve got those tasty yummy coins, come give em' ta me! n' ill give you your trusty key."

*great!-> litwest
+ [Go Back] -> cave_mouth


=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
*pick up some coins! -> wrong_choice

+[Go Back] -> cave_mouth

== wrong_choice==
"foolish human!!"
the deep belowing voice comes from the furthest end of the room. 
The walls are lined with torces that light one by one to reveal...

"IT IS I....
{pet_name == "pickle": PICKLE!!"| }
{pet_name == "earfquake": EARFQUAKE!!"| }
{pet_name == "ham sandwich": HAM SANDWICH!!"| }
*[{pet_name}?? what are you doing here?] ->huh

==huh==
"i am the supreme ruler of this fair dungeon... and if you want those coins... youre going to have to work for them!!!"
"you have forgotten abour me dear {playerN}... so now you must earn my affection back!!"
"ahead of you are two challenges... face them and i will give you your coins..."

bring it on! -> next

==next==
ahead of you are two doors with differing symbols on them, one with a tennis ball and one with a rope
*[rope door] ->rope
*[ball door] ->ball
+[can i have the coins now?] -> deci

==deci==
{affection < 2: "no you fool!"| }
{affection == 2: "ill allow it"| }
+ [:(]{affection < 2}->next
* [hooray!] {affection == 2} -> coin

==coin==
~ coins = coins +5
"take your foolish fool currency human."
{pet_name} hands you 5 coins
"leave and never return!!"

as you turn and leave his quarters, a bolder falls blocking the east entrance. 

*goodbye {pet_name}...->cave_mouth
==ball== 
a ragged old tennis ball sits in the middle of the already lit room.
"do you remember this ball, insignificant little {playerN}... it is the one we would play with when i was but a young puppy..."
"now... we will commence this ritual of fetch once more!"
you take the ball in hand and think of a sport

*[swimming] -> swim
*[basketball] -> basket
*[tennis] -> ten

==swim==
you think about swimming...
you feel your ball skillz get worse...

*[uh oh] ->badskilz

==ten==
you think about tennis
you feel your ball skillz improve exponentially!

*[sweet!] ->goodskillz

==basket==
ypu think about basketball...
you feel your ball skillz improve!

*[awww yeah!] ->goodskillz

==badskilz==
ypu throw the ball with all your might
it falls out of your hand and rolls on the floor.
"such inadequate fetch skillz!"{pet_name} bellows.
he pounces at you, the mighty strength of his paws sending you into the stone wall. hard.
you died! ->END
==goodskillz==
you and {pet_name} play fetch for a while until {pet_name}'s tail begins to wag...
*[aww!] ->yay

==rope==
torches flicker awake as {pet_name} follows closely behind you 
"for this challenge, foolish {playerN}. you must best me in a game of tug of war!!

youre going to need a lot of strength to beat a dog like {pet_name}...
as your grab your end of the rope, what animal do you think of?

*[bull] -> bull
*[penguin] -> pen
*[godzilla] -> zilla

==zilla==
~ strength = strength +4
great! and what utensil

*[fork] -> fork
*[spoon] -> spoon
*[knife] -> knife

==pen==
~ strength = strength +1
ok... and what utensil
*[fork] -> fork
*[spoon] -> spoon
*[knife] -> knife
==bull==
~ strength = strength + 3

good... and what utensil 

*[fork] -> fork
*[spoon] -> spoon
*[knife] -> knife

==fork==
~ strength = strength +2
perfect...
*{strength >= 5} [pull with all my might!!!!] ->yay
*[pull]!! ->poor

==spoon==
~ strength = strength +1
*{strength >= 5} [pull with all my might!!!] ->yay
*[pull!!] ->poor
==knife==
~ strength = strength +3
*{strength >= 5} [pull with all my might!!!!] ->yay
*[pull]!! ->poor

==yay==
~ affection = affection +1
"it seems you have bested me human..." 
+[yay!!] -> next

==poor==
{pet_name} with their astounding jaw strength,swings up the rope and slams it to the floor. Bringing you along with it.
you died! -> END

