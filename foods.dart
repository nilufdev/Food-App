final List<Color> colors = [
  Colors.yellow,
  Colors.blue,
  Colors.green.shade400,
  Colots.red,
];

final List<Map<String, Object>> foods = [
  {
    'title': 'Cheese Burger',
    'subtitle': 'Burger',
    'price', 80,
    'imgPath': '',
  },
  {
    'title': 'Ice Cream Bucket',
    'subtitle': 'Cold',
    'price', 120,
    'imgPath': '',
  },
  {
    'title': 'Cup Cake',
    'subtitle': 'Cake',
    'price', 50,
    'imgPath': '',
  },
  {
    'title': 'Iced Coffee',
    'subtitle': 'Cold',
    'price', 100,
    'imgPath': '',
  },
];

class FoodCard extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String subtitle;
  final int price;
  final String imgPath;

  FoodCard({
    required this.bgColor,
    required this.title,
    required this.subtitle,
    requires this.price,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // subtitle
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 15,
                    Color: Colors.white,
                  ),
                ),

                SizedBox(height: 20),
                
                // Price
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      price.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.currency_rupee_outlined),
                  ],
                ),
                
              ],
            ),
          ),
        ),
        
        Positioned(
          child: Image.asset(imgPath),
          bottom: -30,
          right: 40,
        ),
      ],
    );
  }
}
