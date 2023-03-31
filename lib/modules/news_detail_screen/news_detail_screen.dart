import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
    required this.id,
  });
  final String id;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

// class _NewsDetailScreenState extends State<NewsDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           widget.id,
//         ),
//       ),
//     );
//   }
// }

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int LikeCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     "Direktorat Jenderal Pajak",
      //   ),
      // ),
      body: Column(
        children: [
          Image.network(
            "https://www.nicepng.com/png/detail/71-713163_free-yu-gi-oh-axiom-fanmade-yu-gi.png",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Yu-Gi-Oh! Official Card Game',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Yu-Gi-Oh! Official Card Game (OCG) adalah salah satu trading card game paling populer di dunia dengan lebih dari 25 miliar kartu yang telah terjual. Ini adalah permainan strategi dimana pemain membuat Deck kartu yang dibuat dari Structure Deck dan Booster Pack. Dalam permainan ini, dua pemain akan terlibat dalam Duel dengan menggunakan kartu yang mewakili Monster yang kuat, Spell sakti, dan Trap yang mengejutkan. Duelist (julukan untuk pemain) dengan Deck yang dibangun dengan baik, monster yang mendominasi, strategi yang solid, dan dianugerahi keberuntungan adalah pemenang di Yu-Gi-Oh! OCG.',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
                Row(children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  SizedBox(height: 10),
                  Text(' $LikeCount')
                ])
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        hoverColor: Colors.red,
        onPressed: () {
          setState(() {
            LikeCount++;
          });
          print(LikeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
