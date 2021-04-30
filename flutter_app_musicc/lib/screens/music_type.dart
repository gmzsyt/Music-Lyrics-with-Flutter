import 'package:flutter/material.dart';

import 'sing.dart';

class MusicType extends StatelessWidget {
  List cats = [
    {
      "Tür": "Rock",
      "sings": [
        {
          "name": "Hard to handle - Black crowes",
          "photo":
              "https://img.discogs.com/l-UTnHFNhatbs0MUahXrNz3_S84=/fit-in/600x608/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1985237-1432996613-2819.jpeg.jpg",
          "lyrics": """Baby, here I am\n
I'm the man on the scene\n
I can give you what you want\n
But you gotta come home with me\n
I've got some good old lovin'\n
And I got some more in store\n
When I get through throwin' it on you\n
You gotta come back for more\n
Boys and things that come by the dozen\n
That ain't nothin' but drugstore lovin'\n
Hey little thing, let me light your candle\n
'Cause, mama, I'm sure hard to handle now, gets around\n
Action speaks louder than words\n
And I'm a man of great experience\n
I know you got another man\n
But I can love you better than him\n
Take my hand, don't be afraid\n
I'm gonna prove every word I say\n
I'm advertising love for free\n
So you can place your ad with me\n
Boys will come along, a dime by the dozen\n
That ain't nothing but ten cent lovin'\n
Hey little thing, let me light your candle\n
'Cause, mama, I'm sure hard to handle now, gets around\n
Yeah\n
Hard to handle now\n
Oh, baby\n
Baby, here I am\n
I'm the man on your scene\n
I can give you what you want\n
But you gotta come home with me\n
I've got some good old lovin'\n
And I got some more in store\n
When I get through throwin' it on you\n
You gotta come runnin' back for more\n
Boys will run along, a dime by the dozen\n
That ain't nothin' but drugstore lovin'\n
Hey little thing, let me light your candle\n
'Cause, mama, I'm sure hard to handle now, gets around\n
Hard\n
Hard to handle now
Oh yeah, yeah, yeah, yeah, yeah\n
Boys will run along, a dime by the dozen\n
That ain't nothing but ten cent lovin'\n
Hey little babe, let me light your candle\n
'Cause, mama, I'm sure hard to handle now, gets around\n
Yeah\n
So hard to handle now\n
Oh, yeah\n
Baby\n
Good lovin'\n
Baby\n
Baby\n
Oh, good lovin'\n
I need good lovin'\n
I got to have, oh yeah\n
Yeah\n
So hard to handle, now, yeah\n """
        },
        {
          "name": "Nirvana - Smells Like Teen Spirit",
          "photo":
              "data:image/jpeg;base64,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",
          "lyrics": """Load up on guns, bring your friends
It's fun to lose and to pretend
She's over-bored and self-assured
Oh no, I know a dirty word
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello
With the lights out, it's less dangerous
Here we are now, entertain us
I feel stupid and contagious
Here we are now, entertain us
A mulatto, an albino, a mosquito, my libido
Yeah, hey
I'm worse at what I do best
And for this gift I feel blessed
Our little group has always been
And always will until the end
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello
With the lights out, it's less dangerous
Here we are now, entertain us
I feel stupid and contagious
Here we are now, entertain us
A mulatto, an albino, a mosquito, my libido
Yeah, hey
And I forget just why I taste
Oh yeah, I guess it makes me smile
I found it hard, was hard to find
Oh well, whatever, never mind
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello, how low
Hello, hello, hello
With the lights out, it's less dangerous
Here we are now, entertain us
I feel stupid and contagious
Here we are now, entertain us
A mulatto, an albino, a mosquito, my libido
A denial, a denial, a denial, a denial, a denial
A denial, a denial, a denial, a denial """
        },
        {
          "name": " Pariah - Black sabbath",
          "photo":
              "https://images.genius.com/93bed11dc73170e2b6a0659562a98daa.1000x1000x1.jpg"
                  "",
          "lyrics": """Pariah from society
          Addicted to sobriety
          A product of a virgin birth, another God on Earth
          Yes, that's your fantasy
          You say that you could read my mind
          Be careful of what you might find
          You think that you can be like me and see what my eyes see
          But you're no friend of mine
          Do you believe every word I say?
        Make your own truth and get out of my way
          I'm your pariah
          For your desire
          Ain't no messiah
          Just your pariah
          An angel or the Antichrist
          A symbol of your own device
          Pathetic in your own sad way
          You're just one pill away from taking my advice
          Do you believe every word I say?
        Make up your mind and get out of my way
          I'm your pariah
          For your desire
          Ain't no messiah
          Just your pariah
          Do you believe that I'm from Heaven?
          That I descended from the sky?
        The graven image of a pseudo icon
          To worship me on high
          I'm not your saviour
          I got no wings to fly
          Just your pariah
          Don't look to me when your life is over
          I'm your pariah
          For your desire
          Ain't no messiah
          Just your pariah
          Ain't no messiah
          Just your pariah """
        },
      ],
    },
    {
      "Tür": "Metal",
      "sings": [
        {
          "name": "Artık Ben Yokum",
          "photo":
              "https://scontent.fbtz1-4.fna.fbcdn.net/v/t1.18169-9/11695006_853824904699965_5424110564978053162_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=FK9o4JQ-H28AX8Se_qj&_nc_ht=scontent.fbtz1-4.fna&oh=95b48958981620904dc10d3843e510fd&oe=60A9CB4D",
          "lyrics": """""Gitme!
Nisan yağmuru altında, sen giderken uzuyor gözümde yollar
Birkaç damla yaş ve aklımda sorular, bırakırken ellerimi ellerin
(Kal demek vardı şimdi sana)
Ben hala bıraktığın yerdeyim
(Yağmur damlaları altında)
Gururumla baş başa ufacık bir mucize bekliyorum
Kahretsin!
Gururumla baş başa ufacık bir mucize bekliyorum
Geç kalınmış bir yol ayrımı bizimkisi
Ağlıyorum şimdi gözyaşlarım yağmur damlalarına karışmış
"Gitmesem düzelir mi?" diye sordum kendime kaç kere
Bu son sözüm, artık ben yokum
Kaçıp gittin, sardın mı yaralarını?
Unuttun mu geçmişi?
Sildin mi tüm hayallerini bir çırpıda?
Bak burdayım bir başıma
(Gidişini izledim çaresizce sustum ardından)
Haykırsam, koşup tutsam kolundan, kurtarır mıyım bizi?
(Yoksa kayıp gider mi ellerimden hayalin?)
Bırakır mı beni bedenin, yok oluşumu mu izler sessizce?
Gözlerin dolmadan, dudakların titremeden gider misin?
BLEAH!
Gözlerin dolmadan, dudakların titremeden
Geç kalınmış bir yol ayrımı bizimkisi
Ağlıyorum şimdi göz yaşlarım yağmur damlalarına karışmış
"Gitmesem düzelir mi?" diye sordum kendime kaç kere
Bu son sözüm, artık ben yokum
En zor anında ben vardım yanında
Ama olmuyor anla artık, vazgeçmek lazımmış oysa
Yolu uzatmak çözüm değil sonu çıkmaz sokaksa
İster hak ver ister karala, kim haklı biliyoruz nasılsa
En zor anında ben vardım yanında
Ama olmuyor anla artık, vazgeçmek lazımmış oysa
Yolu uzatmak çözüm değil sonu çıkmaz sokaksa
İster hak ver ister karala, kim haklı biliyoruz nasılsa
Zorlamam seni içinde ufak bir kırıntı bile yoksa."""
        },
        {
          "name": "Anathema - One Last Goodbye",
          "photo":
              "https://m.media-amazon.com/images/I/31dXcbFuzgL._SS500_.jpg",
          "lyrics": """How I needed you
How I grieve now you're gone
In my dreams I see you
I awake so alone
I know you didn't want to leave
Your heart yearned to stay
But the strength I always loved in you
Finally gave way
Somehow I knew you would leave me this way
Somehow I knew you could never, never stay
And in the early morning light
After a silent peaceful night
You took my heart away
And my being
In my dreams I can see you
I can tell you how I feel
In my dreams I can hold you
And it feels so real
I still feel the pain
I still feel your love
I still feel the pain
I still feel your love
And somehow I knew you could never, never stay
And somehow I knew you would leave me
And in the early morning light
After a silent peaceful night
You took my heart away
Oh I wish, I wish you could have stayed"""
        },
        {
          "name": "This Means War",
          "photo":
              "https://i.pinimg.com/564x/7c/8e/0e/7c8e0e03d25344786ea60c30939de3ef.jpg",
          "lyrics": """Hide my face again, harbor in the shadows
Feel this weight of sin hammering away
Die, with the guilt of a thousand AWOL soldiers
Die, watch the scythe usher me astray
I can't go on this way
Not as I am today
The ugly side of me is strong
Take aim, a loaded gun.
Pull back on all who run.
A coward's truth inside the wrong.
This means war
This means war
This means war
Lash your tongue of bane
Carry me to nowhere
Mental holocaust
Battle never ends
Lie! Mask the pain
Of a child who's forsaken
Lie! To myself
Praise the new regime
I left me long ago
Reasons you'll never know
No one to miss me when I'm gone
With no more words to say
No argument to stay.
Another post I don't belong
This means war
This means war
This means war
This means war
This means war
No home to call my own
No finding someone new
No one to break the fall
No one to see me through
No name to carry on
No promise for today
No one to hear the call
No tattered flag to raise
Walk the razor's edge
Cut into the madness
Question all you trust
Buy into the fear
I see the man ripping at my soul now
I, I know the man
I know him all too well
There's nothing here for free
Lost who I want to be
My serpent blood can strike so cold
On any given day
I'll take it all away
Another thought I can't control
This means war
This means war
This means war
This means war
This means war
"""
        },
      ],
    },
    {
      "Tür": "Türkçe Pop",
      "sings": [
        {
          "name": "Kış Güneşi",
          "photo":
              "https://www.sozburada.com/wp-content/uploads/2018/08/tarkan.jpg",
          "lyrics": """ Artık çok geç yalvarma
Dönüş yok o yıllara\n
Bilki sana bu son veda\n
Yürekli olmadan\n
Meydan okumadan\n
Yaşanmaz aşk\n
Yanlış zaman\n
Yanlış insan\n
Tutunmak imkansız\n
Bıktım yamalı sevdalardan\n
Yanlış bahar\n
Kış güneşi\n
Yoruldum her bulduğumda\n
Kaybetmekten seni\n
Kıyamete kadar\n
Kapattım kalbimi\n
Azar coşar deli gönül\n
Bu gözler ah neler görür\n
Hasret bana göre değil\n
Özlemin içimde\n
Yine seni büyütür\n
Azar coşar deli gönül\n
Bu gözler ah neler görür\n
Hasret bana göre değil\n
Özlemin içimde\n
Yine seni büyütür\n
Artık çok geç yalvarma\n
Dönüş yok o yıllara\n
Bilki sana bu son veda\n
Yürekli olmadan\n
Meydan okumadan\n
Yaşanmaz aşk\n
Yanlış zaman\n
Yanlış insan\n
Tutunmak imkansız\n
Bıktım yamalı sevdalardan\n
Yanlış bahar\n
Kış güneşi\n
Yoruldum her bulduğumda\n
Kaybetmekten seni\n
Kıyamete kadar\n
Kapattım kalbimi\n
Azar coşar deli gönül\n
Bu gözler ah neler görür\n
Hasret bana göre değil\n
Özlemin içimde\n
Yine seni büyütür\n
Azar coşar deli gönül\n
Bu gözler ah neler görür\n
Hasret bana göre değil\n
Özlemin içimde\n
Yine seni büyütür\n
Azar coşar deli gönül\n
Bu gözler ah neler görür\n
Hasret bana göre değil\n
Özlemin içimde\n
Yine seni büyütür\n """
        },
        {
          "name": "Rüyalara Sor",
          "photo":
              "https://i1.wp.com/sahubs.com/wp-content/uploads/2020/08/Mustafa-Ceceli-R%C3%BCyalara-Sor.jpg?fit=480%2C360&ssl=1",
          "lyrics": """ Dermanısın her derdin
Yok mu başka yolu
Biraz daha gül bari
Son bi' çarem olur
Uyanmak zor sensiz
Gelde rüyalara sor
Kendime zor geldim
Elini kalbine koy
Utanmıyor gözlerimin içine bakarken
Ciğerim mahvoluyor
Hayallerim cehennemin dibine batarken
Ellerin kayboluyor
Ayrılığın yaramızın üstüne basarken
İçime dert oluyor
Ben baharı görmenin bi' yolunu ararken
Kışımı sert oluyor
Dermanısın her derdin
Yok mu başka yolu
Biraz daha gül bari
Son bi' çarem olur
Uyanmak zor sensiz
Gelde rüyalara sor
Kendime zor geldim
Elini kalbine koy
Utanmıyor gözlerimin içine bakarken
Ciğerim mahvoluyor
Hayallerim cehennemin dibine batarken
Ellerin kayboluyor
Ayrılığın yaramızın üstüne basarken
İçime dert oluyor
Ben baharı görmenin bi' yolunu ararken
Kışımı sert oluyor
Utanmıyor gözlerimin içine bakarken
Ciğerim mahvoluyor
Hayallerim cehennemin dibine batarken
Utanmıyor gözlerimin içine bakarken
Ciğerim mahvoluyor
Hayallerim cehennemin dibine batarken
Ellerin kayboluyor
Ayrılığın yaramızın üstüne basarken
İçime dert oluyor
Ben baharı görmenin bi' yolunu ararken
Kışımı sert oluyor """
        },
        {
          "name": "Sor-Serdar Ortaç",
          "photo":
              "https://img.discogs.com/UMu2XK23rAR8mEPYAcPj_8bPheE=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-5731906-1421090293-4102.jpeg.jpg",
          "lyrics": """ Herkesi zalim, kendini alim
Hissetmen bile normal
Çünkü dışarıda senin gibiler için
Özel idman yapıyorlar
Deli huyundan ya da suyundan mıdır?
Anlamadım bu işi
Ne bu hırçınlık? ne bu kalbin can çekişi?
Oturuşu, dokunuşu, kendini savuruşu
Yüzyıllar boyu aynı
Sürmedi ilelebet, her şeye muhalefet
Olmana bir sebep var mı?
Bunu külahıma, bir de günahıma
Girip anlatacak o yürek
Belki de vardır ama
Denemen lazım
Ama sen korkaksın hiç bulaşma
Yaklaşmazsın gerçek aşklara
Demiş ki benden uzak olsun
Peki niye her gün ağlıyorsun?
Sebebini senle gece gezenlere aç bir sor
Sen korkaksın hiç bulaşma
Yaklaşmazsın gerçek aşklara
Demiş ki benden uzak olsun
Peki niye her gün ağlıyorsun?
Sebebini senle gece gezenlere aç bir sor (sor, sor, sor)
Herkesi zalim, kendini alim
Hissetmen bile normal
Çünkü dışarıda senin gibiler için
Özel idman yapıyorlar
Deli huyundan ya da suyundan mıdır?
Anlamadım bu işi
Ne bu hırçınlık? Ne bu kalbinin can çekişi?
Oturuşu, dokunuşu, kendini savunuşu
Yüzyıllar boyu aynı
Sürmedi ilelebet, her şeye muhalefet
Olmana bir sebep var mı?
Bunu külahıma, bir de günahıma
Girip anlatacak o yürek
Belki de vardır ama
Denemen lazım
Ama sen korkaksın hiç bulaşma
Yaklaşmazsın gerçek aşklara
Demiş ki benden uzak olsun
Peki niye her gün ağlıyorsun?
Sebebini senle gece gezenlere aç bir sor
Sen korkaksın hiç bulaşma
Yaklaşmazsın gerçek aşklara
Demiş ki benden uzak olsun
Peki niye her gün ağlıyorsun?
Sebebini senle gece gezenlere aç bir sor (sor, sor, sor)
Sebebini senle gece gezenlere aç bir sor
Sebebini senle gece gezenlere aç bir sor (sor, sor, sor)
Ama sen korkaksın hiç bulaşma
Yaklaşmazsın gerçek aşklara
Demiş ki benden uzak olsun
Peki niye her gün ağlıyorsun?
Sebebini senle gece gezenlere aç bir sor
Sen korkaksın hiç bulaşma
Yaklaşmazsın gerçek aşklara
Demiş ki benden uzak olsun
Peki niye her gün ağlıyorsun?
Sebebini sen o gece gezenlere aç bir sor
Sebebini sen o gece gezenlere aç bir sor
Sebebini sen o gece gezenlere aç bir sor """
        },
      ],
    },
    {
      "Tür": "Rap",
      "sings": [
        {
          "name": "Keep It-Ghost",
          "photo":
              "https://res.cloudinary.com/practicaldev/image/fetch/s--F7w_snYb--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/vda3askm2sbfjl717q9q.png",
          "lyrics": """""Now I lay me down to sleep\n
        I pray the Lord my soul to keep\n
        If I shall die before I 'wake\n
        I pray the Lord my soul to take\n
        I, I keep a record of the wreckage of my life\n
        I gotta recognize the weapon in my mind\n
        They talk shit, but I love it every time\n
        And I realize\n
        I've tasted blood and it is sweet\n
        I've had the rug pulled beneath my feet\n
        I've trusted lies and trusted men\n
        Broke down and put myself back together again\n
        Stared in the mirror and punched it to shatters\n
        Collected the pieces and picked out a dagger\n
        I've pinched my skin in between my two fingers\n
        And wished I could cut some parts off with some scissors\n
        "Come on, little lady, give us a smile"\n
        No, I ain't got nothin' to smile about\n
        I got no one to smile for, I waited a while for\n
        A moment to say I don't owe you a goddamn thing\n
        I, I keep a record of the wreckage of my life\n
        I gotta recognize the weapon in my mind\n
        They talk shit, but I love it every time\n
        And I realize\n
        I'm no sweet dream, but I'm a hell of a night\n
        That I'm no sweet dream, but I'm a hell of a night\n
        No, I won't smile, but I'll show you my teeth\n
        And I'ma let you speak if you just let me breathe\n
        I've been polite, but won't be caught dead\n
        Lettin' a man tell me what I should do in my bed\n
        Keep my exes in check in my basement\n
        'Cause kindness is weakness, or worse, you're complacent\n
        I could play nice or I could be a bully\n
        I'm tired and angry, but somebody should be\n
        "Come on, little lady, give us a smile"\n
        No, I ain't got nothin' to smile about\n
        I got no one to smile for, I waited a while for\n
        A moment to say I don't owe you a goddamn thing\n
        I, I keep a record of the wreckage of my life\n
        I gotta recognize the weapon in my mind\n
        They talk shit, but I love it every time\n
        And I realize\n
        I, I keep a record of the wreckage of my life\n
        I gotta recognize the weapon in my mind\n
        They talk shit, but I love it every time\n
        And I realize\n
        Someone like me can be a real nightmare, completely aware\n
        But I'd rather be a real nightmare than die unaware, yeah\n
        Someone like me can be a real nightmare, completely aware\n
        But I'm glad to be a real nightmare, so save me your prayers\n
        I, I keep a record of the wreckage of my life\n
        I gotta recognize the weapon in my mind\n
        They talk shit, but I love it every time\n
        And I realize\n
        I, I keep a record of the wreckage of my life\n
        I gotta recognize the weapon in my mind\n
        They talk shit, but I love it every time\n
        And I realize\n
        I'm no sweet dream, but I'm a hell of a night\n
        That I'm no sweet dream, but I'm a hell of a night\n"""
        },
        {
          "name": "Toz Taneleri-Sagopa Kajmer",
          "photo": "https://i.ytimg.com/vi/FamvJqqs43s/maxresdefault.jpg",
          "lyrics":
              """ Hüznümün en yükseğinden şöyle baksan manzarama gözlerini alamazdın\n
Gözlerini alırdılar\n
Mazi bazen mavi, bazen haki, bazen zifir ve mazidekiler bazen şeker bazen zehir\n
Karanlığa yanaşır aydınlık limana yanaştığı gibi geminin\n
Güzellik arayışında çirkin\n
İçinde çok kişi var terketmediğin\n
Yapamasan da olsaydı en azından sarfetmişliğin\n
Kaç kendinden, yarış mesafelerle\n
Ya da korkma seni kurtar savaş süvarilerle
Bak ben kopardım güneşten parçalar ellerimle, fırlattım onun kardan adamlarına var gücümle\n
Eksik kalan şiirlerini topluyorum bugünlerde ömrümün ve\n
Çıplak ayaklarımın izleri asfaltta\n
İki kişilikken teke düştüm hayatta ama duble söyledim rakımı masama inatla\n
Uçur beni rüzgar toz taneleri gibi burdan uzağa doğru\n
Gel beni kurtar, alalım başımızı gidelim uzağa doğru\n
Elimde bir gül var, dikenleri sivri batar tenime doğru\n    
Bu kaçıncı ihtar hayatın iki dudağı arasından yüzüme doğru\n
Sakladım benim için beni bana, hatırlatır zor zamanda beni bana diye\n
Sakladım benim için beni bana, hatırlatır zor zamanda beni bana diye\n
Yaşıyor gibi yapıp aralarında ölü de gezdim ama üzerimden düşen ölü toprağının tozunu tekmeledim sonra\n
Nefes kadar hafifledim, iyi, güzel hafifken herşey ağırlaştı hiddetim\n
Yerle gök arasında ortaya bakarken gözüm tam o anda içime oturur öküzüm
Zaman belli zaman gelip yanaklarımdan makas alır
Gözümün önüne düşer dün ve bugün parçalanır gözümün önünde
Ah be hayat bir kez de bir dediğimi ikilettirme, duymak istemiyorum işittirme
Ciğerimi onun mangalında pişirttirme
Işıkları yuttu gece, kalem uyandı gece gece
Yarınlarımın cümlelerini kuruyorum şu an hece hece
Ben mırıldanan adam
Dilsiz odam sanki okyanusun ortasında ıssız adam
Uçur beni rüzgar toz taneleri gibi burdan uzağa doğru
Gel beni kurtar, alalım başımızı gidelim uzağa doğru (gel beni kurtar, gel beni kurtar)
Elimde bir gül var, dikenleri sivri batar tenime doğru (tenime doğru, tenime doğru batar)
Bu kaçıncı ihtar hayatın iki dudağı arasından yüzüme doğru
Sakladım benim için beni bana, hatırlatır zor zamanda beni bana diye
Sakladım benim için beni bana, hatırlatır zor zamanda beni bana diye
"""
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Şarkı Türleri"),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Color(0x0ff20232d),
          child: ListView.builder(
              itemCount: cats.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Sing(cats[index]["sings"])));
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            cats[index]["Tür"],
                          ),
                          Icon(Icons.music_video),
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.black12,
                              blurRadius: 3,
                            ),
                          ],
                          gradient: LinearGradient(
                              colors: [Colors.grey, Colors.white, Colors.grey],
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight)),
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                );
              }),
        )

        //rap

        //metal

        //pop

        //jazz

        );
  }
}
