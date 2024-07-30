// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;

  delete () {

    print('Done');

  }

  QuoteCard({required this.quote});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0,5.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),),
            SizedBox(height: 6.0),
            Text(quote.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800]
              ),),
             SizedBox(height: 6.0),
            ElevatedButton.icon(
                onPressed:()=>delete,
                icon:Icon(Icons.delete),
                label:Text('Delete quote'),
            ),
          ],
        ),
      ),
    );
  }
}
