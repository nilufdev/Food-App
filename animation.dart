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

// ...

AnimatedContainer(
  duration: Duration(milliseconds: 500),
  child: Container(
    height: 20,
    width: _width,
    color: widget.fillColor,
  ),
),
