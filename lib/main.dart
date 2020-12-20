import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ),);
}


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [

    Quote(author: 'Steve Jobs', text:  'Your time is limited, so dont waste it living someone elses life. Dont be trapped by dogma – which is living with the results of other peoples thinking.'),
    Quote(author: 'Mother Teresa', text: 'Spread love everywhere you go. Let no one ever come to you without leaving happier.'),
    Quote(author: 'Nelson Mandela', text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.')

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title : Text("Awesome Quotes App"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),

      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote : quote,
          delete: () {
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
    );
  }
}

