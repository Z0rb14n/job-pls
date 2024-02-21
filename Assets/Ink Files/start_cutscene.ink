-> cutscene_menu

=== cutscene_menu ===
+ [game_start] -> game_start
+ [game_end] -> game_end


=== game_start ===
Manager: Hi! Welcome to being our new HR guy!
Manager: You're gonna be responsible for hiring new folks.
Manager: ...
Manager: Well... 'hiring'...
Manager: In this job market half of our positions are ghost jobs.
Manager: heh heh heh.
Manager: Anyways, since it's your first day, you can shadow this senior HR guy!
Manager: Okay senior, anything you wanna say before we get started?
Senior: actually, I-
Manager: No? Okay, Let's get started!
Senior: oh... okay. #trigger: ManagerLeave
TODO
Manager: Okay nice, thanks for shadowing! #trigger: ManagerJoin
Manager: Anyways, due to cost constraints, we're firing the senior HR guy.
Senior: WHAT?
Manager: We kinda want senior people but junior pay, so we have to let him go. #trigger: SeniorLeave
Manager: Anyways, because of your senior experience, you'll do well!
Manager: Also, you're still on probation.
Manager: Also, you're unpaid.
Manager: What do you mean it's illegal?
Manager: Sue me with the lawyer you can buy with $0.
Manager: Anyways, I'm going on a vacation to the Bahamas. See you around!
#trigger: ManagerLeave
What did I just sign myself up for?
#end
-> DONE


=== game_end ===
Manager: Hi! I know you're supposed to be interviewing soon, but we have a new HR guy! #trigger: NewGuyJoin
Manager: He's going to be shadowing you for today. Anything you wanna say before we get started? #trigger: RollCredits
actually, I-
Manager: No? Okay, Let's get started!
oh... okay.
Manager: HAHA another successful bait and switch.
Manager: Man, this job market is really nice.
Manager: "oh boo hoo hoo that's illegal" man back in my day, I had to live off of my weekly allowance of $100/week, which inflation adjusted is...
Manager: ...
Manager: huh a lot more than minimum wage now. Well it's their fault for voting for them - wait are they voting age?
Manager: Besides the point - their stupid zero dollar paychecks are coming out of my $10 million/year salary!
Manager: Man, maybe I should have them pay ME to work.
Manager: Maybe I can convince some university to run a course that'll do free labor for me...
Manager: ...
Manager: oh wait i'm still in the call oops #trigger: ManagerLeave
...
New Guy: ...
New Guy: What did I just sign myself up for?
#trigger: IntervieweeJoin
Interviewee: Hello! Is my mic on?
Yes. Well, let's get started.
#end
-> DONE