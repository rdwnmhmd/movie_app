import 'package:flutter/material.dart';
import 'package:movie_app/models/model_movie/movie.dart';

import '../component/myTypography.dart';
import '../component/my_colors.dart';

// class DetailFilm extends StatelessWidget {
//   const DetailFilm({
//     Key? key,
//   }) : super(key: key);

class DetailFilm extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailFilm({super.key, required this.data});

  // Declare a field that holds the Todo.
  final Movie data;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: MyColors.darkPurple2),
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: () {
                  Navigator.pop(context);
                });
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w500/${data.posterPath}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      style: MyTypography.headingLarge
                          .copyWith(color: MyColors.darkPurple2),
                    ),
                    Text(
                      data.releaseDate,
                      style: MyTypography.textSmall,
                      textAlign: TextAlign.justify,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(width: 10),
                        Text(
                          data.voteAverage.toString(),
                          style: MyTypography.textSmall
                              .copyWith(color: Colors.black),
                        )
                      ],
                    ),
                    Text(
                      data.overview,
                      style: MyTypography.textSmall,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 283,
//       width: 143,
//       child: Column(
//         children: [
//           Container(
//             height: 212,
//             width: 143,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: MyColors.darkPurple2),
//           ),
//           Text(
//             'Spiderman: No Way Home',
//             style:
//                 MyTypography.textMedium.copyWith(color: MyColors.darkPurple2),
//           )
//         ],
//       ),
//     );
//   }
// }
