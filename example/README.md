# example

An example project for confused_travolta_error_view library.

![](assets/gifs/confused_travolta.gif)

```dart
import 'package:flutter/material.dart';
import 'package:confused_travolta_error_view/confused_travolta_error_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ConfusedTravoltaErrorView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.pink,
      ),
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ConfusedTravoltaErrorView Demo'),
          bottom: TabBar(tabs: [
            Tab(text: 'Default'),
            Tab(text: 'Custom'),
            Tab(text: 'No Button'),
          ]),
        ),
        body: TabBarView(children: [
          ConfusedTravoltaErrorView(
            errorMessage: 'You have no Internet connection.',
            onTapRetryButton: () {},
          ),
          ConfusedTravoltaErrorView(
            backgroundColor: Colors.grey,
            errorText: Text(
              'Ooops! Something went wrong.',
              style: TextStyle(fontSize: 19.0),
            ),
            retryButton: RaisedButton(
              onPressed: () {},
              child: Text('Try again'.toUpperCase()),
              color: Colors.black38,
              textColor: Colors.white,
            ),
          ),
          ConfusedTravoltaErrorView(
            errorMessage: 'You have no favorites, yet.',
          ),
        ]),
      ),
    );
  }
}
```


## Credits

[Confused Travolta Gif](https://media.giphy.com/media/jWexOOlYe241y/giphy.gif)