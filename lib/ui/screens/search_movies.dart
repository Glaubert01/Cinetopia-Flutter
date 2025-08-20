import 'package:cinetopia/ui/components/movie_card.dart';
import 'package:flutter/material.dart';

class Releases extends StatelessWidget {
  const Releases({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Image.asset("assets/popular.png", height: 80, width: 80),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsGeometry.only(bottom: 32),
            child: Center(
              child: Text(
                "Filmes Populares",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              hintText: "Pesquisar",
            ),
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) => MovieCard(),
          itemCount: 10,
        ),
      ],
    );
  }
}
