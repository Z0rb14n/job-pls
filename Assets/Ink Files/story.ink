-> load_interview

=== load_interview ===
+ [game_start_cutscene] -> game_start
+ [game_end_cutscene] -> game_end
+ [nepobaby] -> nepo_interview
+ [Test] -> test_interview


=== game_start ===
Manager: Hi! Welcome to being our new HR guy!
Manager: You're gonna be responsible for hiring new folks.
Manager: ...
Manager: Well... 'hiring'...
Manager: In this job market half of our positions are ghost jobs.
Manager: heh heh heh.
Manager: Anyways, since it's your first day, you can shadow this senior HR guy!
Manager: Okay senior, anything you wanna say before we get started?
Senior: actually, i-
Manager: No? Okay, Let's get started!
Senior: oh... okay. #trigger: ManagerLeave
Senior: anyways, for interviews, we are supposed to ask the vi-i mean the candidate some basic questions at the start.
Senior: Oh, I think he just joined. Hello! #trigger: OtherInternJoin
Candidate: Hello!
Senior: Okay. Tell me about yourself.
Candidate: Well, I'm an intern.
Senior: Um, okay...
Senior: Can you describe your previous responsibilities as an intern?
Candidate: I don't know - it's my first day on the job. Did I get the right link?
Senior: Oh, oops, I think you're supposed to be in the other call with the big boss.
"Candidate": Oh, okay. Sounds good.
Senior: um... wait... so where's the candidate then...? #trigger: OtherInternLeave
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


=== nepo_interview ===
so let's get started, maybe you can start us off by introducing yourself?
nepo baby: i'm the son of the ceo.
* is... is that all you have to say?
* so, can you tell me more about your experience?
* how would you describe yourself?
- nepo baby: does anything i say here matter?
no. cool you got the job, congrats
#end
-> DONE


=== test_interview ===
so let's get started, maybe you can start us off by introducing yourself?
Test: wha????
* Can you tell me more about your experience?
* how would you describe yourself?
- test: does anything i say here matter?
no. You don't get the job lol
#end
-> DONE