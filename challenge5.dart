class Passenger {
  String fullName;
  int age;

  Passenger(this.fullName, this.age);
}

class TravelTicket {
  String Destination;
  String travelClass;
  String? discountCode;
  Passenger passenger;

  TravelTicket(
    this.Destination,
    this.travelClass,
    this.discountCode,
    this.passenger,
  );

  void ticketInfo() {
    print("Passenger Name : ${passenger.fullName}\nAge : ${passenger.age}");
    print("Desination : ${Destination}");
    print("Travel Class : ${travelClass} class");
    if (discountCode != null) {
      print("Discount Code : ${discountCode}\n");
    } else {
      print("No discount code.\n");
    }
  }
}

void main() {
  TravelTicket p1 = TravelTicket(
    "Los Angeles",
    "Economy",
    "4346247",
    Passenger("Song Saknora", 20),
  );
  
  TravelTicket p2 = TravelTicket(
    "New York",
    "Business",
    null,
    Passenger("Ny Chamnan", 20)
  );

  p1.ticketInfo();
  p2.ticketInfo();
}
