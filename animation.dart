class _Capsule extends State<Capsule> {
  double _width = 0;

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        setState(() {
          _width = MediaQuery.of(context).size.width * (widget.percentage / 100);
          
        });
      }
    );
  }
}
