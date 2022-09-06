class Character{
  String name;
  String romanji;
  String kanji;
  String gender;
  String hair;
  String eye;
  String voice;
  String profile;
  List<String> list;
  String circle;
  String detail;
  String app;

  Character({
    required this.name,
    required this.romanji,
    required this.kanji,
    required this.gender,
    required this.hair,
    required this.eye,
    required this.voice,
    required this.profile,
    required this.list,
    required this.circle,
    required this.detail,
    required this.app,
  });
}

var listData = [
  Character(
      name: "Takagi",
      romanji:"Takagi" ,
      kanji: "高木",
      gender: "Female",
      hair: "Brown",
      eye: "Brown",
      voice: "Rie Takahashi",
      profile:"https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/3/33/Takagi_S1.png/revision/latest?cb=20211113070926",
      list: ["https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/0/05/Takagi_Anime_Design.jpg/revision/latest?cb=20180331112623", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/0/07/Episode_1_Screenshot_19.png/revision/latest/scale-to-width-down/1000?cb=20180514055944", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/1/15/Episode_2_Screenshot_18.png/revision/latest/scale-to-width-down/1000?cb=20180514060442", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/4/4f/S2_Episode_Screenshot_4.png/revision/latest/scale-to-width-down/1000?cb=20200812221145"],
      circle: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/d/d0/Character-thumb01.png",
      detail: "Takagi (高木, Takagi) is the female protagonist in Karakai Jōzu no Takagi-san. She is a middle school student who is in the same class as Nishikata, a boy she constantly teases and secretly has feelings for. She is sweet, intelligent, clever, carefree, and fearless, whether she is with or without Nishikata.",
      app: "Takagi is a young girl with a slender build and an average height. She has long, straight brown hair, which falls down to her upper back, with middle-parted bangs and two locks of hair framing her face on each side. She has large brown eyes, thin eyebrows, rosy cheeks, and a light complexion. She wears a spring/summer sailor uniform as her school outfit. During the autumn/winter, she wears a long-sleeve uniform with a red bow tie, blue skirt, black socks, and brown clogs. For P.E., she wears a shirt with red coloring around the cuffs and neck collar. The P.E. shirt also contains the reading 1-2 just like Nishikata's P.E. shirt. For swimming, she wears a blue leotard. She also wears casual clothing on weekends and on summer break."
  ),
  Character(
      name: "Nishikata",
      romanji: "Nishikata",
      kanji: "西片",
      gender: "Male",
      hair: "Black",
      eye: "Black",
      voice: "Yūki Kaji",
      profile: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/9/9b/Nishikata_S1.png/revision/latest?cb=20211113070942",
      list: ["https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/5/5c/Nishikata_Anime_Design.jpg","https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/9/97/Episode_6_Screenshot_6.png/revision/latest/scale-to-width-down/1000?cb=20180514062345", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/c/c0/Episode_7_Screenshot_7.png/revision/latest/scale-to-width-down/1000?cb=20180514062853", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/d/d1/Episode_8_Screenshot_4.png/revision/latest/scale-to-width-down/1000?cb=20180514063317", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/b/b4/Episode_12_Screenshot_11.png/revision/latest/scale-to-width-down/1000?cb=20180514065825"],
      circle: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/6/69/Character-thumb02.png",
      detail: "Nishikata (西片, Nishikata) is the male protagonist in the Karakai Jōzu no Takagi-san. He is a middle school student who constantly gets teased by his seatmate Takagi.",
      app: "Nishikata is an average looking boy with seemingly tiny black irises/pupils compared to the other characters, black hair, and thin eyebrows. His school outfit consists of a white button-down shirt that covers his white-green t-shirt with a white belt and navy blue pants. When outside of school, he wears light grayish shoes with white soles and laces. When in school, he wears white school shoes with red soles. He also wears a black button-down shirt with yellow buttons and black pants during the winter. As an adult in the spin-off manga, he is often seen wearing a t-shirt and sweatpants. As a result of his tough push-up regimen throughout his teenage years, and his job as a PE teacher, his body becomes incredibly muscular and toned."),
  Character(
      name: "Hibino Mina",
      romanji: "Mina Hibino",
      kanji: "日々野ミナ",
      gender: "Female",
      hair: "Light brown",
      eye: "Brown",
      voice: "Konomi Kohara",
      profile: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/2/2b/Episode_10_Screenshot_14.png/revision/latest?cb=20180514064558",
      list: [
        "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/d/d4/Mina_Anime_Design.jpg",
        "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/f/fa/Episode_4_Screenshot_14.png/revision/latest/scale-to-width-down/1000?cb=20180514061237",
        "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/d/d1/Episode_11_Screenshot_4.png/revision/latest/scale-to-width-down/1000?cb=20180514065148"],
      circle: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/c/c1/Character-thumb03.png",
      detail: "Mina Hibino (日々野ミナ, Hibino Mina) is one of Takagi's and Nishikata's classmates and a good friend of Sanae and Yukari.",
      app: "Mina has long brown hair, which she usually keeps tied back into a ponytail, and very short bangs. Most notably, she has thick eyebrows and large brown eyes. She is noticeably shorter than most of her classmates, making her appear much younger than she actually is."),
  Character(
      name: "Yukari Tenkawa",
      romanji: "Tenkawa Yukari",
      kanji: "天川ユカリ",
      gender: "Female",
      hair: "Brown",
      eye: "Black",
      voice: "Mao Ichimichi",
      profile: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/5/5e/Episode_10_Screenshot_8.png/revision/latest?cb=20180514064442",
      list: ["https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/8/8b/Yukari_Anime_Design.jpg/revision/latest?cb=20180331112624", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/e/eb/Episode_2_Screenshot_4.png/revision/latest/scale-to-width-down/1000?cb=20180514060139", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/3/37/S2_Episode_2_Screenshot_7.png/revision/latest/scale-to-width-down/1000?cb=20200816065719"],
      circle: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/0/0e/Character-thumb04.png",
      detail: "Yukari Tenkawa (天川ユカリ, Tenkawa Yukari) is one of Takagi's and Nishikata's classmates as well as a good friend of Sanae and Mina.",
      app: "Yukari is a young girl with long brown hair tied into a high ponytail and black eyes. She wears glasses and she is the tallest among her friends. She wears a spring/summer sailor uniform as her school outfit."),
  Character(
      name: "Sanae",
      romanji: "Tsukimoto Sanae",
      kanji: "月本サナエ",
      gender: "Female",
      hair: "Black",
      eye: "Grey",
      voice: "Yui Ogura",
      profile: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/7/76/Episode_9_Screenshot_12.png/revision/latest?cb=20180514064006",
      list: ["https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/8/81/Sanae_Anime_Design.jpg/revision/latest?cb=20180331112623", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/f/f1/Episode_2_Screenshot_5.png/revision/latest/scale-to-width-down/1000?cb=20180514060151", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/c/ce/Episode_2_Screenshot_6.png/revision/latest/scale-to-width-down/1000?cb=20180514060202", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/9/90/Episode_3_Screenshot_13.png/revision/latest/scale-to-width-down/1000?cb=20180514060740"],
      circle: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/f/f7/Character-thumb05.png",
      detail: "Sanae Tsukimoto (月本サナエ, Tsukimoto Sanae) is one of Nishikata's and Takagi's classmates and a close friend of Mina and Yukari.",
      app: "Sanae is a young girl with short black hair, grey-colored eyes, and a light complextion. Most notably, she keeps a very stoic facial expression, regardless of her mood. In school, she is seen wearing her standard uniform. Outside of school, she is seen wearing more casual clothing."),
  Character(
      name: "Nakai",
      romanji: "Nakai",
      kanji: "中井",
      gender: "Male",
      hair: "Brown",
      eye: "Black",
      voice: "Yūma Uchida",
      profile: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/5/5b/Episode_1_Screenshot_13.png/revision/latest?cb=20180514055808",
      list: ["https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/4/46/Nakai_Anime_Design.jpg/revision/latest/scale-to-width-down/364?cb=20180331112622", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/c/ce/S2_Episode_2_Screenshot_24-0.png/revision/latest/scale-to-width-down/1000?cb=20200813041517"],
      circle: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/2/26/Character-thumb06.png",
      detail: "Nakai (中井, Nakai) is one of the classmates of Nishikata and Takagi and the boyfriend of Mano.",
      app: "Nakai is noticeably taller than most of his classmates, easily distinguishing him from others. He has short brown hair, and black eyes that appear to always be closed. It is revealed that Nakai has poor vision because of this."),
  Character(
      name: "Mano",
      romanji: "Mano",
      kanji: "真野",
      gender: "Female",
      hair: "Black",
      eye: "Grey",
      voice: "Kotori Koiwai",
      profile: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/c/cd/Episode_4_Screenshot_6.png/revision/latest?cb=20180514061046",
      list: ["https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/a/a3/Mano_Anime_Design.jpg/revision/latest?cb=20180331112620", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/8/8c/S2_Episode_2_Screenshot_10.png/revision/latest/scale-to-width-down/1000?cb=20200813040830", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/a/a4/S2_Episode_2_Screenshot_21-0.png/revision/latest/scale-to-width-down/1000?cb=20200813041044"],
      circle: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/a/ad/Character-thumb07.png",
      detail: "Mano (真野, Mano) is one of the supporting characters in the series. Mano is also Nishikata's and Takagi's classmates and has an undisclosed relationship with Nakai.",
      app: "Mano is a girl of average build and appearance, though she is noticeably shorter than the majority of her classmates. She has short black hair, which she often keeps tied back into small pigtails, and bangs that rest neatly above her eyes. She also has a light complexion and greyish eyes. For the majority of her appearances, she is seen wearing her school uniform."),
  Character(
      name: "Takao",
      romanji: "Takao",
      kanji: "高尾",
      gender: "Male",
      hair: "Black",
      eye: "-",
      voice: "Nobuhiko Okamoto",
      profile: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/1/14/Episode_2_Screenshot_14.png/revision/latest/scale-to-width-down/1000?cb=20180514060340",
      list: ["https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/f/f8/Takao_Anime_Design.jpg/revision/latest?cb=20180331112624", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/a/a8/Episode_12_Screenshot_3.png/revision/latest/scale-to-width-down/1000?cb=20180514065626", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/1/14/Episode_2_Screenshot_14.png/revision/latest/scale-to-width-down/1000?cb=20180514060340"],
      circle: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/5/54/Character-thumb08.png",
      detail: "Takao (高尾, Takao) is a student in the same class as Nishikata and Takagi who is a close friend of Nishikata.",
      app: "Takao is a lanky teenage boy with short, black hair, and a quite noticeable pair of buck teeth. In school, he wears his respective seasonal uniforms, while outside of school, he is seen wearing more casual clothing."),
  Character(
      name: "Hamaguchi",
      romanji: "Hamaguchi",
      kanji: "浜口",
      gender: "Male",
      hair: "Brown",
      eye: "Brown",
      voice: "Kōki Uchiyama",
      profile: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/f/f1/Hamaguchi_%28S2_EP1%29.png/revision/latest?cb=20200809090428",
      list: ["https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/6/63/Hamaguchi_Anime_Design.jpeg/revision/latest?cb=20200809084303", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/f/f1/Hamaguchi_%28S2_EP1%29.png/revision/latest?cb=20200809090428"],
      circle: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/3/30/Character-thumb11.png",
      detail: "Hamaguchi (浜口) is one of Nishikata's friends, along with Takao, Kimura and several others.",
      app: "Hamaguchi is a fair-skinned boy with messy, light brown hair, grayish eyes and he is noticeably taller than most of his friends. His school outfit consists of a white button-down shirt navy blue pants. He is also seen wearing a black button-down shirt with yellow buttons and black pants during the autumn/winter."),
  Character(
      name: "Houjou",
      romanji: "Houjou",
      kanji: "北条",
      gender: "Female",
      hair: "Brown",
      eye: "Brown",
      voice: "Aoi Yūki",
      profile: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/1/16/Houjou_%28S2_EP10%29.png/revision/latest?cb=20200809090507",
      list: ["https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/a/ae/Houjou_Anime_Design.jpeg/revision/latest?cb=20200809075320", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/7/77/E31yFxHVcAI9EnZ.jpg", "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/3/3d/Official_Art_4.jpg"],
      circle: "https://static.wikia.nocookie.net/karakai-jouzu-no-takagi-san/images/0/0a/Character-thumb12.png",
      detail: "Houjou is a female character in the story. She shares the same class as Nishikata and Takagi. She has a more mature personality relative to her classmates. Though, she is often endeared by Hamaguchi's clumsy yet caring personality.",
      app: "Houjou is a light-skinned girl who is described as \"the prettiest girl in school\" with shoulder-length light brown hair that she often keeps braided and neatly brushed on the left side with three purple hair clips on the right side, light brown eyes and a mole under her right eye.")
];