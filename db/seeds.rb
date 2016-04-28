users = User.create([
	{email: "bobfrank@aol.com", fname: "Bob", lname: "Last", password: "12345", username: "bobfrank1"},
	{email: "sarahconnor@excite.com", fname: "Sarah", lname: "Connor", password: "12345", username: "sterminator3000"},
	{email: "aarongoldfish@lycos.com", fname: "Aaron", lname: "Goldfish", password: "12345", username: "goldfish34"},
	{email: "micahelfoxx@lycos.com", fname: "Michael", lname: "Foxx", password: "12345", username: "michaeljfox"},
	{email: "biancalondon@excite.com", fname: "Bianca", lname: "London", password: "12345", username: "beelondon26"},
	{email: "laurenfrost@irc.com", fname: "Indiana", lname: "Frost", password: "12345", username: "frostylauren"},
	{email: "slenderloeb@gmail.com", fname: "Skender", lname: "Loeb", password: "12345", username: "sllb"},

	])

Post.create([

	{user_id: users.sample.id, title: "Prince Homage", body: "Come on baby, tell me what do U say?. (Housequake) {x2}. (Yeah!). I don't wanna land not even maybe. Unsnap your self-consciousness. U're the reason that God made a girl (Beautiful). chikkubukku chikkubukku rayilu kalakkudhu paar iva stailu. sikkuvaalaa sikkuvaalaa mayilu iva oakkaennaa adi dhoolu."},
	{user_id: users.sample.id, title: "Prince Died?", body: "Hours after what turned out to be his final concert, Prince was returning home from Atlanta on his private plane when the pilot made an emergency landing in Illinois at the Quad City International Airport early on April 15. "},
	{user_id: users.sample.id, title: "Beastie Boys", body: "adgergergbdfv"},
	{user_id: users.sample.id, title: "", body: "Revolution time. I got the ball this time. Pop your balloon. Smokin' much Buddha and smokin' much boots. Move to the R to the U to the I. That's like quack-quack, meep-meep-meep, fart-fart, eeh-haww.. You're gonna fuck up a place for new birth. I go AWOL!. "},
	{user_id: users.sample.id, title: "Michael Jackson", body: "When We Fell In Love. Oh no. Dirty Diana, nah. The rarest love who'd think I'd find. She said I am the one, who will dance on the floor in the round. We are the world, we are the children. We'd Be Together. You'll never make me stay."},
	{user_id: users.sample.id, title: "JT got moves", body: "Don't want to talk about it. Chorus: why did you take away your love?. Comes all the way back around. Don't be so quick to walk away. Excuse me. Until I started to lose my way. cuz i don't want to be alone,. Just let me rock you, 'til the break of day. Hey baby, we don't mind all the watching."},
	{user_id: users.sample.id, title: "Beyonce and her Skittles", body: "Can you eat my skittles it's the sweetest in the middle. Earned all this money but they never take the country out me. So don't you ever for a second get to thinking you're irreplaceable. Mmm. x4. I'm a lean back. I like my negro nose with Jackson Five nostrils. "},
	{user_id: users.sample.id, title: "Tailor got her groove back, again!", body: "You pulled my chair out & helped me in. Growing up & falling in love. Didn't they tell us don't rush into things. Said you'd beat me up you were bigger than me. I should've slept with one eye opened at night. You and I got lost in it."},
	{user_id: users.sample.id, title: "Lorde and Kanye", body: "Pass around the lampshade,. You give in. I'll see the veins of my city like they do in space. And I am only as young as the minute is full of it. The call I'll send. I'll be the beauty queen in tears. There'll be plenty enough room in jail."},
	{user_id: users.sample.id, title: "Kanye South", body: "Good Morning. You're the only power. Told him I've been on ten since 10th grade, nigga. Welcome to Graduation. Ball so hard, man, this shit cray, nigga. Cheated on every test. I mean, damn, did you even see the test?. Take you to get this fly? All day, nigga. How long you niggas ball?"},
	{user_id: users.sample.id, title: "Busta busts again", body: "How we shoot the spit-shine on niggas like a pair of shoes. On your marks, get set, ready, GO!(repeat) (2). Ha, who, ha. Fuck that, look at shorty, she a little cutie yo. On the downhill racing I'm holding my head. When I display freaky bump shit you wanna say. Hot shit got all you niggaz in wet clothes. "},
	{user_id: users.sample.id, title: "Wu Who??", body: "Yeah baby, I like it RAWWW!!!. Yeah baby, I like it RAWWW!!!. Make it brief son, half short and twice strong. To rip something down, the billboard holders is back. Old Dirty corporata, splash, I'm up on the punanny flash."},
	])