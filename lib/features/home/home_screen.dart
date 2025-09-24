import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_starter_screens/features/home/widgets/list_tile_card.dart';

final List<String> list = [
  'https://plus.unsplash.com/premium_photo-1693257614917-dbe796445932?q=80&w=1376&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1683121967147-10a80cdff182?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1730805336247-7ad1a75eee6e?q=80&w=1998&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1730732750980-8151fb42f369?q=80&w=2088&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1730645648984-404726b99f52?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1661962423418-24746c9b0137?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    enlargeCenterPage: false,
                    viewportFraction: 0.8,
                    height: 160,
                    enableInfiniteScroll: false,
                    autoPlay: true),
                items: list.map((item) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 16),
              Text('Title',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              SizedBox(
                height: 68,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  separatorBuilder: (context, index) => SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    final items = [
                      {'text': 'Search', 'icon': Icons.search},
                      {'text': 'Select', 'icon': Icons.check},
                      {'text': 'Detail', 'icon': Icons.read_more},
                      {'text': 'Chart', 'icon': Icons.bar_chart},
                      {'text': 'Menu', 'icon': Icons.broken_image},
                      {'text': 'Menu', 'icon': Icons.broken_image},
                      {'text': 'Menu', 'icon': Icons.broken_image},
                      {'text': 'Menu', 'icon': Icons.broken_image},
                    ];
                    return CustomMenuCard(
                      buttonText: items[index]['text'] as String,
                      icon: items[index]['icon'] as IconData,
                      onTap: () {},
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
                Text('Title',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              ListTileCard(
                  leadingIcon: Icons.list,
                  title: 'List Tile Card',
                  subtitle: 'Basic component sample.',
                  onTap: () {}),
                  ListTileCard(
                  leadingIcon: Icons.list,
                  title: 'List Tile Card',
                  subtitle: 'Basic component sample.',
                  onTap: () {}),
              SizedBox(height: 16),
            
              Text('Title',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
                shadowColor: Colors.black26,
                color: Colors.white,
                surfaceTintColor: Colors.transparent,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.network(
                          'https://plus.unsplash.com/premium_photo-1730922141078-b47adfc39da9?q=80&w=2000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Subtitle',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do sum dolor sit amet, consectet amer Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do sum dolor sit amet, consectet amer',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
                shadowColor: Colors.black26,
                color: Colors.white,
                surfaceTintColor: Colors.transparent,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.network(
                          'https://plus.unsplash.com/premium_photo-1730711855193-9be834907709?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Subtitle',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do sum dolor sit amet, consectet amer Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do sum dolor sit amet, consectet amer',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomMenuCard extends StatelessWidget {
  final String buttonText;
  final IconData icon;
  final VoidCallback onTap;

  const CustomMenuCard(
      {super.key,
      required this.buttonText,
      required this.onTap,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      margin: EdgeInsets.zero,
      elevation: 0,
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 68,
          width: 68,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: Color(0xFFD9D9D9)),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(icon),
            const SizedBox(height: 8),
            Text(
              buttonText,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            )
          ]),
        ),
      ),
    );
  }
}
