import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
          selectedItemColor: Colors.red,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.red), label: 'Like'),
            BottomNavigationBarItem(icon: Icon(Icons.local_fire_department, color: Colors.grey), label: 'Trend'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.grey), label: 'Home'),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest News',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const Icon(
                        Icons.add_alert,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 20)),
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search news',
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: Colors.grey.shade100),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 130,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 90, child: PngImages(name: ProjectImages().booksToApplePath)),
                              const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Center(
                                      child: Text('Trending',
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))))
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 90, child: PngImages(name: ProjectImages().booksToApplePath)),
                              const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Center(
                                      child: Text('Political',
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))))
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 90, child: PngImages(name: ProjectImages().booksToApplePath)),
                              const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Center(
                                      child: Text('Science',
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))))
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 90, child: PngImages(name: ProjectImages().booksToApplePath)),
                              const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Center(
                                      child: Text('Culture',
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))))
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 90, child: PngImages(name: ProjectImages().booksToApplePath)),
                              const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Center(
                                      child: Text('Celebrity',
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))))
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 90, child: PngImages(name: ProjectImages().booksToApplePath)),
                              const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Center(
                                      child: Text('Football',
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          'Latest news',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.grey.shade800),
                        ),
                      ],
                    ),
                  ),
                  const _IkinciLatestAltindakiNews(),
                  const Divider(),
                  const _IkinciLatestAltindakiNews(),
                  const Divider(),
                  const _IkinciLatestAltindakiNews(),
                  const Divider(),
                  const _IkinciLatestAltindakiNews(),
                  const Divider(),
                  const _IkinciLatestAltindakiNews(),
                  const Divider(),
                ],
              ),
            ),
          ],
        ));
  }
}

class _IkinciLatestAltindakiNews extends StatelessWidget {
  const _IkinciLatestAltindakiNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: Colors.white,
      child: Stack(
        children: [
          Row(
            children: [
              Image.asset('Assets/png/gorsel.jpg'),
              Flexible(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                      child: Text(
                          textAlign: TextAlign.start,
                          softWrap: true,
                          "14 Things to know about international Woman's day",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              inherit: false,
                              overflow: TextOverflow.clip,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        textAlign: TextAlign.start,
                        softWrap: true,
                        "Simply dummy text of the printing and been the industry's standard dummy a and scramblade it to make",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 12,
                            inherit: false,
                            overflow: TextOverflow.clip,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 20, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.stars,
                            color: Colors.grey.shade500,
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.speaker_notes,
                              color: Colors.grey.shade500,
                              size: 20,
                            ),
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Colors.grey.shade500,
                            size: 20,
                          ),
                          const Spacer(),
                          InkWell(
                              onTap: () {},
                              child: const Text(
                                'View more >',
                                style: TextStyle(color: Colors.red, fontSize: 10),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectImages {
  final String booksToApple = "Assets/png/pngegg.png";
  final String booksToApplePath = "pngegg";
}

class PngImages extends StatelessWidget {
  const PngImages({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "Assets/png/$name.png",
      fit: BoxFit.cover,
    );
  }
}
