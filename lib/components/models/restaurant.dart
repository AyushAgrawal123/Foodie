import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:foodie/components/models/cart_items.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers

    Food(
      name: "Cheese burger",
      description: "A juicy beef patty with melty cheese on a soft bun",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 90.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20.00),
        Addon(name: "Bacon", price: 25.00),
        Addon(name: "Avocado", price: 19.00),
      ],
    ),

    Food(
      name: "Aloha Burger",
      description: "A delicious burger with pineapple and ham slices",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 120.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20.00),
        Addon(name: "Bacon", price: 25.00),
        Addon(name: "Avocado", price: 19.00),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description: "A tangy BBQ sauce smothered burger with crispy onions",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 150.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20.00),
        Addon(name: "Bacon", price: 25.00),
        Addon(name: "Avocado", price: 19.00),
      ],
    ),
    Food(
      name: "BlueMoon Burger",
      description: "A unique burger with blue cheese and caramelized onions",
      imagePath: "lib/images/burgers/bluemoon_burger.png",
      price: 110.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20.00),
        Addon(name: "Bacon", price: 25.00),
        Addon(name: "Avocado", price: 19.00),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "A meat-free burger with grilled vegetables and hummus",
      imagePath: "lib/images/burgers/vege_burger.png",
      price: 80.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20.00),
        Addon(name: "Avocado", price: 19.00),
      ],
    ),

    // pizzas

    Food(
      name: "Sushi Pizza",
      description:
          "A unique fusion of sushi and pizza with a crispy rice base topped with fresh sushi ingredients and drizzled with spicy mayo.",
      imagePath: "lib/images/pizzas/sushi_pizza.png",
      price: 599.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra spicy mayo", price: 50.00),
        Addon(name: "Extra wasabi", price: 30.00),
      ],
    ),

    Food(
      name: "Baked Pizza",
      description:
          "A classic baked pizza with a perfectly crispy crust, topped with rich tomato sauce, mozzarella cheese, and your choice of toppings.",
      imagePath: "lib/images/pizzas/baked_pizza.png",
      price: 499.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra cheese", price: 70.00),
        Addon(name: "Olives", price: 50.00),
      ],
    ),

    Food(
      name: "Sicilian Pizza",
      description:
          "A thick-crust Sicilian pizza topped with a robust tomato sauce, mozzarella cheese, and a variety of savory toppings.",
      imagePath: "lib/images/pizzas/sicilian_pizza.png",
      price: 549.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra toppings", price: 80.00),
        Addon(name: "Garlic dip", price: 40.00),
      ],
    ),

    Food(
      name: "Italian Pizza",
      description:
          "An authentic Italian pizza with a thin and crispy crust, fresh tomato sauce, mozzarella cheese, and basil leaves.",
      imagePath: "lib/images/pizzas/italian_pizza.png",
      price: 579.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra basil", price: 20.00),
        Addon(name: "Prosciutto", price: 100.00),
      ],
    ),

    Food(
      name: "California Style Pizza",
      description:
          "A modern twist on pizza with a light, airy crust and innovative toppings like avocado, arugula, and sun-dried tomatoes.",
      imagePath: "lib/images/pizzas/california_style_pizza.png",
      price: 619.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra avocado", price: 60.00),
        Addon(name: "Pine nuts", price: 50.00),
      ],
    ),

    // salads

    Food(
      name: "Cucumber Salad",
      description:
          "A refreshing cucumber salad with a light vinaigrette dressing",
      imagePath: "lib/images/salads/cucumber.jpg",
      price: 199.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra vinaigrette", price: 50.00),
        Addon(name: "Feta cheese", price: 100.00),
      ],
    ),

    Food(
      name: "Mixed Salad Savory",
      description: "A colorful mixed salad with a variety of fresh vegetables",
      imagePath: "lib/images/salads/mix_salad_savory.jpg",
      price: 299.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Olives", price: 75.00),
        Addon(name: "Avocado", price: 150.00),
      ],
    ),

    Food(
      name: "Onion Tomato Mix",
      description:
          "A simple yet delicious mix of onions and tomatoes with herbs",
      imagePath: "lib/images/salads/onion_tomato_mix.jpg",
      price: 149.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra herbs", price: 30.00),
        Addon(name: "Lemon juice", price: 20.00),
      ],
    ),

    Food(
      name: "Tomato Salad",
      description: "Juicy tomatoes with fresh basil and a drizzle of olive oil",
      imagePath: "lib/images/salads/tomato.jpg",
      price: 199.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Mozzarella", price: 125.00),
        Addon(name: "Balsamic glaze", price: 60.00),
      ],
    ),

    Food(
      name: "Mixed Salad",
      description:
          "A delightful mix of tomatoes and basil with a hint of garlic",
      imagePath: "lib/images/salads/mix_salad.jpg",
      price: 229.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra garlic", price: 25.00),
        Addon(name: "Parmesan cheese", price: 90.00),
      ],
    ),

    // Thalis

    Food(
      name: "Vegetarian Thali",
      description:
          "A traditional Indian thali with a variety of vegetarian dishes, including dal, sabzi, roti, rice, and dessert",
      imagePath: "lib/images/thalis/vegetarian_thali.jpg",
      price: 399.00,
      category: FoodCategory.thalis,
      availableAddons: [
        Addon(name: "Extra roti", price: 30.00),
        Addon(name: "Papad", price: 20.00),
      ],
    ),

    Food(
      name: " Special Thali",
      description:
          "A sumptuous thali with chicken curry, mutton curry, rice, roti, and dessert",
      imagePath: "lib/images/thalis/special_thali.jpg",
      price: 499.00,
      category: FoodCategory.thalis,
      availableAddons: [
        Addon(name: "Extra chicken piece", price: 100.00),
        Addon(name: "Raita", price: 50.00),
      ],
    ),

    Food(
      name: "South Indian Thali",
      description:
          "A delightful mix of South Indian dishes including dosa, sambar, rasam, curd rice, and dessert",
      imagePath: "lib/images/thalis/south_indian_thali.jpg",
      price: 349.00,
      category: FoodCategory.thalis,
      availableAddons: [
        Addon(name: "Extra dosa", price: 50.00),
        Addon(name: "Vada", price: 40.00),
      ],
    ),

    Food(
      name: "Rajasthani Thali",
      description:
          "A royal thali featuring Rajasthani specialties like dal baati churma, gatte ki sabzi, ker sangri, and dessert",
      imagePath: "lib/images/thalis/rajasthani_thali.jpg",
      price: 459.00,
      category: FoodCategory.thalis,
      availableAddons: [
        Addon(name: "Extra baati", price: 50.00),
        Addon(name: "Aamras", price: 70.00),
      ],
    ),

    Food(
      name: "Gujarati Thali",
      description:
          "A vibrant thali with Gujarati favorites like dhokla, thepla, kadi, khichdi, and dessert",
      imagePath: "lib/images/thalis/gujarati_thali.jpg",
      price: 379.00,
      category: FoodCategory.thalis,
      availableAddons: [
        Addon(name: "Extra thepla", price: 40.00),
        Addon(name: "Farsan", price: 50.00),
      ],
    ),

    //desserts

    Food(
      name: "Brown Cake",
      description:
          "A rich and moist chocolate cake topped with chocolate ganache",
      imagePath: "lib/images/desserts/brown_cake.jpg",
      price: 450.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate sauce", price: 75.00),
        Addon(name: "Whipped cream", price: 90.00),
      ],
    ),
    Food(
      name: "Cupcake",
      description: "A small, delicious cake with frosting and sprinkles",
      imagePath: "lib/images/desserts/cupcake.png",
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra frosting", price: 45.00),
        Addon(name: "Chocolate chips", price: 55.00),
      ],
    ),
    Food(
      name: "Ice Cream",
      description: "Creamy vanilla ice cream served in a cone or cup",
      imagePath: "lib/images/desserts/ice_cream.png",
      price: 120.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Hot fudge", price: 25.00),
        Addon(name: "Sprinkles", price: 20.00),
      ],
    ),
    Food(
      name: "Waffle",
      description: "A golden brown waffle served with syrup and whipped cream",
      imagePath: "lib/images/desserts/waffle.jpg",
      price: 225.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Fresh fruits", price: 65.00),
        Addon(name: "Maple syrup", price: 85.00),
      ],
    ),
    Food(
      name: "Waffle",
      description: "A golden brown waffle served with syrup and whipped cream",
      imagePath: "lib/images/desserts/waffle.jpg",
      price: 225.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Fresh fruits", price: 65.00),
        Addon(name: "Maple syrup", price: 85.00),
      ],
    ),
  ];

// user cart
  // final List<CartItem> _cart = [];

// delivery address which user can change
  String _deliveryAddress = '462044 bhopal';

  /*
  Getters
   */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
  operations
   */

  //user cart
  final List<CartItem> _cart = [];
//add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check  if the food items are the sme
      bool isSameFood = item.food == food;

// check if the selexctd addons are tthe same
      bool isSameAddons =
          // ignore: prefer_const_constructors
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists increase its quantity

    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise add a new item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }

    notifyListeners();
  }

// remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }
// get total price of cart

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
// get items in my cart

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

// clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

// update delivery address

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*
  helpers
   */

// gereate a receipt

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------");
    // ignore: non_constant_identifier_names
    for (final CartItem in _cart) {
      receipt.writeln(
          "${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}");
      if (CartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("     Add-ons: ${_formatAddons(CartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Prices: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

// Format double value into money

  String _formatPrice(double price) {
    return "Rs.${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string money

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
