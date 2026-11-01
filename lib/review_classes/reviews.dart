//import 'package:flutter/material.dart';

class Review{
  final String name;
  final int year;
  final String text;
  final int stars;

  Review({
    required this.name,
    required this.year,
    required this.text,
    required this.stars
  });
  
}

class ReviewsManager { //BASIC IMPLIEMNTAITON
  final List<Review> allReviews = [];

  //add reviews
  void addReview(Review review) {
    allReviews.add(review);
  }

  //retrieve all reviews
  List<Review> getReviews() {
    return allReviews;
  }
}