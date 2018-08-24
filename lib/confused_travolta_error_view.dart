library confused_travolta_error_view;

import 'package:flutter/material.dart';

///Builds a common error view with an error message, a retry button
///and an appropriate error gif.

class ConfusedTravoltaErrorView extends StatelessWidget {
  final String errorMessage;
  final TextStyle errorMessageStyle;
  final String retryButtonText;
  final VoidCallback onTapRetryButton;

  ///A [Text] widget can be provided with an error message
  ///to [errorText] property.
  ///
  /// If this is provided, [errorMessage] and
  ///[errorMessageStyle] will be ignored.
  final Widget errorText;

  ///A [FlatButton], [MaterialButton], [RaisedButton] or any other clickable
  ///widget can be provided to [retryButton].
  ///
  /// If this is provided,
  /// [retryButtonText] and [onTapRetryButton] will be ignored.
  final Widget retryButton;

  ConfusedTravoltaErrorView(
      {this.errorMessage,
      this.errorMessageStyle,
      this.retryButtonText,
      this.onTapRetryButton,
      this.errorText,
      this.retryButton});

  @override
  Widget build(BuildContext context) {
    final double gifHeight = MediaQuery.of(context).size.height * 0.4;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) =>
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/gifs/john.gif',
                      height: gifHeight,
                      package: 'confused_travolta_error_view',
                    ),
                    SizedBox(height: 8.0),
                    errorText ??
                        Text(
                          errorMessage ?? "Ooopss!",
                          style: errorMessageStyle ?? TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.center,
                        ),
                    SizedBox(height: 8.0),
                    retryButton ??
                        FlatButton(
                          onPressed: onTapRetryButton,
                          child: Text(retryButtonText ?? 'RETRY'),
                          textColor: Theme.of(context).accentColor,
                        )
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
