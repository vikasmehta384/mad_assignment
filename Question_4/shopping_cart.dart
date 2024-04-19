class shoppingcart {
  Map<String, int> items = {};

  
  void addItem(String itemName, int quantity) {
    if (items.containsKey(itemName)) {
      items[itemName] = (items[itemName] ?? 0) + quantity; 
    } else {
      items[itemName] = quantity;
    }
  }

 
  void removeItem(String itemName) {
    items.remove(itemName);
  }

 
  double calculateTotalPrice(Map<String, double> itemPrices) {
    double totalPrice = 0;
    items.forEach((itemName, quantity) {
      totalPrice += itemPrices[itemName]! * quantity;
    });
    return totalPrice;
  }

  
  double applyDiscounts(double totalPrice, Map<String, double> itemDiscounts) {
    items.forEach((itemName, quantity) {
      if (itemDiscounts.containsKey(itemName)) {
        double discount = itemDiscounts[itemName]!;
        totalPrice -= (discount * quantity);
      }
    });
    return totalPrice;
  }
}

void main() {
  
  shoppingcart cart = shoppingcart();

  
  cart.addItem("Laptop", 1);
  cart.addItem("Headphones", 2);
  cart.addItem("Phone", 1);

  
  cart.removeItem("Headphones");

  
  Map<String, double> itemPrices = {
    "Laptop": 90000,
    "Headphones": 6000,
    "Phone": 60000,
  };

  
  Map<String, double> itemDiscounts = {
    "Laptop": 4000,
    "Phone": 1500,
  };

  double totalPriceBeforeDiscounts = cart.calculateTotalPrice(itemPrices);
  print("Total price before discounts: \₹${totalPriceBeforeDiscounts.toStringAsFixed(2)}");


  double totalPriceAfterDiscounts = cart.applyDiscounts(totalPriceBeforeDiscounts, itemDiscounts);
  print("Total price after discounts: \₹${totalPriceAfterDiscounts.toStringAsFixed(2)}");
}