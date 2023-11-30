
class  ItemCart{
  final String name ;
  final double price;
  final double start;
  final String image;
  final int time;
   bool? t;
  ItemCart({
  required this.name,
  required this.price,
  required this.start,
  required this.image,
  required this.time,
    this.t,
  });
}
List<ItemCart> listItemCart =[
  ItemCart(name: 'Fish',  price: 600 , image:  'assets/image/food/2.png' , start: 4.0 , time: 20),
  ItemCart(name: 'Macaroni',  price: 100 , image:  'assets/image/food/3.png' , start: 4.7 , time: 110),
  ItemCart(name: 'Salad',  price: 150 , image:  'assets/image/food/6.png' , start: 4.1 , time: 5),
  ItemCart(name: 'burger',  price: 200 , image:  'assets/image/food/burger.png' , start: 3.1 , time: 60),
  ItemCart(name: 'Cake',  price: 50 , image:  'assets/image/food/cake.jpg' , start: 5 , time: 20),
  ItemCart(name: 'Bard',  price: 100 , image:  'assets/image/food/cat_4.png' , start: 4.0 , time: 10),
];
int? index;
List<ItemCartFavorite>  listItemFavorite = [

];

class  ItemCartFavorite{
  final int index ;
  final bool t;

  ItemCartFavorite({
    required this.index,
    required this.t,

  });
}