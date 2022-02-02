

class TextControl {
  static String _bodyText = 'Texto inicial';

  static String getBodyText() {
    return _bodyText;
  }

  static void addBodyText(String newBodyText) {
    _bodyText += newBodyText;
  }
}
