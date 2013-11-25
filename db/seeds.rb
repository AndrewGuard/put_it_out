# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



  resources = Resource.create([{ title: 'Smoke Free', link: 'http://smokefree.gov/', description: 'Get the U.S Governments help quitting smoking' },
  							 { title: "Allen Car\'s guide to quitting", link: 'http://allencarr.com/', description: 'British author of books about quitting smoking and other psychological dependencies including alcohol addiction. He quit smoking after 33 years as a hundred-a-day chain smoker' }, 
  							 { title: 'American Lung Association', link: 'http://www.lung.org/stop-smoking/how-to-quit/', description: 'he American Lung Association is the leading organization working to save lives by improving lung health and preventing lung disease through Education, Advocacy and Research.' },
  							 { title: 'Tobacco Free CA', link: 'http://www.tobaccofreeca.com/quit-smoking/how-to-quit/', description: "Don\'t want help from the Fed get Help from a State." },
  							 { title: 'National Cancer Institute', link: 'http://www.cancer.gov/cancertopics/factsheet/tobacco/cessation', description: 'Quitting information and telephone counseling' },
  							 { title: 'QuitNet', link: 'http://www.quitnet.com/', description: 'Online support and quitting information' },
  							 { title: 'American Cancer Society', link: 'http://www.cancer.org/Healthy/StayAwayfromTobacco/GuidetoQuittingSmoking/index', description: 'Quitting information and helpful tips from yet another society' },
  							 { title: 'Cigarette Butt Pollution Project', link: 'http://www.cigwaste.org/', description: 'Cigarette Butts are fracking everywhere.' },
  							 { title: 'Society for the prevention of Cancer in Americans', link: 'http://www.cancer.org/Healthy/StayAwayfromTobacco/GuidetoQuittingSmoking/index', description: "Don\'t let cancer stop you from having guns fast cars and other birth rights." }])

users = User.create([{ name: 'Chicago', email:'Chicago@Chicago.com', password: 'Chicago', username: 'Chicago'},
					{ name: 'DougtheBug', email:'DougtheBug@DougtheBug.com', password: 'DougtheBug', username: 'DougtheBug'}, 
					{ name: 'JaketheRake', email:'JaketheRake@JaketheRake.com', password: 'JaketheRake', username: 'JaketheRake'}, 
					{ name: 'DratPack', email:'DratPack@DratPack.com', password: 'DratPack', username: 'DratPack'}, 
					{ name: 'DavetheSmave', email:'DavetheSmave@DavetheSmave.com', password: 'DavetheSmave', username: 'DavetheSmave'}, 
					{ name: 'RockingtheBoat', email:'RockingtheBoat@RockingtheBoat.com', password: 'RockingtheBoat', username: 'RockingtheBoat'}, 
					{ name: 'GreatApes', email:'GreatApes@GreatApes.com', password: 'GreatApes', username: 'GreatApes'}, 
					{ name: 'UnoDosTres', email:'UnoDosTres@UnoDosTres.com', password: 'UnoDosTres', username: 'UnoDosTres'}, 
					{ name: 'BlowHarder', email:'BlowHarder@BlowHarder.com', password: 'BlowHarder', username: 'BlowHarder'}, 
					{ name: 'MonkyAround', email:'MonkyAround@MonkyAround.com', password: 'MonkyAround', username: 'MonkyAround'} 
	])

   post = Post.create(title: 'A year ago today, I was a 3-packs-a-day smoker. A year ago tomorrow, I wasnt.', body: "I quit through a regiment of cussing, snacking, and bribery.
That voice in your head that tells you you need to smoke is a lying sack of shit. That is not your brain talking. That is your addiction talking. Every chance you get, you tell that little shit to shut the fuck up")
   post.update_attribute(:user_id, 1)
    
    post = Post.create(title: 'Quitting smoking to become a woman.', body: "So I am transgender, which means I have to quit smoking to be able to make the much needed transition safely.

Of course being a smoker sucks anyway, but The stakes seem so much higher for me because if I fail to quit I will never be able to escape this body that I am trapped inside of.

So wish me luck! Anyone got anything they wish they were told before they quit? Love you all xxx")

    post.update_attribute(:user_id, 2)


    post = Post.create(title: 'To all of the new nonsmokers (and those considering it), I have a few words for you.', body: "Congratulations!

There are a million reasons to quit, and a million reasons that you could potentially tell yourself that you should have one more. The reality is that life is just plain easier without needing to do something when you wake up, or after you eat, or on your breaks at work, or whenever it is that you used to smoke. Sure, it feels harder for a few days, maybe a few weeks, but youll soon realize that you're not missing out on anything. You can still hang out with the smokers, you can stand outside and breathe fresh air, you can do whatever it is that you used to do. The difference is that you can now do it for free, and on your terms.

You can allow yourself angry or nervous or stressed, without it being because you need a smoke. You can stop what you're doing and take a break, because you deserve a break, not because you need a smoke. Stop using cigarettes as an excuse to acknowledge that you have feelings, or as a tool to do normal, healthy things like being able to step away from a stressful situation for a moment. Smoking doesn't actually help you deal with anything. Taking time for yourself does.

You can do this. Millions of people make it through their days without smoking, and now, you will")
    post.update_attribute(:user_id, 4)



    post = Post.create(title: 'The smokers at my company laughed at me - they still havent understood.', body: "Yes, this might be my 8th or 9th shot at quitting smoking. Yes, you can laugh all you want and tell me I might not have the willpower for it.

What these guys still havent really understood is that I am ACTUALLY trying to quit while they sit around, dream about quitting and kill themselves.

Everyone fails, and there is no shame in doing so. But only a fool would accept that failure and continue to smoke. You failed and relapsed? Fine. Doesnt matter. Had to happen. Try again")
    post.update_attribute(:user_id, 3)


    post = Post.create(title: '46 years smoking 41 days quit', body: "You would not believe the grief I have endured during these 41 days, life has been a massive roller coaster. If I have stayed smoke free over last 41 days I can do it forever
")
    post.update_attribute(:user_id, 1)



    post = Post.create(title: '6 years and 7 months ago, I quit. I want to speak to those who will listen', body: "I have been subbed here for a long time. Probably since inception or near it at least. I think ive posted here a couple times but of all subreddits this has been one of the 3 that ive been subscribed to the longest. I like hearing you all try to kick a nasty habit. It gives me a big grin when i see you guys celebrate your 1st days, 1st week, 1st month and 1st years.

I quit right at 6 years and 7 months ago (give or take a day due to bad mathing and not actually writing it down) and I want to tell you guys, its possible to kick. I was a cold turkey quitter myself. It was probably the 8th or 9th dozen time I tried to quit but you know what, I finally did it. I was tired of what it was doing to my health and my wallet. What it was doing to my clothes and what it was doing to my teeth. What it was doing to my fingers and my walls and curtains.

I was tired of smelling like an ashtray and I finally quit. I want to encourage you all to finally quit. If youre thinking about it and think you cant quit because youve tried so many times before, remember that someone out there failed dozens of times and finally stopped. It can be done. More importantly, YOU can do it. If you quit for 3 days and break remember that its 3 more days than you were doing and restart. Go for more than 3 days next time. If you reach 7 then relapse just remember you have now gone 7 days and try again.

The longer and longer you go the less and less youll want one. Full disclosure there are still times Id like one but once you get past a certain point youll be DAMNED if youre going to reset that counter because of one weak moment. I wear my 2,446 days as my badge of honor. I am proud of it and love watching it go up and up.

My suggestions. Get gum and mints. Youre going to have oral cravings so shove something in there (Get your mind out of the gutter unless that works too). Learn to meditate for 5 minutes controlling on taking deep breaths, holding them for 5 seconds, then exhaling. Just as if you were smoking. Only, minus the cigs.

Remember, there is someone out there to believe in you. Ive seen a LOT of people on here quitting and it means you can too. A lot of them probably thought I cant do this until they did it. Keep up the good work and remember that if you do fail, just get back on it. Keep moving forward")
    post.update_attribute(:user_id, 5)



    post = Post.create(title: 'Woke up completely disgusted with myself', body: "Last night I went to a party. One friend, who quit around the same time I did, was smoking an e-cigarette right in my face the whole night. Another friend, who still hasnt even thought about quitting, was really interested in the e-cig. I tried to ignore it completely because I know if I let even just a little bit of nicotine back in Ill be right back to two packs a day by the end of the week.

I got kind of hammered at the party, got a ride home from a smoker, and collapsed into bed. I dreamed that I was still at the party and I was smoking that e-cig, and from there just bumming smokes from people. It was really realistic dream. I got up and my clothes from the night before smelled like cigarettes. I was so disappointed and disgusted with myself I nearly puked.

I texted the friend who gave me a ride. I cant believe I was smoking last night! She wrote back, What?! When? From there we worked out that I never touched any of it and unless I was puffing away at home I was still a quitter. * whew *

112 days. I can hardly believe it. A year ago I was hawking my TV so I could afford cigarettes (and choosing to just buy more cigarettes instead of buying food with that money). Now Im sick to my stomach at the idea of lighting up. I never thought Id see the day!

End of rant!

Edit posted this when I was hungover/still drunk and forgot all about it. Thanks for all the encouragement. I only mentioned hawking the TV so people who are on the fence about quitting and using But you dont understand how much I love smoking! can see that there is someone out there who loved it more and even that fool was able to quit.
")
    post.update_attribute(:user_id, 2)


    post = Post.create(title: 'the cigarette delusions', body: "Hi, new to Reddit, thoroughly enjoying it. Stumbled over this subreddit and thought I would share. I quit smoking a few years ago after smoking a pack a day or more since age 15 (Im 46).

One thing I noticed over my several attempts was the extreme way nicotine withdrawal distorts reality, so much that I actually went ahead and listed the ways. I call them the cigarette delusions:

    Feeling: You feel horrible right now. In fact, you feel so bad, so down, that you will probably never feel happy again, but exist in a kind of half-alive state for the rest of eternity. The only thing that can fix that is a cigarette. Fact: If you stay distracted for five minutes or so, you might forget that you ever felt that way.

    Feeling: Youre craving... and right now a cigarette would be amazing, a sublime sensory experience beyond compare, almost spiritual. Fact: Its like having a baby dragon crap in your mouth. The relief you feel is so intense its nauseating, then sickening. Its like psychic rape.

    That person over there is smoking... and he is the coolest person in the world. How does he manage to look so cool? He is successfully managing life, and smoking, too. How come youre not cool like that? Fact: He is a fucking retard.

Its a mind game. You can win.")
    post.update_attribute(:user_id, 2)


    post = Post.create(title: 'About to hit day 80. Im not proud of the reason I quit, but obviously it worked.', body: "n late September, a bunch of friends were throwing around the idea of quitting on the same day and being supports for each other. I wasnt for it at all as my philosophy was Life is short and then you die, so fuck it.

Then it was mentioned that they would be having a competition to see who could last the longest. I then very obnoxiously stated, I dont want to quit and I dont give a shit about being healthy. But I know for sure Id last longer than you and I want to flaunt it. Im winning this thing. We decided to quit on October 1st.

2 weeks later, Im the only one left standing. I continued on because the lack of smoking has improved my karaoke skills.

I guess if theres one thing to take away from this, its that its okay to be motivated for reasons other than the obvious health benefits. The end justifies the means, right?")
    post.update_attribute(:user_id, 4)


    post = Post.create(title: 'These things suck', body: "Im tired of my chest hurting all the goddamn time. Every little thing pisses me off but itll all be worth it. Todays the day gentlemen :)")
    post.update_attribute(:user_id, 1)


    post = Post.create(title: 'I just turned down a cigarette offered to me from an attractive girl that I would like to sleep with. And Im drunk.', body: "She literally put a lit cigarette up to lips, and I didn' take a drag. Despite having consumed plenty  intoxicants tonight. AND I DIDNT INHALE THE LIT CIGARETTE THAT SHE PUT TO MY LIPS. GOD DAMN! WHATS YOUR EXCUSE FOR SMOKING?

HAHAH HELL YEAH I DIDNT SMOKE A CIGARETTE TONIGHT! NOT ONE DRAG!
")
    post.update_attribute(:user_id, 7)


    post = Post.create(title: 'If you got nicotine problems, I feel bad for you son. Its been 99 days and I aint smoked 1!', body: "Tomorrow is my 100-day anniversary. Feeling stronger and happier with each day that goes by. I have had zero cravings and the passage of time only makes the idea of smoking more repulsive. When I think of the stink, wasted money and shortened lifespan I could kick myself with spurs. If youve never smoked, dont. If you smoke, try your best to quit. If you have quit, stay strong.")
    post.update_attribute(:user_id, 8)


    post = Post.create(title: 'My best friend married a hot doctor on Saturday', body: "I smoke so much and cant workout because of it. I was in the Marines and used to be shredded and thin. Now all I do is smoke and eat. I was his best man and was so ashamed of my too tight suit, my double chin and so much more. During the wedding I decided to quit smoking as first step. It was an early morning wedding and afternoon reception, so I was home by 4pm. I havent had a cigg since then and even got up early enough to lift weights before work. Almost 2 days in, but I dont really care about the length of time since I quit. The amount of shame I felt on Saturday was life changing. Being out of breath for the best man toast, being asked by several people if I smoke, my hot ex was there with her new bf and one of the reasons she dumped me was because I wouldnt quit smoking. Ill never touch another cigg as long as I live. Edit: Thanks for all of the good will guys")
    post.update_attribute(:user_id, 2)


    post = Post.create(title: 'Just threw my last few cigarettes in the toilet... and then shit on them.', body: "Im done with this crap. And that crap")
    post.update_attribute(:user_id, 5)



     post = Post.create(title: 'I am so proud, didnt smoke on NYE, around smoking friends, drinking alcohol and being in day 9 of quitting. Yay! ', body: "Just wanted to share
")
    post.update_attribute(:user_id, 3)
