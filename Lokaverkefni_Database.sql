

# Ég var að vinna einn í þessu þannig ég hafði ekki tíma til að insert-a allt inn þannig að flest af select skipunum skila engu.



#drop database if exists 0901013310_lokaverkefni;
#CREATE DATABASE 0901013310_lokaverkefni;
#use 0901013310_lokaverkefni;
/*
create table Flytjandi(
	flytjandiID int(10) primary key not null auto_increment,
    Nafn varchar(50),
    Stofndagur char(5),
    Lokadagur char(5),
    tegund varchar(50),
    lysing text,
    medlimir varchar(250)
);
create table Tegund(
	tegundID int(10) primary key not null auto_increment,
    nafn varchar(75)
);
create table utgefandi(
	utgefandiID int(10) primary key not null auto_increment,
    nafn_utgefanda varchar(75),
    stadsetning varchar(125),
    email varchar(125)
);
create table Lag(
	lagID int(10) primary key not null auto_increment,
    Nafn_lags varchar(50),
    Lengd_lags char(5),
    Texti text,
    utgafudagur varchar(10),
    tegundID int(10),
    flytjandiID int(10),
    utgefandiID int(10),
    constraint tegund_FK foreign key (tegundID) references Tegund(tegundID),
    constraint flytjandi_FK foreign key(flytjandiID) references Flytjandi(flytjandiID),
    constraint utgefandi_FK foreign key(utgefandiID) references utgefandi(utgefandiID)
);

create table lagaval(
	laga_val_PK int(10) primary key not null auto_increment,
    rod int(11)
    
);
create table askrifandi(
	askrifandiID int(10) primary key not null auto_increment,
    nafn varchar(75),
    tolvupostfang varchar(125),
    heimilisfang varchar(65)
);
create table askrifanda_listi(
	listiID int(10) primary key not null auto_increment,
    askrifandiID int(10),
    heiti varchar(75),
    stofnadur DATE,
    constraint askrifandi_FK foreign key(askrifandiID) references askrifandi(askrifandiID)
);

insert into 0901013310_lokaverkefni.flytjandi(Nafn,Stofndagur,Lokadagur,tegund,lysing,medlimir)
values 
	("Led Zeppelin", 1968, 1980, "Rokk", "Led Zeppelin var bresk rokk-hljómsveit, sem kom fram á sjónarsviðið árið 1968 undir nafninu New Yardbirds. Hljómsveitin breytti fljótlega nafninu sínu í sitt endanlega nafn, Led Zeppelin. Þeir gerðu sinn fyrsta útgáfusamning við fyrirtækið Artistic Records. Samningurinn gaf þeim umtalsvert listrænt frelsi.", "Jimmy page, Robert Plant, John Paul Jones, John Bonham"),
    ("The beatles", 1960, 1970, "Rokk", "Bítlarnir voru áhrifamikil popphljómsveit sem var stofnuð 1960. Hljómsveitin er í hópi þeirra vinsælustu sem uppi hafa verið.", "John Lennon, Paul McCartney, George Harrison, Ringo Starr"),
    ("Queen", 1960, null, "Rokk", "Queen var bresk rokkhljómsveit sem kom fram á sjónarsviðið 1970. Hljómsveitin var með allra vinsælustu rokk-hljómsveitunum á áttunda og níunda áratugnum.","Freddie Mercury, John Deacon, Paul Rodgers, Adam Lambert"),
	("Coldplay", 1997, null, "Pop", "Coldplay er bresk rokkhljómsveit, stofnuð árið 1996. Hún hefur gefið út 4 breiðskífur sem hafa allar átt góðu gengi að fagna auk þess sem ýmsar smáskífur þeirra hafa notið vinsælda.", "Chris Martin, Johnny Buckland, Will Champion, Guy Berryman"),
    ("Mika", 2006, null, "pop", "stylised as MIKA, is a Lebanese-born English singer and songwriter.", null),
    ("Avicii", 2011, 2018, "EDM", "Avicii was a Swedish musician, DJ, remixer and record producer.", null),
    ("Childish Gambino", 2002, null, "Rap", "Childish Gambino also known as Donald McKinley Glover jr is an american actor, comedian, writer, director, producer, singer, songwriter, rapper and DJ", null),
    ("Metallica", 1981, null, "Metal", "Metallica er bandarísk þungarokkshljómsveit sem hefur verið virk síðan á 9. áratugnum.", "James Hetfield, Lars Ulrich, Kirk Hammet, Robert Trujillo"),
    ("Slipknot", 1995, null, "Metal", "Slipknot er bandarísk þungrokkshljómsveit sem var stofnuð árið 1995 í Iowa.", "Corey Taylor, Mick Thomson ,Jim Root, Craig Jones ,Sid Wilson ,Shawn Crahan, Chris Fehn, Alessandro Venturella, Jay Weinberg"),
    ("Carrie Underwood", 2005, null, "Country", "Carrie Marie Underwood is an American singer, songwriter, and actress. She rose to fame as the winner of the fourth season of American Idol, in 2005", null);

insert into 0901013310_lokaverkefni.tegund(nafn)
values
	("Rokk"),
    ("Pop"),
    ("EDM"),
    ("Metal"),
    ("Country");

insert into 0901013310_lokaverkefni.utgefandi(nafn_utgefanda, stadsetning, email)
values
	("Warner/Chappell Music", "Los Angeles", "WC@gmail.com"),
    ("Queen Music Ltd", "Nashville", "QM@gmail.com"),
    ("Atlas Music", "New York", "info@atlasmusicgroup.com"),
    ("Bucks Music Group", "London", "info@bucksmusicgroup.co.uk"),
    ("Reach Music", "Canada", "info@reachmusic.com");

insert into 0901013310_lokaverkefni.lag(Nafn_lags, Lengd_lags, Texti, utgafudagur)
values
	("Stairway to Heaven", 	"8:02", "There's a lady who's sure all that glitters is gold
And she's buying a stairway to heaven.
When she gets there she knows, if the stores are all closed
With a word she can get what she came for.
Ooh, ooh, and she's buying a stairway to heaven.

There's a sign on the wall but she wants to be sure
'Cause you know sometimes words have two meanings.
In a tree by the brook, there's a songbird who sings,
Sometimes all of our thoughts are misgiven.

Ooh, it makes me wonder,
Ooh, it makes me wonder.

There's a feeling I get when I look to the west,
And my spirit is crying for leaving.
In my thoughts I have seen rings of smoke through the trees,
And the voices of those who stand looking.

Ooh, it makes me wonder,
Ooh, it really makes me wonder.

And it's whispered that soon, if we all call the tune,
Then the piper will lead us to reason.
And a new day will dawn for those who stand long,
And the forests will echo with laughter.

If there's a bustle in your hedgerow, don't be alarmed now,
It's just a spring clean for the May queen.
Yes, there are two paths you can go by, but in the long run
There's still time to change the road you're on.
And it makes me wonder.

Your head is humming and it won't go, in case you don't know,
The piper's calling you to join him,
Dear lady, can you hear the wind blow, and did you know
Your stairway lies on the whispering wind?

And as we wind on down the road
Our shadows taller than our soul.
There walks a lady we all know
Who shines white light and wants to show
How everything still turns to gold.
And if you listen very hard
The tune will come to you at last.
When all are one and one is all
To be a rock and not to roll.

And she's buying a stairway to heaven.", 1971-09-08),
	("Kashmir", "8:37", "Oh let the sun beat down upon my face
With stars to fill my dream
I am a traveler of both time and space
To be where I have been

Sit with elders of the gentle race
This world has seldom seen
Talk of days for which they sit and wait
And all will be revealed

Talk and song from tongues of lilting grace
Sounds caress my ear
But not a word I heard could I relate
The story was quite clear

Oh, baby, I been flying
No, yeah, mama, there ain't no denyin'
Ooh, yeah I've been flying
Mama, mama, ain't no denyin', no denyin'

All I see turns to brown
As the sun burns the ground
And my eyes fill with sand
As I scan this wasted land
Trying to find, trying to find where I've been.

Pilot of the storm who leaves no trace
Like thoughts inside a dream
Heed the path that led me to that place
Yellow desert stream

My Shangri-La beneath the summer moon
I will return again
Sure as the dust that floats high in June
When movin' through Kashmir.

Oh, father of the four winds, fill my sails
Across the sea of years
With no provision but an open face
Along the straits of fear

When I'm on, when I'm on my way
When I see, when I see the way, you stay

When I'm down
When I'm down, so down
Ooh, my baby, ooh, my baby, let me take you there
Come on, come on
Let me take you there, let me take you there.", 1974-02-24),
	("Whole Lotta Love", "5:33", "You need coolin', baby, I'm not foolin',
I'm gonna send you back to schoolin',
Way down inside, honey, you need it,
I'm gonna give you my love,
I'm gonna give you my love.

Wanna whole lotta love [4x]

You've been learnin', baby, I've been yearnin',
All them good times, baby, baby, I've been learnin',
Way, way down inside, honey, you need it,
I'm gonna give you my love
I'm gonna give you my love.

Wanna whole lotta love [4x]

You've been coolin', baby, I've been droolin',
All the good times baby I've been misusin',
Way, way down inside, I'm gonna give you my love,
I'm gonna give you every inch of my love,
Gonna give you my love.

Wanna whole lotta love [4x]

Yeah! All right! Let's go!

Way down inside... woman... you need... love.

Shake for me, girl.
I wanna be your backdoor man.
Keep it coolin', baby. [4x]", 1969-09-07),
	("Hello Goodbye", "3:27", "You say yes, I say no
You say stop and I say go go go, oh no
You say goodbye and I say hello
Hello hello
I don't know why you say goodbye, I say hello
Hello hello
I don't know why you say goodbye, I say hello

I say high, you say low
You say why and I say I don't know, oh no
You say goodbye and I say hello
Hello goodbye hello goodbye) Hello hello
Hello goodbye I don't know why you say goodbye, I say hello
Hello goodbye hello goodbye) Hello hello
Hello goodbye I don't know why you say goodbye
Hello goodbye I say hello/goodbye

Why why why why why why do you say goodbye goodbye, oh no?

You say goodbye and I say hello
Hello hello
I don't know why you say goodbye, I say hello
Hello hello
I don't know why you say goodbye, I say hello

You say yes I say yes I say no But I may mean no
You say stop (I can stay) and I say go go go Till it's time to go, oh
Oh no
You say goodbye and I say hello
Hello hello
I don't know why you say goodbye, I say hello
Hello hello
I don't know why you say goodbye, I say hello
Hello hello
I don't know why you say goodbye, I say hello hello", 1967-09-24),
	("Yellow Submarine", "2:38", "In the town where I was born
Lived a man who sailed to sea
And he told us of his life
In the land of submarines

So we sailed up to the sun
'Til we found the sea of green
And we lived beneath the waves
In our yellow submarine

We all live in a yellow submarine
Yellow submarine, yellow submarine
We all live in a yellow submarine
Yellow submarine, yellow submarine

And our friends are all aboard
Many more of them live next door
And the band begins to play

We all live in a yellow submarine
Yellow submarine, yellow submarine
We all live in a yellow submarine
Yellow submarine, yellow submarine

Full speed ahead, Mr. Boatswain, full speed ahead!
Full speed it is, Sergeant!
Cut the cable, drop the cable!
Aye-aye, sir, aye-aye!
Captain, Captain!

As we live a life of ease a life of ease
Everyone of us everyone of us has all we need has all we need
Sky of blue sky of blue and sea of green sea of green
In our yellow in our yellow submarine submarine, ah-ha

We all live in a yellow submarine
Yellow submarine, yellow submarine
We all live in a yellow submarine
Yellow submarine, yellow submarine

We all live in a yellow submarine
Yellow submarine, yellow submarine
We all live in a yellow submarine
Yellow submarine, yellow submarine", 1966-08-05),
	("Eleanor Rigby", "2:08", "Ah, look at all the lonely people
Ah, look at all the lonely people

Eleanor Rigby picks up the rice in the church where a wedding has been
Lives in a dream
Waits at the window, wearing the face that she keeps in a jar by the door
Who is it for?

All the lonely people
Where do they all come from?
All the lonely people
Where do they all belong?

Father McKenzie writing the words of a sermon that no one will hear
No one comes near
Look at him working, darning his socks in the night when there's nobody there
What does he care?

All the lonely people
Where do they all come from?
All the lonely people
Where do they all belong?

Ah, look at all the lonely people
Ah, look at all the lonely people

Eleanor Rigby died in the church and was buried along with her name
Nobody came
Father McKenzie wiping the dirt from his hands as he walks from the grave
No one was saved

All the lonely people
Ah, look at all the lonely people
Where do they all come from?", 1966-08-05);*/

# 1

#select lag.nafn_lags, utgefandi.nafn_utgefanda
#from 0901013310_lokaverkefni.lag
#inner join utgefandi on lag.utgefandiID = utgefandi.utgefandiID
#inner join flytjandi on lag.flytjandiID = flytjandi.flytjandiID
#where flytjandi.Nafn = "Led Zeppelin"

# 3

#select Nafn_lags, Lengd_lags
#from 0901013310_lokaverkefni.lag
#inner join tegund on tegund.tegundID = lag.tegundID
#where tegund.nafn = "rapp"

# 4

#select lag.Nafn_lags, lag.Lengd_lags, lag.utgafudagur
#from 0901013310_lokaverkefni.lag
#where lag.Lengd_lags > 5
#order by lag.Lengd_lags

# 7

#select lag.Nafn_lags, flytjandi.Nafn
#from 0901013310_lokaverkefni.lag
#inner join flytjandi on lag.flytjandiID = flytjandi.flytjandiID
#order by lag.Lengd_lags
#limit 5

# 10
#select count(lag.lagID) as Fjoldi_laga
#from 0901013310_lokaverkefni.lag
#where lag.Nafn_lags like "A%" and lag.Nafn_lags like "%s%"


#11

#select lag.Nafn_lags, utgefandi.nafn_utgefanda
#from 0901013310_lokaverkefni.lag
#inner join utgefandi on lag.utgefandiID = utgefandi.utgefandiID
#where lag.utgafudagur < 2015

#12

#select round(AVG(lag.Lengd_lags),2) as medal_lengd
#from 0901013310_lokaverkefni.lag

# 13

#select flytjandi.nafn, flytjandi.lysing
#from 0901013310_lokaverkefni.flytjandi
#inner join lag on lag.flytjandiID = flytjandi.flytjandiID
#having count(lag.lagID) >= 4 

# 14

#select flytjandi.Nafn, count(lag.lagID) as fjoldi_laga
#from 0901013310_lokaverkefni.flytjandi
#inner join lag on lag.flytjandiID = flytjandi.flytjandiID
#group by flytjandi.Nafn


