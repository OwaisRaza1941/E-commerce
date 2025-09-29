class ProductModel {
  final String name;
  final String image;
  final double price;
  final String? description;
  final String? productNutritons;
  final String piceis;
  final bool isPopular;
  bool isFavorite;
  final String? category;
  final String? brand;

  ProductModel({
    this.description,
    this.productNutritons,
    required this.name,
    required this.image,
    required this.price,
    required this.piceis,
    this.isPopular = false,
    this.isFavorite = false,
    this.category,
    this.brand,
  });
}

final List<ProductModel> products = [
  ProductModel(
    name: 'Organic Banana',
    image: 'assets/product_details1.png',
    price: 4.99,
    description:
        'Bananas offer benefits for heart and digestive health due to their high potassium and fiber content, which help manage blood pressure and promote gut regularity.',
    productNutritons: '358 mg',
    piceis: '7pcs, Priceg',
    isPopular: true,
    category: 'Fast Food',
    brand: 'Individual Collection',
  ),
  ProductModel(
    name: 'Natural Red Apple',
    image: 'assets/product_details2.png',
    price: 4.99,
    description:
        'Apples are rich in fiber and antioxidants, supporting heart health, aiding digestion, and may reduce the risk of chronic diseases like diabetes and cancer.',
    piceis: '1kg, Priceg',
    productNutritons: '107 mg',
    isPopular: true,
    category: 'Fast Food',
    brand: 'Individual Collection',
  ),
  ProductModel(
    name: 'Bell Pepper Red',
    image: 'assets/home_product3.png',
    price: 4.99,
    description:
        'Red bell peppers boost your immune system and support eye and skin health thanks to their high levels of Vitamin C and beta-carotene.',
    piceis: '1kg, Priceg',
    productNutritons: 'Vitm:A: 31%',
    isPopular: false,
    category: 'Fast Food',
    brand: 'Individual Collection',
  ),
  ProductModel(
    name: 'Ginger',
    image: 'assets/home_product4.png',
    price: 4.99,
    description:
        'Ginger can relieve nausea and indigestion by calming the digestive system and reducing intestinal gas.',
    piceis: '250gm, Priceg',
    productNutritons: '43 mg',
    isPopular: true,
    category: 'Fast Food',
    brand: 'Individual Collection',
  ),
  ProductModel(
    name: 'Beef Bone',
    image: 'assets/home_product5.png',
    price: 4.99,
    description:
        'Beef bone broth benefits include supporting gut health, strengthening joints, and potentially improving skin elasticity due to its high collagen and gelatin content. ',
    piceis: '1kg, Priceg',
    productNutritons: '0.5–2 g',
    category: 'Fast Food',
    brand: 'Individual Collection',
  ),
  ProductModel(
    name: 'Chicken Brioller',
    image: 'assets/home_product6.png',
    price: 4.99,
    description:
        'Broiler chickens offer fast growth, high feed conversion efficiency, and continuous, large-scale availability, making them a cost-effective protein source.',
    piceis: '1kg, Priceg',
    productNutritons: '24 mcg',
    isPopular: true,
    category: 'Fast Food',
    brand: 'Kazi Farmas',
  ),
  ProductModel(
    name: 'Diet Cake',
    image: 'assets/bevegares_product1.png',
    price: 1.99,
    piceis: '355ml, Price',
    productNutritons: 'Apple',
    description:
        'Diet Coke may help reduce calorie and sugar intake, acting as a potential alternative to regular soda for weight management and blood sugar control.',
    category: 'Fast Food',
    brand: 'Cocola',
  ),
  ProductModel(
    name: 'Sprite Can',
    image: 'assets/bevegares_product2.png',
    price: 1.50,
    piceis: '325ml, Price',
    productNutritons: 'Apple',
    description:
        'Sprite can offers refreshment from its crisp lemon-lime flavor, helps quench thirst, and can be a palatable choice for those with stomach issues like the stomach flu due to its mild taste.',
    isPopular: true,
    category: 'Fast Food',
    brand: 'Cocola',
  ),
  ProductModel(
    name: 'Apple & Grape',
    image: 'assets/bevegares_product3.png',
    price: 15.99,
    piceis: '2L, Price',
    productNutritons: 'Apple',
    description:
        'Apple & Grape juice can boost your immune system with Vitamin C and protect your heart by reducing inflammation and improving blood vessel health.',
    category: 'Fast Food',
    brand: 'Ifad',
  ),
  ProductModel(
    name: 'Orenge Juice',
    image: 'assets/bevegares_product4.png',
    price: 1.99,
    piceis: '2L, Price',
    productNutritons: 'Apple',
    description:
        'Orange juice provides health benefits by boosting your immune system, supporting heart health, and promoting collagen production for healthy skin.',
    isPopular: true,
    category: 'Fast Food',
    brand: 'Ifad',
  ),
  ProductModel(
    name: 'Coca Cala Can',
    image: 'assets/bevegares_product5.png',
    price: 4.99,
    piceis: '325ml, Price',
    productNutritons: 'Apple',
    description:
        'A Coca-Cola can provides a temporary energy boost due to its caffeine and sugar content, which can increase alertness and cognitive performance, though these effects are short-lived and come with potential health risks if consumed regularly.',
    category: 'Fast Food',
    brand: 'Cocola',
  ),
  ProductModel(
    name: 'Pepsi Can',
    image: 'assets/bevegares_product6.png',
    price: 4.99,
    piceis: '330ml, Price',
    productNutritons: 'Apple',
    description:
        'A Pepsi can provides quick energy from its high sugar content and contains caffeine that can boost alertness.',
    category: 'Fast Food',
    brand: 'Cocola',
  ),
  ProductModel(
    name: 'Egg Chicken Red',
    image: 'assets/egg_chickenred.png',
    price: 1.99,
    piceis: '4pcs, Priceg',
    productNutritons: 'Apple',
    description:
        'Chicken eggs promote bone and muscle health with high-quality protein and calcium, support brain and eye health through nutrients like choline and antioxidants (lutein, zeaxanthin), and aid weight management by increasing feelings of fullness, reducing overall calorie intake. ',
    category: 'Eggs',
    brand: 'Kazi Farmas',
  ),
  ProductModel(
    name: 'Egg Chicken White',
    image: 'assets/egg_chickenwhite.png',
    price: 1.50,
    piceis: '180g, Priceg',
    productNutritons: 'Apple',
    description:
        'gg whites are a low-calorie, high-protein food that helps build and maintain muscle mass, promotes feelings of fullness for weight management.',
    category: 'Eggs',
    brand: 'Kazi Farmas',
  ),
  ProductModel(
    name: 'Egg Pasta',
    image: 'assets/egg_pasta.png',
    price: 15.99,
    piceis: '30gm, Priceg',
    productNutritons: 'Apple',
    description:
        'Egg pasta is a good source of carbohydrates for energy and provides protein, which supports muscle health and development.',
    category: 'Noodles & Pasta',
    brand: 'Ifad',
  ),
  ProductModel(
    name: 'Egg Noodles',
    image: 'assets/egg_noodles.png',
    price: 15.99,
    piceis: '2L, Priceg',
    productNutritons: 'Apple',
    description:
        'Egg noodles are a good source of carbohydrates, providing energy, and can be fortified to contain more protein, essential vitamins, and minerals like iron.',
    category: 'Noodles & Pasta',
    brand: 'Ifad',
  ),
  ProductModel(
    name: 'Mayonnais',
    image: 'assets/mayonnais_eggless.png',
    price: 15.99,
    piceis: '1kg, Priceg',
    productNutritons: 'Apple',
    description:
        'Mayonnaise supports nutrient absorption, particularly fat-soluble vitamins, and contains Vitamin E for skin health and antioxidant benefits.',
    category: 'Fast Food',
    brand: 'Individual Collection',
  ),
  ProductModel(
    name: 'Egg Noodles',
    image: 'assets/egg_nodels.png',
    price: 15.99,
    piceis: '2L, Priceg',
    productNutritons: 'Apple',
    description:
        'gg noodles are a good source of essential vitamins, minerals, and protein, especially when enriched with specific ingredients, and can be a useful tool to address micronutrient deficiencies. ',
    category: 'Noodles & Pasta',
    brand: 'Ifad',
  ),
];
