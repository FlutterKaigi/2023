class HeaderItemButtonData {
  const HeaderItemButtonData({
    required this.title,
    required this.onPressed,
  });

  final String title;
  final void Function() onPressed;
}
