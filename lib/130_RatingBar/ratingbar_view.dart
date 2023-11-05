import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarView extends StatelessWidget {
  const RatingBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: RatingBar(
          minRating: 1,
          maxRating: 5,
          initialRating: 3,
          allowHalfRating: true,
          ratingWidget: RatingWidget(
            full: const Icon(
              Icons.start,
              color: Colors.amber,
            ),
            half: const FlutterLogo(size: 10),
            empty: const Icon(
              Icons.start,
              color: Colors.white,
            ),
          ),
          onRatingUpdate: (double value) {},
        ),
      ),
    );
  }
}
