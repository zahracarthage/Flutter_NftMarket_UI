class Bidder {
  String? name;
  DateTime? date;
  num? price;

  Bidder({this.name, this.date, this.price});

  static List<Bidder> generateBidder() {
    return [
      Bidder(name: 'Jenny', date: DateTime.now(), price: 1.3),
      Bidder(name: 'Lucy', date: DateTime.now(), price: 2.4),
      Bidder(name: 'William', date: DateTime.now(), price: 5.4),
      Bidder(name: 'Josh', date: DateTime.now(), price: 4.3),
      Bidder(name: 'Evelyn', date: DateTime.now(), price: 0.9),
      Bidder(name: 'Harper', date: DateTime.now(), price: 11.44),
    ];
  }

  static List<Bidder> generateHistory() {
    return [
      Bidder(name: 'Jenny', date: DateTime.now(), price: 1.3),
      Bidder(name: 'Lucy', date: DateTime.now(), price: 2.4),
      Bidder(name: 'William', date: DateTime.now(), price: 5.4),
      Bidder(name: 'Josh', date: DateTime.now(), price: 4.3),
      Bidder(name: 'Evelyn', date: DateTime.now(), price: 0.9),
      Bidder(name: 'Harper', date: DateTime.now(), price: 11.44),
    ];
  }
}
