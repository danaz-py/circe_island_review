import 'reviews.dart';

//ayy it works!
void main() {
  // Create your manager instance
  final manager = ReviewsManager();

  // Create and add a session
  final review1 = Review(
    name: "Rachel",
    year: 800,
    text: "This is amazing!!",
    stars: 5
  );
  
  manager.addReview(review1);

  // Add another session directly
  manager.addReview(
    Review(
      name: "Dana",
      year: 80,
      text: "This is great!!",
      stars: 5
    ),
  );

  for (var review in manager.getReviews()) {
    ('${review.name} from ${review.year} BCE says "${review.text}"');
  }
}