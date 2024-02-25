LIST GenericOptions = weakness, join, challenge

-> load_interview

=== load_interview ===
+ [game_start_cutscene] -> game_start
+ [game_end_cutscene] -> game_end
+ [nepobaby] -> nepo_interview
+ [Test] -> test_interview
+ [jeffb] -> jeffb_interview
+ [normie] -> normie_interview
+ [intern] -> intern_interview
+ [generic bill] -> generic_interview("Bill")
+ [generic steve] -> generic_interview("Steve")


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
Senior: Can you describe your responsibilities as an intern?
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
So let's get started, maybe you can start us off by introducing yourself?
Test: wha????
* Can you tell me more about your experience?
* how would you describe yourself?
- test: does anything i say here matter?
no. You don't get the job lol
#end
-> DONE

=== jeffb_interview ===
So let's get started! Jeff, maybe you can start us off by introducing yourself?
Jeff: Sure! My name is Jeffrey B. Zos, I graduated from Princeton with a Bachelor of Science in Engineering. I spent a couple years at Wall Street, then went and founded a startup.
Jeff: It has been very successful post-IPO, but I don't think you need me to tell you that.
* Why are you looking for work?
Jeff: Honestly, I don't know what to do with my time. My foundation runs itself, the anti-aging research is going slowly, and our regular Illuminati meetings were postponed significantly.
* You're a little old[.]er than all the rest of the candidates we're considering for this position.
Are you worried that this will hurt your chances?
Jeff: Definitely not. I think I can bring wisdom and experience that all these young people can't.
* Aren't you vastly overqualified for this?
Jeff: Immensely. I'm insulted that I have to interview at all.
- Great, thanks Jeff. Now, tell me...
- (questions)
* What makes you want to join our company, BigCorp?
Jeff: Every time I think about what I've created I worry about whether I'll be remembered as a hero or as a villain.
Jeff: If I didn't do what I did, maybe no one else would have. Perhaps I am singularly responsible for the untold consumerism I have brought forth upon the world.
Jeff: And, well, instead of going to therapy, I'm hoping it would be healing to just be a cog in someone else's machine instead, to help me forget what I've done.
* What is your biggest weakness?
Jeff: Knowing when to quit. I mean, I could've stopped. Why didn't I stop? Capitalism is such a terrifying force, it seeps into your mind and corrupts the way you think about everything.
Jeff: I didn't need to keep going, I didn't need to become the second-richest man on Earth. But I did. I never thought of myself as greedy. Am I?
Jeff: I just wanted to sell books. And sell them I did. And now, look at me. You know, I had hair once.
* Tell me something interesting about yourself.
Jeff: Well, there was this one guy with long hair and a big beard who wrote a bunch of songs about me over the pandemic? That was quite flattering, though a little weird.
* Can you give me an example of a challenge you've had to overcome at work?
Jeff: My company didn't exist and then I made it exist. I'm now a billionaire. Any other questions?
* {questions > 1} [End the interview.] Great, that's everything from my side. Do you have any questions for me?
Jeff: Nope, I already know everything about you and BigCorp. I could buy you out, but it would be a complete waste of money.
Jeff: Not that I would be able to use all of mine anyway.
... Uhh, okay. Well, thanks for your time. You'll hear from us soon.
#end
-> DONE
- -> questions

=== normie_interview ===
So let's get started! Norm, maybe you can start us off by introducing yourself?
Norm: Hello, my name is Norm L. Mann. I have the kind of degree you're looking for, from the tier of school you would expect.
Norm: I have the right amount and kind of experience for such a candidate, and I'm lying about it to the same degree that everyone else is.
Norm: Additionally, I took the time to memorize the empty platitudes which are the BigCorp corporate values, and I'm more than willing to recite them sycophantically if it means I'll get this job.
- (questions)
* {questions == 1} Can you be less abstract in your intro?
Norm: Sure! I am a passionately motivation-driven individual with a results-oriented paradigm for leveraging cross-functions and optimizing cutting-edge challenges. 
Norm: My proactive approach to dynamic challenges involves thinking dynamically proactively, disrupting solutions of growth workflows and fast-paced environment in a customer-centric mindset.
Norm: I specialize in solutioning state-of-the-art collaborations while simultaneously blue sky thinking both outside and inside the box (just to cover all the bases). 
* What is your biggest weakness?
Norm: The standard non-answer everyone gives — perfectionism. Real enough that it's plausibly a legitimate answer, while also giving nothing away about my real weaknesses.
Norm: Obviously. 
* What makes you want to join our company, BigCorp?
Norm: BigCorp's commitment to excellence fit perfectly with my personal ethos of being excellent in everything I do. 
Norm: I also align with BigCorp's corporate values of Sustainable Harmony for an Innovative Tomorrow. We could all stand to abide by the values espoused by that wonderful four letter acronym.
* {questions > 1} [End the interview.] Great, that's all from my side. Do you have any questions for me?
Norm: What are our next steps?
* [We'll let you know by email about next steps.] Our hiring process is highly individualized for each candidate, so it's impossible to know in advance what the entire hiring process will look like.
* [A couple more rounds of interviews.]That's a very good question. If you've made it through this round, there's a couple more rounds of interviews, and we'll be good to go.
* Honestly, you're not getting the job.[] You're so boring, man. How unfortunate it is that school gave you a degree but not a personality.
- Anything else?
Norm: Nope, thanks for your time.
#end
-> DONE
- -> questions

=== intern_interview ===
-> intern_interview_questions
= intern_interview_questions
- (questions)
* Can you share an example of a time when you've innovated?
NAME: Certainly! I once revolutionized the office coffee experience by introducing a groundbreaking technique of stirring the coffee clockwise instead of the traditional counterclockwise method.
NAME: The resulting productivity boost was, dare I say, stirring. I am always on the lookout for disruptive innovations, whether it's in coffee stirring or redefining the traditional use of the office stapler.
- Anything else?
NAME: Nope, thanks for your time.
#end
-> DONE
- -> intern_interview_questions

=== michael_interview ===
Hello Michael,
My name is Michael Scott, 
- (questions)
* What is your biggest weakness?
Michael: I have an irresistible compulsion to make any "that's what she said" joke possible.
Wow, that sounds really hard.
Michael: Ha, that's what she said!
Michael: ... see what I mean?
Michael: I'm working on it with my therapist.
* [Would you relocate for this job?]I see from your resume that you're based in Colorado. Would you be willing to relocate for this position?
Michael: It breaks my heart, but the economy has been really tough. You gotta do what you gotta do, you know?
* Is there a reason why you're changing industry?[] I see you have plenty of experience managing sales in the paper industry; why switch away from that?
Michael: Well, my wife has been encouraging me to make the switch. Unfortunately, the paper industry isn't all that it's cracked up to be.
Michael: Plus, my professional reputatation in the paper industry has been somewhat tarnished by a documentary that came out not long ago.
Michael: I'm hoping that if I change industry, I'll finally be able to put that stuff behind me, you know?
* {questions > 1} [End the interview.] Great, that's all from my side. Do you have any questions for me?
Michael: Nope, thanks for your time. See you later, alligator!
#end
-> DONE
- -> questions

=== scam_interview ===
Hello Mr. Mher, shall we get started?
Ska: Hello sir, would you like to get rich fast working from home? I have an incredible opportunity for you to make $300/day!
* Uhhh...
* What?
* Wait, I'm supposed to be interviewing you, not the other way around.
- Ska: That's right, if you can 
Sorry, I'm not looking for a job right now. Can we get back to the interview?
Ska: In that case, I have another money-making opportunity for you. If you invest in SkaCoin, we will double your money in one week.
* Wow, that sounds like a really good deal.
* Is that a Ponzi scheme?
* Would you like to join my MLM instead?
* THIS. IS. AN. INTERVIEW.
- Ska: SAY MORE WORDS LOL.
#end
-> DONE

=== generic_interview(name) ===
// need a system like this so we can reuse the generic interview but still have each option be single use
~ GenericOptions = ()
Hello {name}, let's get started! Would you like to start us off by introducing yourself?
{ shuffle:
- {name}: Hey, I'm {name}. I'm a fresh grad. RIP me, I guess.
- {name}: Hello, I'm {name}.
}
Great, I just have a couple standard interview questions for you, if that's alright.
- (interview)
+ { GenericOptions !? weakness } What is your biggest weakness?
{name}: <>
{ shuffle: 
- Perfectionism. Did you really think I'd give a different answer?
- Definitely executive function. I have ADHD, and I find myself unable focus on work most of the time.
}
~ GenericOptions += weakness
+ { GenericOptions !? join } What makes you want to join our company, BigCorp?
{name}: <>
{ shuffle:
- My mom suggested that I apply, and well, here I am.
- Honestly, I just desperately need a job, man. The company doesn't matter, you're all the same to me.
- I love BigCorp! Your corporate commitment to commitments is a personal inspiration and I'd love to support your visionary mission to provide value.
}
~ GenericOptions += join
+ { GenericOptions !? challenge } Can you give me an example of a challenge you've had to overcome at work?
{name}: <>
{ shuffle:
- Sure. I fought a bear. 
- I'm too poor to afford either a car or public transport, and due to my city's non-Euclidean sidewalks, I had to walk to work uphill both ways!
- I had an idiotic boss, and I suspect I'll have one again in the near future.
}
~ GenericOptions += challenge
+ {LIST_COUNT(GenericOptions) > 1} [End the interview.] Great, that's all from my side. Do you have any questions for me?
-> questions
- -> interview
- (questions)
{name}: <>
{ shuffle:
- Yeah, do you enjoy working here?
Honestly, I'm not even sure I technically work here. Do I count as an employee if I'm not even being paid?
- What kind of benefits do employees get?
I'm glad you asked, we have a very competitive benefits plan. Of course, competitive in that it frequently competes, but tends to lose.
It only covers the cost of that little bag of goodies you get after you vist the dentist. Which is free.
}
- (end)
Do you have any other questions?
{name}: {~Nope|None|Nothing else|I'm good, thank you|None, thanks}.
Thanks for your time, we'll let you know what the next steps are by email.
// -> load_interview
# end
-> DONE