import 'package:app_dp/app/data/model/movie.dart';
import 'package:app_dp/app/modules/home/local_widget/movies_item.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: _.logOut,
              icon: const Icon(Icons.exit_to_app_rounded),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.transparent,
          child: ListView.builder(
            itemCount: _.movies.length,
            itemBuilder: (context, index) {
              final Movie movie = _.movies[index];
              return MoviesItem(movie: movie);
            },
          ),
        ),
      ),
    );
  }
}
