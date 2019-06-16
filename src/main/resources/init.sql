DROP TABLE IF EXISTS poets CASCADE;
DROP TABLE IF EXISTS poems CASCADE;

CREATE TABLE poets (
    id serial PRIMARY KEY,
    forename varchar(30),
    last_name varchar(30),
    username varchar(30),
    password varchar(30)
);

CREATE TABLE poems (
    id serial PRIMARY KEY,
    title varchar(50),
    content text,
    poet_id int REFERENCES poets(id)
);

INSERT INTO poets (forename, last_name, username, password) VALUES ('Howard Phillips', 'Lovecraft', 'hpl1890', 'feartheunknown');
INSERT INTO poets (forename, last_name, username, password) VALUES ('Edgar Allan', 'Poe', 'theR4ven', 'g0thLike');
INSERT INTO poets (forename, last_name, username, password) VALUES ('Ernest', 'Hemingway', 'icebergTheory', 'suicide1961');

INSERT INTO poems (title, content, poet_id) VALUES ('Yule Horror',
'There is snow on the ground,
And the valleys are cold,
And a midnight profound
Blackly squats o''er the wold;
But a light on the hilltops half-seen hints of feastings un-hallowed and old.

There is death in the clouds,
There is fear in the night,
For the dead in their shrouds
Hail the sin''s turning flight.
And chant wild in the woods as they dance round a Yule- altar fungous and white.

To no gale of Earth''s kind
Sways the forest of oak,
Where the sick boughs entwined
By mad mistletoes choke,
For these pow''rs are the pow''rs of the dark, from the graves of the lost Druid-folk.',
1);

INSERT INTO poems (title, content, poet_id) VALUES ('Nemesis',
'Through the ghoul-guarded gateways of slumber,
Past the wan-mooned abysses of night,
I have lived o''er my lives without number,
I have sounded all things with my sight;
And I struggle and shriek ere the daybreak, being driven to madness with fright.

I have whirled with the earth at the dawning,
When the sky was a vaporous flame;
I have seen the dark universe yawning
Where the black planets roll without aim,
Where they roll in their horror unheeded, without knowledge or lustre or name.

I had drifted o''er seas without ending,
Under sinister grey-clouded skies,
That the many-forked lightning is rending,
That resound with hysterical cries;
With the moans of invisible daemons, that out of the green waters rise.

I have plunged like a deer through the arches
Of the hoary primoridal grove,
Where the oaks feel the presence that marches,
And stalks on where no spirit dares rove,
And I flee from a thing that surrounds me, and leers through dead branches above.

I have stumbled by cave-ridden mountains
That rise barren and bleak from the plain,
I have drunk of the fog-foetid fountains
That ooze down to the marsh and the main;
And in hot cursed tarns I have seen things, I care not to gaze on again.

I have scanned the vast ivy-clad palace,
I have trod its untenanted hall,
Where the moon rising up from the valleys
Shows the tapestried things on the wall;
Strange figures discordantly woven, that I cannot endure to recall.

I have peered from the casements in wonder
At the mouldering meadows around,
At the many-roofed village laid under
The curse of a grave-girdled ground;
And from rows of white urn-carven marble, I listen intently for sound.

I have haunted the tombs of the ages,
I have flown on the pinions of fear,
Where the smoke-belching Erebus rages;
Where the jokulls loom snow-clad and drear:
And in realms where the sun of the desert consumes what it never can cheer.

I was old when the pharaohs first mounted
The jewel-decked throne by the Nile;
I was old in those epochs uncounted
When I, and I only, was vile;
And Man, yet untainted and happy, dwelt in bliss on the far Arctic isle.

Oh, great was the sin of my spirit,
And great is the reach of its doom;
Not the pity of Heaven can cheer it,
Nor can respite be found in the tomb:
Down the infinite aeons come beating the wings of unmerciful gloom.

Through the ghoul-guarded gateways of slumber,
Past the wan-mooned abysses of night,
I have lived o''er my lives without number,
I have sounded all things with my sight;
And I struggle and shriek ere the daybreak, being driven to madness with fright.',
1);

INSERT INTO poems (title, content, poet_id) VALUES ('Despair', 
'O''er the midnight moorlands crying,
Thro'' the cypress forests sighing,
In the night-wind madly flying,
Hellish forms with streaming hair;
In the barren branches creaking,
By the stagnant swamp-pools speaking,
Past the shore-cliffs ever shrieking,
****''d demons of despair.

Once, I think I half remember,
Ere the grey skies of November
Quench''d my youth''s aspiring ember,
Liv''d there such a thing as bliss;
Skies that now are dark were beaming,
Bold and azure, splendid seeming
Till I learn''d it all was dreaming —
Deadly drowsiness of Dis.

But the stream of Time, swift flowing,
Brings the torment of half-knowing —
Dimly rushing, blindly going
Past the never-trodden lea;
And the voyager, repining,
Sees the wicked death-fires shining,
Hears the wicked petrel''s whining
As he helpless drifts to sea.

Evil wings in ether beating;
Vultures at the spirit eating;
Things unseen forever fleeting
Black against the leering sky.
Ghastly shades of bygone gladness,
Clawing fiends of future sadness,
Mingle in a cloud of madness
Ever on the soul to lie.

Thus the living, lone and sobbing,
In the throes of anguish throbbing,
With the loathsome Furies robbing
Night and noon of peace and rest.
But beyond the groans and grating
Of abhorrent Life, is waiting
Sweet Oblivion, culminating
All the years of fruitless quest.',
1);

INSERT INTO poems (title, content, poet_id) VALUES ('A Dream',
'In visions of the dark night
I have dreamed of joy departed-
But a waking dream of life and light
Hath left me broken-hearted.
Ah! what is not a dream by day
To him whose eyes are cast
On things around him with a ray
Turned back upon the past?
That holy dream- that holy dream,
While all the world were chiding,
Hath cheered me as a lovely beam
A lonely spirit guiding.
What though that light, thro'' storm and night,
So trembled from afar-
What could there be more purely bright
In Truth''s day-star?',
2);

INSERT INTO poems (title, content, poet_id) VALUES ('A Valentine',
'For her this rhyme is penned, whose luminous eyes,
Brightly expressive as the twins of Leda,
Shall find her own sweet name, that nestling lies
Upon the page, enwrapped from every reader.
Search narrowly the lines!- they hold a treasure
Divine- a talisman- an amulet
That must be worn at heart. Search well the measure-
The words- the syllables! Do not forget
The trivialest point, or you may lose your labor
And yet there is in this no Gordian knot
Which one might not undo without a sabre,
If one could merely comprehend the plot.
Enwritten upon the leaf where now are peering
Eyes scintillating soul, there lie perdus
Three eloquent words oft uttered in the hearing
Of poets, by poets- as the name is a poet''s, too,
Its letters, although naturally lying
Like the knight Pinto- Mendez Ferdinando-
Still form a synonym for Truth- Cease trying!
You will not read the riddle, though you do the best you can do.',
2);

INSERT INTO poems (title, content, poet_id) VALUES ('Alone',
'From childhood''s hour I have not been
As others were; I have not seen
As others saw; I could not bring
My passions from a common spring.
From the same source I have not taken
My sorrow; I could not awaken
My heart to joy at the same tone;
And all I loved, I loved alone.
Then- in my childhood, in the dawn
Of a most stormy life- was drawn
From every depth of good and ill
The mystery which binds me still:
From the torrent, or the fountain,
From the red cliff of the mountain,
From the sun that round me rolled
In its autumn tint of gold,
From the lightning in the sky
As it passed me flying by,
From the thunder and the storm,
And the cloud that took the form
(When the rest of Heaven was blue)
Of a demon in my view.',
2);

INSERT INTO poems (title, content, poet_id) VALUES ('Eldorado',
'Gaily bedight,
A gallant knight,
In sunshine and in shadow,
Had journeyed long,
Singing a song,
In search of Eldorado.
But he grew old--
This knight so bold--
And o''er his heart a shadow
Fell as he found
No spot of ground
That looked like Eldorado.
And, as his strength
Failed him at length,
He met a pilgrim shadow-
"Shadow," said he,
"Where can it be--
This land of Eldorado?"
"Over the Mountains
Of the Moon,
Down the Valley of the Shadow,
Ride, boldly ride,"
The shade replied--
"If you seek for Eldorado!"',
2);

INSERT INTO poems (title, content, poet_id) VALUES ('Israfel',
'In Heaven a spirit doth dwell
"Whose heart-strings are a lute";
None sing so wildly well
As the angel Israfel,
And the giddy stars (so legends tell),
Ceasing their hymns, attend the spell
Of his voice, all mute.
Tottering above
In her highest noon,
The enamored moon
Blushes with love,
While, to listen, the red levin
(With the rapid Pleiads, even,
Which were seven,)
Pauses in Heaven.
And they say (the starry choir
And the other listening things)
That Israfeli''s fire
Is owing to that lyre
By which he sits and sings-
The trembling living wire
Of those unusual strings.
But the skies that angel trod,
Where deep thoughts are a duty-
Where Love''s a grown-up God-
Where the Houri glances are
Imbued with all the beauty
Which we worship in a star.
Therefore thou art not wrong,
Israfeli, who despisest
An unimpassioned song;
To thee the laurels belong,
Best bard, because the wisest!
Merrily live, and long!
The ecstasies above
With thy burning measures suit-
Thy grief, thy joy, thy hate, thy love,
With the fervor of thy lute-
Well may the stars be mute!
Yes, Heaven is thine; but this
Is a world of sweets and sours;
Our flowers are merely- flowers,
And the shadow of thy perfect bliss
Is the sunshine of ours.
If I could dwell
Where Israfel
Hath dwelt, and he where I,
He might not sing so wildly well
A mortal melody,
While a bolder note than this might swell
From my lyre within the sky.',
2);

INSERT INTO poems (title, content, poet_id) VALUES ('Advice To A Son',
'Never trust a white man,
Never kill a Jew,
Never sign a contract,
Never rent a pew.
Don''t enlist in armies;
Nor marry many wives;
Never write for magazines;
Never scratch your hives.
Always put paper on the seat,
Don''t believe in wars,
Keep yourself both clean and neat,
Never marry whores.
Never pay a blackmailer,
Never go to law,
Never trust a publisher,
Or you''ll sleep on straw.
All your friends will leave you
All your friends will die
So lead a clean and wholesome life
And join them in the sky.',
3);

INSERT INTO poems (title, content, poet_id) VALUES ('Roosevelt',
'Workingmen believed
He busted trusts,
And put his picture in their windows.
"What he''d have done in France!"
They said.
Perhaps he would--
He could have died
Perhaps,
Though generals rarely die except in bed,
As he did finally.
And all the legends that he started in his life
Live on and prosper,
Unhampered now by his existence.',
3);

INSERT INTO poems (title, content, poet_id) VALUES ('Poet',
'The only man I ever loved
Said good bye
And went away
He was killed in Picardy
On a sunny day.',
3);

INSERT INTO poems (title, content, poet_id) VALUES ('Poetry',
'So now,
Losing the three last night,
Takeing them back today,
Dripping and dark the woods . . .',
3);

INSERT INTO poems (title, content, poet_id) VALUES ('Captives',
'Some came in chains
Unrepentant but tired.
Too tired but to stumble.
Thinking and hating were finished
Thinking and fighting were finished
Retreating and hoping were finished.
Cures thus a long campaign,
Making death easy.',
3);

INSERT INTO poems (title, content, poet_id) VALUES ('To Good Guys Dead',
'They sucked us in;
King and country,
Christ Almighty
And the rest.
Patriotism,
Democracy,
Honor-
Words and phrases,
They either bitched or killed us.',
3);

INSERT INTO poems (title, content, poet_id) VALUES ('I Like Americans',
'By A Foreigner
I like Americans.
They are so unlike Canadians.
They do not take their policemen seriously.
They come to Montreal to drink.
Not to criticize.
They claim they won the war.
But they know at heart that they didn''t.
They have such respect for Englishmen.
They like to live abroad.
They do not brag about how they take baths.
But they take them.
Their teeth are so good.
And they wear B.V.D.''s all the year round.
I wish they didn''t brag about it.
They have the second best navy in the world.
But they never mention it.
They would like to have Henry Ford for president.
But they will not elect him.
They saw through Bill Bryan.
They have gotten tired of Billy Sunday.
Their men have such funny hair cuts.
They are hard to suck in on Europe.
They have been there once.
They produced Barney Google, Mutt and Jeff.
And Jiggs.
They do not hang lady murderers.
They put them in vaudeville.
They read the Saturday Evening Post
And believe in Santa Claus.
When they make money
They make a lot of money.
They are fine people.',
3);

INSERT INTO poems (title, content, poet_id) VALUES ('I Like Canadians',
'By A Foreigner
I like Canadians.
They are so unlike Americans.
They go home at night.
Their cigarettes don''t smell bad.
Their hats fit.
They really believe that they won the war.
They don''t believe in Literature.
They think Art has been exaggerated.
But they are wonderful on ice skates.
A few of them are very rich.
But when they are rich they buy more horses
Than motor cars.
Chicago calls Toronto a puritan town.
But both boxing and horse-racing are illegal
In Chicago.
Nobody works on Sunday.
Nobody.
That doesn''t make me mad.
There is only one Woodbine.
But were you ever at Blue Bonnets?
If you kill somebody with a motor car in Ontario
You are liable to go to jail.
So it isn''t done.
There have been over 500 people killed by motor cars
In Chicago
So far this year.
It is hard to get rich in Canada.
But it is easy to make money.
There are too many tea rooms.
But, then, there are no cabarets.
If you tip a waiter a quarter
He says "Thank you."
Instead of calling the bouncer.
They let women stand up in the street cars.
Even if they are good-looking.
They are all in a hurry to get home to supper
And their radio sets.
They are a fine people.
I like them.',
3);