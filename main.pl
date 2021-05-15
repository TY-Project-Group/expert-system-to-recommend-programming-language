% Expert system should be started from here
main :-
  intro,
  reset_answers,
  find_language(Language),
  describe(Language), nl.
  

intro :-
  write('Which programming language should I learn first?'), nl,
  write('To answer, input the number shown next to each answer, followed by a dot (.)'), nl, nl.


find_language(Language) :-
  language(Language), !.


% Store user answers to be able to track his progress
:- dynamic(progress/2).


% Clear stored user progress
% reset_answers must always return true; because retract can return either true
% or false, we fail the first and succeed with the second.
reset_answers :-
  retract(progress(_, _)),
  fail.
reset_answers.


% Rules for the knowledge base

language(python) :-
  why(learn_a_new_skill),
  prefer_to_learn(easy_way).

language(cpp) :-
  why(learn_a_new_skill),
  prefer_to_learn(really_hard_way).

language(java) :-
  why(learn_a_new_skill),
  prefer_to_learn(slightly_harder_way),
  car(auto).

language(c) :-
  why(learn_a_new_skill),
  prefer_to_learn(slightly_harder_way),
  car(manual).

language(cpp) :-
  why(design_video_games),
  engine(unreal).

language(cpp) :-
  why(design_video_games),
  engine(other).

language(csharp) :-
  why(design_video_games),
  engine(unity).

language(swift) :-
  why(design_mobile_apps),
  platform(apple),
  patience(not_very).

language(objectivec) :-
  why(design_mobile_apps),
  platform(apple),
  patience(extreme).

language(cpp) :-
  why(design_mobile_apps),
  platform(android),
  graphic(yes).

language(java) :-
  why(design_mobile_apps),
  platform(android),
  graphic(no).

language(dart) :-
  why(design_mobile_apps),
  platform(both),
  web_exp(no).

language(javascript) :-
  why(design_mobile_apps),
  platform(both),
  web_exp(yes).

language(html) :-
  why(build_websites),
  web(front_end).

language(javascript) :-
  why(build_websites),
  web(back_end),
  feature(looks).

language(java) :-
  why(build_websites),
  web(back_end),
  feature(stability),
  used_speedy(used).

language(ruby) :-
  why(build_websites),
  web(back_end),
  feature(stability),
  used_speedy(speedy).

language(javascript) :-
  why(get_a_job),
  want_to_work_for(startup),
  myself(designer).

language(python) :-
  why(get_a_job),
  want_to_work_for(startup),
  myself(numbers_guru),
  algorithm(yes).

language(mysql) :-
  why(get_a_job),
  want_to_work_for(startup),
  myself(numbers_guru),
  algorithm(no).

language(python) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(i_dont_know),
  big_tech_company(facebook).

language(python) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(i_dont_know),
  big_tech_company(google).

language(csharp) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(i_dont_know),
  big_tech_company(microsoft).

language(c) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(i_dont_know),
  big_tech_company(appleC).

language(html) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(web_dev),
  web(front_end).

language(javascript) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(web_dev),
  web(back_end),
  feature(looks).

language(java) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(web_dev),
  web(back_end),
  feature(stability),
  used_speedy(used).

language(ruby) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(web_dev),
  web(back_end),
  feature(stability),
  used_speedy(speedy).

language(dart) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(mobile_app_dev),
  platform(both),
  web_exp(no).

language(javascript) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(mobile_app_dev),
  platform(both),
  web_exp(yes).

language(cpp) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(mobile_app_dev),
  platform(android),
  graphic(yes).

language(java) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(mobile_app_dev),
  platform(android),
  graphic(no).

language(swift) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(mobile_app_dev),
  platform(apple),
  patience(not_very).

language(objectivec) :-
  why(get_a_job),
  want_to_work_for(established),
  job_role(mobile_app_dev),
  platform(apple),
  patience(extreme).


% Questions for the knowledge base
question(why) :-
  write('Why do you want to learn programming?'), nl,
  write('I want to code so, I can _____'), nl.

question(prefer_to_learn) :-
  write('I prefer to learn things _____'), nl.

question(car) :-
  write('Which kind of car do you prefer?'), nl.

question(engine) :-
  write('Which engine are you planning to use?'), nl.

question(platform) :-
  write('Which mobile OS do you want to develop for?'), nl.

question(patience) :-
  write('How patient are you?'), nl.

question(graphic) :-
  write('Will your app be graphic intensive?'), nl.

question(web_exp) :-
  write('Do you have experience with web development?'), nl.

question(web) :-
  write('Front-end or Back-end?'), nl.

question(feature) :-
  write('What is more important to you, looks or stability?'), nl.

question(used_speedy) :-
  write('Do you want your language to be widely used or speedy?'), nl.

question(want_to_work_for) :-
  write('Do you want to work for startup or an established company?'), nl.

question(myself) :-
  write('I consider myself a _____'), nl.

question(algorithm) :-
  write('Do you like developing algorithms?'), nl.

question(job_role) :-
  write('What kind of job role are you looking for?'), nl.

question(big_tech_company) :-
  write('I want to work for big tech companies like _____'), nl.



% Answers for the knowledge base
answer(learn_a_new_skill) :-
  write('Learn a new skill'), nl.

answer(easy_way) :-
  write('The easy way'), nl.

answer(slightly_harder_way) :-
  write('The slightly harder way'), nl.

answer(really_hard_way) :-
  write('The really hard way'), nl.

answer(auto) :-
  write('Automatic'), nl.

answer(manual) :-
  write('Manual'), nl.

answer(design_video_games) :-
  write('Design video games'), nl.

answer(unreal) :-
  write('Unreal Engine'), nl.

answer(unity) :-
  write('Unity Engine'), nl.

answer(other) :-
  write('Other'), nl.

answer(design_mobile_apps) :-
  write('Design mobile apps'), nl.

answer(apple) :-
  write('Apple'), nl.

answer(android) :-
  write('Android'), nl.

answer(both) :-
  write('Both'), nl.

answer(not_very) :-
  write('Not very'), nl.

answer(extreme) :-
  write('Extremely'), nl.

answer(yes) :-
  write('Yes'), nl.

answer(no) :-
  write('No'), nl.

answer(build_websites) :-
  write('Build Websites'), nl.
  
answer(front_end) :-
  write('Front-end'), nl.

answer(back_end) :-
  write('Back-end'), nl.

answer(looks) :-
  write('Looks'), nl.

answer(stability) :-
  write('Stability'), nl.

answer(used) :-
  write('Widely used'), nl.

answer(speedy) :-
  write('Speedy'), nl.

answer(get_a_job) :-
  write('Get a job'), nl.

answer(startup) :-
  write('A Startup'), nl.

answer(established) :-
  write('An established company'), nl.

answer(designer) :-
  write('Designer'), nl.

answer(numbers_guru) :-
  write('Numbers guru'), nl.

answer(i_dont_know) :-
  write('I don\'t know'), nl.

answer(mobile_app_dev) :-
  write('Mobile App Developer'), nl.

answer(web_dev) :-
  write('Web Developer'), nl.

answer(facebook) :-
  write('Facebook'), nl.

answer(google) :-
  write('Google'), nl.

answer(microsoft) :-
  write('Microsoft'), nl.

answer(appleC) :-
  write('Apple'), nl.



% Language descriptions for the knowledge base
describe(python) :-
  write('Python'), nl,
  write('Widely regarded as the best programming language for beginners'), nl,
  write('Easiest to learn').

describe(java) :-
  write('Java'), nl,
  write('One of the most in demand & highest paying programming languages'), nl,
  write('Slogan: write once, work everywhere').

describe(c) :-
  write('C'), nl,
  write('Lingua franca of programming language'), nl,
  write('One of the oldest and most widely used language in the world').

describe(cpp) :-
  write('C++'), nl,
  write('Complex version of C with a lot more features'), nl,
  write('Recommended only if you have a mentor to guide you').

describe(javascript) :-
  write('JavaScript'), nl,
  write('Most popular clients-side web scripting language'), nl,
  write('A must learn for front-end web developer (html and CSS as well)').

describe(csharp) :-
  write('C#'), nl,
  write('A popular choice for enterprise to create websites and Windows application using .NET framework'), nl,
  write('Similar to Java in basic syntax and some features').

describe(ruby) :-
  write('Ruby'), nl,
  write('Mostly known for its popular web framework, Ruby on Rails'), nl,
  write('Focuses on getting things done').

describe(objectivec) :-
  write('Objective-C'), nl,
  write('Primary language used by Apple for MacOSX & iOS'), nl,
  write('Choose this if you want to focus on developing iOS or OSX apps only').

describe(swift) :-
  write('Swift'), nl.

describe(dart) :-
  write('Dart'), nl.

describe(html) :-
  write('HTML & CSS'), nl.

describe(mysql) :-
  write('MySQL'), nl.


% Assigns an answer to questions from the knowledge base
why(Answer) :-
  progress(why, Answer).
why(Answer) :-
  \+ progress(why, _),
  ask(why, Answer, [learn_a_new_skill, design_video_games, design_mobile_apps, build_websites, get_a_job]).

prefer_to_learn(Answer) :-
  progress(prefer_to_learn, Answer).
prefer_to_learn(Answer) :-
  \+ progress(prefer_to_learn, _),
  ask(prefer_to_learn, Answer, [easy_way, really_hard_way, slightly_harder_way]).

car(Answer) :-
  progress(car, Answer).
car(Answer) :-
  \+ progress(car, _),
  ask(car, Answer, [auto, manual]).

engine(Answer) :-
  progress(engine, Answer).
engine(Answer) :-
  \+ progress(engine, _),
  ask(engine, Answer, [unreal, unity, other]).

platform(Answer) :-
  progress(platform, Answer).
platform(Answer) :-
  \+ progress(platform, _),
  ask(platform, Answer, [android, apple, both]).

patience(Answer) :-
  progress(patience, Answer).
patience(Answer) :-
  \+ progress(patience, _),
  ask(patience, Answer, [not_very, extreme]).

graphic(Answer) :-
  progress(graphic, Answer).
graphic(Answer) :-
  \+ progress(graphic, _),
  ask(graphic, Answer, [yes, no]).

web_exp(Answer) :-
  progress(web_exp, Answer).
web_exp(Answer) :-
  \+ progress(web_exp, _),
  ask(web_exp, Answer, [yes, no]).

web(Answer) :-
  progress(web, Answer).
web(Answer) :-
  \+ progress(web, _),
  ask(web, Answer, [front_end, back_end]).

feature(Answer) :-
  progress(feature, Answer).
feature(Answer) :-
  \+ progress(feature, _),
  ask(feature, Answer, [looks, stability]).

used_speedy(Answer) :-
  progress(used_speedy, Answer).
used_speedy(Answer) :-
  \+ progress(used_speedy, _),
  ask(used_speedy, Answer, [used, speedy]).

want_to_work_for(Answer) :-
  progress(want_to_work_for, Answer).
want_to_work_for(Answer) :-
  \+ progress(want_to_work_for, _),
  ask(want_to_work_for, Answer, [startup, established]).

myself(Answer) :-
  progress(myself, Answer).
myself(Answer) :-
  \+ progress(myself, _),
  ask(myself, Answer, [designer, numbers_guru]).

algorithm(Answer) :-
  progress(algorithm, Answer).
algorithm(Answer) :-
  \+ progress(algorithm, _),
  ask(algorithm, Answer, [yes, no]).

job_role(Answer) :-
  progress(job_role, Answer).
job_role(Answer) :-
  \+ progress(job_role, _),
  ask(job_role, Answer, [i_dont_know, web_dev, mobile_app_dev]).

big_tech_company(Answer) :-
  progress(big_tech_company, Answer).
big_tech_company(Answer) :-
  \+ progress(big_tech_company, _),
  ask(big_tech_company, Answer, [appleC, facebook, google, microsoft]).


% Outputs a nicely formatted list of answers
% [First|Rest] is the Choices list, Index is the index of First in Choices
answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).


% Parses an Index and returns a Response representing the "Indexth" element in
% Choices (the [First|Rest] list)
parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).


% Asks the Question to the user and saves the Answer
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.