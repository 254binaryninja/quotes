// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: Code(),
    debugShowCheckedModeBanner: false,
  ));
}

class Code extends StatefulWidget {
  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
  List<Quote> quotes = [
    Quote(author: 'Musandu', text: 'Work hard nobody gives a shit'),
    Quote(author: 'Oscar Wilde', text: 'Be yourself everyone is already taken'),
    Quote(author: 'Ray Crock', text: 'As soon as are ripe you start to rot'),
    Quote(
        author: 'Lincon',
        text: 'The word LISTEN has the same  letters as the word SILENT'),
    Quote(author: 'Arnold', text: 'Work hard it pays'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text(
          'Majestic Quotes',
          style: TextStyle(
            letterSpacing: 2.0,
            fontSize: 28.0,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes
              .map((quote) => QuoteCard(
                    quote: quote,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
