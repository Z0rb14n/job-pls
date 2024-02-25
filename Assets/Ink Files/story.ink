LIST GenericOptions = weakness, join, challenge

-> load_interview

=== load_interview ===
+ [game_start_cutscene] -> game_start
+ [game_end_cutscene] -> game_end
+ [nepobaby] -> nepo_interview
+ [jeffb] -> jeffb_interview
+ [normie] -> normie_interview
+ [intern] -> intern_interview
+ [chinese] -> chinese_interview
+ [influencer] -> influencer_intervew
+ [michael] -> michael_interview
+ [scam] -> scam_interview
+ [generic bill] -> generic_interview("Bill")
+ [generic steve] -> generic_interview("Steve")


=== game_start ===
Manager: Hi! Welcome to being our new HR guy!
Manager: You're gonna be responsible for hiring new folks.
Manager: ...
Manager: Well... 'hiring'...
Manager: In this job market half of our positions are ghost jobs.
Manager: Heh heh heh.
Manager: Anyways, since it's your first day, you can shadow this senior HR guy!
Manager: Okay Senior, anything you wanna say before we get started?
Senior: Actually, I-
Manager: No? Okay, Let's get started!
Senior: Oh... okay. #trigger: ManagerLeave
Senior: Anyways, for interviews, we are supposed to ask the victi-I mean, the candidate some basic questions at the start.
Senior: Oh, I think he just joined. Hello! #trigger: OtherInternJoin
Candidate: Hello!
Senior: Okay. Tell me about yourself.
Candidate: Well, I'm an intern.
Senior: Um, okay...
Senior: Can you describe your responsibilities as an intern?
Candidate: I don't know - it's my first day on the job. Did I get the right link?
Senior: Oh, oops, I think you're supposed to be in the other call with the big boss.
"Candidate": Oh, okay. Sounds good.
Senior: Um... Wait... So where's the candidate then...? #trigger: OtherInternLeave
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
Actually, I-
Manager: No? Okay, Let's get started!
Oh... okay.
Manager: HAHA another successful bait and switch.
Manager: Man, this job market is really nice.
Manager: "Oh boo hoo hoo that's illegal" Man back in my day, I had to live off of my weekly allowance of $100/week, which inflation adjusted is...
Manager: ...
Manager: Huh a lot more than minimum wage now. Well it's their fault for voting for them - wait, are they voting age?
Manager: Eh, that's besides the point - their stupid zero dollar paychecks are coming out of my $10 million/year salary!
Manager: Man, maybe I should have them pay ME to work.
Manager: Maybe I can convince some university to run a course that'll do free labor for me...
Manager: ...
Manager: Oh wait, I'm still in the call, oops. #trigger: ManagerLeave
...
New Guy: ...
New Guy: What did I just sign myself up for?
#trigger: CandidateJoin
Candidate: Hello! Is my mic on?
Yes. Well, let's get started.
#end
-> DONE


=== nepo_interview ===
so let's get started, maybe you can start us off by introducing yourself?
Ned: Hi, I'm Ned Poe, self-made entrepreneur, visionary startup founder, and member of the Forbes 30 Under 30.
Ned: Also, the son of the CEO of BigCorp. But that's not very important.
- (questions)
* What is your biggest weakness?
Ned: I struggle with public perception. My accomplishments are really great, but for some reason, everyone only wants to talk about who my father is.
Ned: Can't you see that I made myself the tremendously successful man I am today without relying at all on my family's influence and wealth?
Ned: When I founded my own business, did people talk about what an incredible feat it was to have bootstrapped such a fantastic innovative company?
Ned: We have software patents, do you think we'd have patents if we weren't inventing novel software out of the greatness of our minds?
* Can you elaborate more about your past work experience?
Ned: Sure, I didn't feel like getting a normal job when I graduated from the best private college money can buy, so I founded a business.
Ned: It was a SaaS product, Service-as-a-Software or something, I can't quite remember. My CTO took care of all that nerd stuff, I just focused on leadership and vision.
Ned: Seed venture funding was provided by my father, and after we expanded the business further, he bought the whole thing over.
Ned: The enterprise was shut down soon after due to cash flow issues, but the fact remains that I am a successful entrepreneur who's sold a company.
    ** [Question his story.]So, you took a bunch of daddy's money to "found" a business, he bailed you out when you failed, and you still deign to call yourself a self-made entrepreneur?
    Ned: See, you just don't understand how business works. This is why you're an unpaid HR employee and I'm worth millions of dollars.
    Ned: But if you're going to insult me like that, this interview is over. 
    -> end
    ** [Hold your tongue and continue with the interview.]Wow, very impressive!
* What would you describe as your biggest strength?
Ned: I've always been proud of my ability to transform personal setbacks into opportunities for growth.
Ned: For example, ever since I was young, I've been using only the finest silverware. Silver sterling, truly the best kind you can get.
Ned: Unfortunately, probably due to my habit of chewing on the spoons, this resulted in me getting heavy metal poisoning from all the silver.
Ned: But I turned that setback into a plus, and published a best-selling book about my health challenges and recovery.
Ned: It's titled "My Struggle", and we recently just released a German translation!
* [End the interview.]Great, thanks for that, Ned. Do you have any questions for me before we end this interview?
-> end
- -> questions
- (end)
Ned: Honestly, we both know this is just a formality anyway. If you mark me as a weak hire, I'll have my dad fire you.
Please remember me when you get the job. Can you ask if I can start getting paid?
Ned: I promise that I will not, I have already forgotten your name.
Well, it was worth a shot. You'll hear about next steps soon.
Ned: Thanks, peasant.
I really hope I still have my job after this. #trigger: CandidateLeave
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
* {questions == 1} Can you be less abstract about your introduction?
Norm: Sure! I am a passionately motivation-driven individual with a results-oriented paradigm for leveraging cross-functions and optimizing cutting-edge challenges. 
Norm: My proactive approach to dynamic challenges involves thinking dynamically proactively, disrupting solutions of growth workflows and fast-paced environment in a customer-centric mindset.
Norm: I specialize in solutioning state-of-the-art collaborations while simultaneously blue sky thinking both outside and inside the box (just to cover all the bases). 
* What is your biggest weakness?
Norm: The standard non-answer everyone gives — perfectionism. Real enough that it's plausibly a legitimate answer, while also giving nothing away about my real weaknesses.
Norm: Obviously. 
* What makes you want to join our company, BigCorp?
Norm: BigCorp's commitment to excellence fit perfectly with my personal ethos of being excellent in everything I do. 
Norm: I also align with BigCorp's corporate values of Sustainable Harmony for an Innovative Tomorrow. We could all stand to abide by the values espoused by that wonderful four letter acronym.
* {questions > 1} [End the interview.]Great, that's all from my side. Do you have any questions for me?
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
* {questions > 1} [End the interview.]Great, that's all from my side. Do you have any questions for me?
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

=== chinese_interview ===
Hey there, Mr. Liu. Shall we begin?
刘先生: 你好，我叫刘先生，你能听到我说话吗？
Um, what?
刘先生: 这不是抖音的采访吗？
I'm really sorry, but I don't understand what you're saying.
刘先生: 操你妈，真是浪费我的时间！
Well that was awkward. I hope he wasn't too upset. #trigger: CandidateLeave
#end
-> DONE

=== influencer_intervew ===
Influencer: Hey y'all, it's INFLUENCER, welcome to the vlog! Today I'm interviewing with BigCorp, meet my interviewer... what's your name, again?
Uhhh, are you recording this?
Influencer: That's a weird name, but okay. So now he's going to ask us for a personal introduction, and if you buy my course, I give you 10 simple tips to always make a good first impression with it.
Yah
How about you just assume I'm qualified because I'm really big on X, I have 500 followers and only most of those are bots!
- (questions)
* option 1
* option 2
* {questions > 1} [End the interview.]Great, that's all from my side. Do you have any questions for me?
Influencer: Nope, thanks for your consideration and for watching, be sure to like and subscribe, follow me on Instagram for more hot career tips!
#end
-> DONE
- -> questions

=== generic_interview(name) ===
// need a system like this so we can reuse the generic interview but still have each option be single use
~ GenericOptions = ()
{ shuffle: 
- {name}: Hello! Is my mic on?
Yes. Well, let's get started.
- Hello {name}, let's get started! Would you like to start us off by introducing yourself?
- Hi {name}, thanks for joining me today.
{name}: Thanks for your consideration!
Perhaps you can start us off with a brief introduction.
}
{ shuffle:
- {name}: Hey, I'm {name}.
{name}: I would describe myself as a self-starter, capable of independent work. Which is my way of saying my previous managers have offered little supervision.
- {name}: Hello, I'm {name}.
{name}: I have experience working with cross-functional teams, which means that our marketing department sent me an email that one time.
- {name}: I'm {name}, a fresh grad from a good local university. But I'm still going to manufacture several years of work experience because otherwise I wouldn't even be considered.
{name}: I thrive in fast-paced environments, which I know means I'm saying I'm okay with being overworked. I just need a job, man.
- {name}: Hi, I'm {name}, and I'm going to quickly read off what I said I did from my resume because ChatGPT wrote it for me based on the job posting.
{name}: Unfortunately, I'm struggling somewhat because the formatting tricks I used to make it ATS-legible are really annoying to read as a human.
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
+ {LIST_COUNT(GenericOptions) > 1} [End the interview.]Great, that's all from my side. Do you have any questions for me?
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