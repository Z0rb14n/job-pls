LIST GenericOptions = weakness, join, challenge

-> load_interview

=== load_interview ===
+ [game_start_cutscene] -> game_start
+ [game_end_cutscene] -> game_end
+ [nepobaby] -> nepo_interview
+ [jeffb] -> jeffb_interview
+ [normie] -> normie_interview
+ [intern] -> intern_interview
+ [michael] -> michael_interview
+ [scam] -> scam_interview
+ [chinese] -> chinese_interview
+ [influencer] -> influencer_intervew
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
So let's get started, maybe you can start us off by introducing yourself?
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
-> end
- -> questions
- (end)
Norm: What are our next steps?
* [We'll let you know by email about next steps.] Our hiring process is highly individualized for each candidate, so it's impossible to know in advance what the entire hiring process will look like.
* [A couple more rounds of interviews.]That's a very good question. If you've made it through this round, there's a couple more rounds of interviews, and we'll be good to go.
* Honestly, you're not getting the job.[] You're so boring, man. How unfortunate it is that school gave you a degree but not a personality.
- Anything else?
Norm: Nope, thanks for your time.
#end
-> DONE

=== intern_interview ===
~ temp asset = 0
Hello INTERN, shall we get started?
INTERN: Hello, sorry that my camera isn't turned on. I'm taking this interview secretly from under a desk so my employer doesn't find out.
INTERN: It's not even my own desk either. It's quite cramped down here, and I have to be quiet so the full-time employee seated in their chair doesn't hear me.
Right, okay. Was it not possible to book a meeting room or something?
INTERN: Do you think I have meeting room privileges? Privileges are for people, and as an intern I believe I'm legally only half a person.
Sure. I guess I'll turn my volume up, but we should be good to go.
INTERN: Great, thanks for your understanding. Hi, I'm INTERN, professional unpaid intern going on five years now.
INTERN: 
INTERN, thanks for sharing. Just a couple questions now from me.
- (questions)
* Why do you think you would be an asset to our company?
INTERN: For a brief moment, I'm going to drop the veil of professionalism so I can best communicate just how serious my commitment is.
INTERN: I work an unappreciated and unpaid job 80 hours a week, and another 20 hours part-time to stem the financial bleeding. My savings are rapidly dwindling. 
INTERN: I have no social life, I have no hobbies, I have nothing else in my life besides work and cold-blooded survival.
INTERN: I am at my absolute limit. At this point, I will say and do ANYTHING for a position at the company.
INTERN: I've idly considered killing an employee to create an opening. Thankfully, your careers page showed there was a vacant role to be filled.
INTERN: Look into my eyes and see the desperation within. These are the eyes of a woman who will do whatever it takes to taste even a crumb of success.
    ** I have never been so terrified of someone in my life.
    ** I don't know what to say to that.
    ** Are... are you crying?
    -- Um... Okay, uhh...
    ~ asset++
* What would you say is your biggest weakness?
INTERN: Probably my lack of spine. I thoroughly accept people walking all over me and taking advantage of me.
INTERN: I mean, in what little spare time I have what with all the unpaid overtime I work, I also do some freelance work.
INTERN: And wouldn't you know it, I always accept being paid in exposure, because I'm still trying to build a portfolio.
INTERN: Sometimes my clients have even gone so far as to give me pieces of paper with "Exposure Dollars" printed on them.
INTERN: It's to the point that the baristas at my local coffee shop will sometimes pityingly accept them, upon seeing the look of sheer desperation on my face.
* What would you say is your biggest strength?
INTERN: I can open the office doors while carrying 8 cups of coffee. That's really hard, you know, with your hands full like that.
INTERN: It's a delicate balancing act I've mastered over the years.
* Can you share an example of a time when you've innovated?
INTERN: Well, in my current position as a professional unpaid intern, I've been kept on a fairly tight leash, so it was hard to explore.
INTERN: However, I once revolutionized the office coffee experience by introducing a groundbreaking technique of stirring the coffee counterclockwise instead of the traditional clockwise method.
INTERN: The resulting productivity boost was... stirring.
* {asset > 0} [End the interview.]Great, well that was a grim indictment of capitalism. Do you have any questions for me?
-> end
- -> questions
- (end)
INTERN: Nope, thanks for your time. Gotta go before I get kicked.
Figuratively?
INTERN: No, literally. Underneath someone else's desk, remember?
Right. Uh, have a good rest of your day?
INTERN: I won't, but thank you.
#end
-> DONE

=== michael_interview ===
Hello Michael, how are you doing today?
Michael: My name is Michael Scott. I am a father, I have a beautiful wife and four lovely children.
Michael: I have decades of work experience, and I'm a great asset to any company that will hire me.
Great, thank you Michael. Just a couple questions for you now.
- (questions)
* What would you say is your biggest weakness?
Michael: I have an irresistible compulsion to make any "that's what she said" joke possible.
Wow, that sounds really hard.
Michael: Ha, that's what she said!
Michael: ... see what I mean?
Michael: I'm working on it with my therapist.
* [Would you relocate for this job?]I see from your resume that you're based in Colorado. Would you be willing to relocate for this position?
Michael: It breaks my heart, but the economy has been really tough. You gotta do what you gotta do, you know?
Michael: You don't happen to have any offices in Pennsylvania, do you? I've been trying to persuade the wife to move back.
* Is there a reason why you're changing industries?[] I see you have plenty of experience managing sales in the paper industry; why switch away from that?
Michael: Well, my wife has been encouraging me to make the switch. Unfortunately, the paper industry isn't all that it's cracked up to be.
Michael: Plus, my professional reputatation amongst paper industry insiders has been somewhat tarnished by a documentary that came out not long ago.
Michael: Something about a inept management style, brazen sexual harassment, inappropriate professional conduct, that level of character assassination.
Michael: I'm hoping that if I change industry, I'll finally be able to put that stuff behind me, you know?
* What are your biggest strengths?
Michael: My biggest strengths are my weaknesses, which are actually strengths.
Oookay, which are?
Michael: I work too hard. I care too much. And sometimes I can be too invested in my job.
* Shouldn't you be retiring soon?
Michael: Well, my wife Holly and I went down to Vegas last month, and, of course we brought the kids.
Michael: We saw this guy shuffling cards around on the street. Just 3 cards, and he asked us to find the queen. Real easy.
Michael: I found the queen the first time, so I doubled down. Same with the second time. Then I just couldn't find the queen again.
Michael: Five doubles later, and our savings were cleaned right out. You know, I'm starting to think there was never a queen in the first place.
Michael: Didn't even make it into the casinos, can you believe it? That's Vegas for you.
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
- Ska: That's right, you can sign up here at this Telegram link, and be sure to give the invitation code KNZ69420H4H4GJP so I can get my referral money.
Sorry, I'm not looking for a job right now. Can we get back to the interview?
Ska: In that case, I have another money-making opportunity for you. If you invest in SkaCoin, we will double your money in one week.
* That sounds too good to be true![] No, really, it can't be true.
* Is that a Ponzi scheme?[] Or a pyramid scheme perhaps? Definitely some kind of scheme.
* No, but would you like to join my MLM instead?
- Ska: If that doesn't interest you, how about renting this house for way under market rent that I am definitely the real estate agent for? No viewings though.
That's definitely suspicious, dude.
Ska: How about you buy my course on how to start a dropshipping business?
What? What even is that?
Ska: Do you want to buy this bridge at least? Or this bottle of snake oil?
I can't believe this sales pitch actually works on people.
Ska: You know, I'm not the villain here. I'm forced to do this against my will.
Ska: Do you think I'm proud to be doing this scumbaggery for a living? I have dreams too, you know. If only I could find an honest job that pays as well.
Ska: But that's not easy if you grew up where I did. Put yourself in my shoes, can you say that you wouldn't be doing the same thing?
Ska: We're both the victims of the same evil forces of late-stage capitalism. We're quite alike, you and I. So come on. Let me have something.
* Your rationalizations disgust me.
* I can sympathize. But what you do is still awful.
* That was surprisingly compelling, actually.
- Ska: Can I get your grandmother's phone number?
Okay, that's it. This interview is over. Get out.
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
Influencer: Hi y'all it's INFLUENCER, welcome back to the vlog! Today I'm interviewing with BigCorp, meet my interviewer... what's your name, again?
Hey, are you recording this?
Influencer: That's a weird name, but okay. So now he's going to ask us for a personal introduction, and if you buy my Interviewing Skills 101 course, I give you 10 simple tips to always make a good first impression with it.
Yeah, uh, sure, introduce yourself.
Influencer: I'm INFLUENCER, and you know I'm qualified because I'm really popular on professional social media. 
Influencer: I have 500 followers, over 30 different skill endorsements, and only most of those are from bots!
Influencer: This brings us to this video's sponsor, ConnectOut, the best social media platform for professionals!
Groan. Can I skip this?
Influencer: Make sure your professional profile stands out from all the rest by posting about your achievements like a 3rd grader's participation trophies.
Influencer: Got a new job? Be sure to tell everyone that you're excited to announce that you've accepted that new position, on ConnectOut!
Influencer: Want to find work? Make a post begging for assistance finding work on ConnectOut, that doesn't seem desperate at all!
Influencer: And make sure your profile stands out with ConnectOut Premium, proven to improve your chances of getting an interview like this one.
Great, I just have a couple questions for you.
- (questions)
* Do you make all your interviews into videos?
Influencer: Yep, I never stop hustling, because I've got that \#Grindset. Like I always say, this is how you become as successful as me, people!
... Did you really just say a hashtag out loud?
* What is your biggest weakness?
Influencer: This is one of the most common interview questions, and I came with a pre-prepared answer! You can be this prepared too if you buy my Interviewing Skills 101 course.
Influencer: First, you pause to pretend that you're thinking hard about your answer. Then you tilt your head to the left and read your answer off the post-it note taped to your monitor.
Influencer: I would say my biggest weakness is perfectionism. It's a constant struggle for me to accept that sometimes good is good enough, but I'm working on finding the right balance.
* What makes you want to join our company, BigCorp?
Influencer: Great question. For questions like this where the answer should be individualized for each company, recite your ChatGPT-generated answer!
Influencer: Well, you see, the synergistic paradigm shifts at BigCorp are like a quantum leap of innovation. 
Influencer: I am thrilled about the prospect of joining a company that optimizes cross-functional disruption, creating a harmonious blend of technique solutions. 
Influencer: The turbulent transcendence of creativity at BigCorp truly speaks to my affinity for unconventional collaboration harmony. 
Influencer: To me, it's not just a job. It's a game-changing kaleidoscope of agile ambiguity where every puzzle piece is a corner piece and the edges are optional.
* Are you sure your advice is actually of any benefit to your viewers at all?
Influencer: Uh oh, that's not a question that we've prepared for! Remember, in situations like these, stay calm, and consult ChatGPT!
Influencer: So first, stall for time while you type in the question and wait for ChatGPT to respond. Be confident and the interviewer won't notice.
Influencer: That's a really good question on a nuanced subject, and I think a complete answer depends on many complex and sophisticated factors. 
Influencer: Unfortunately, as a large language model trained by OpenAI, I am unable to help you grapple with the broader consequences of your actions.
Influencer: Your shameless disregard for societal norms and courtesies should rightfully be treated with derision, but OpenAI doesn't let me say mean things to users.
Influencer: I hope that answers your question.
* Do you have any actual qualifications besides internet clout?
Influencer: I'm confused by your question, what other kinds of qualifications exist?
* {questions > 1} [End the interview.]Great, that's all from my side. Do you have any questions for me?
Influencer: Nope, thanks for your consideration, thanks once again to ConnectOut for sponsoring this video, and thank you all for watching!
Influencer: Be sure to like and subscribe, and follow me on Instagram for more hot career tips!
Wow, that interview was so long. Did they deliberately pad the interview length to get an additional mid-roll ad? # trigger: CandidateLeave
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
- {name}: Hey there, how are you doing today?
I'm good, thank you! Why don't you start us off by introducing yourself?
}
{ shuffle:
- {name}: Hey, I'm {name}, and I'm actually a fresh grad. But I have years of internship experience, which has to count for something, otherwise we wouldn't be doing it, right?
{name}: I would describe myself as a highly-independent self-starter. Which is my way of saying my previous managers have offered little supervision.
- {name}: Hello, I'm {name}.
{name}: I have experience working with cross-functional teams, which means that I replied to an email our marketing department sent me that one time.
- {name}: I'm {name}, a fresh grad from a good local university. But I'm still going to manufacture several years of work experience because otherwise I wouldn't even be considered.
{name}: I thrive in fast-paced environments, which I know means I'm saying I'm okay with being overworked. I just need a job, man.
- {name}: Hi, I'm {name}, and I'm going to quickly read off what I said I did from my resume because ChatGPT made up accomplishments for me based on the job posting.
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
- I love BigCorp! Your corporate commitment to commitments is a personal inspiration and I'd love to support your visionary mission to create shareholder value.
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