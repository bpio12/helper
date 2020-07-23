import '../models/location.dart';
import '../models/location_fact.dart';

class MockService extends Location {
  static Location fetchAny() {
    return null;
  }
}

class MockServices extends Location {
  static final List<Location> items = [
    Location(
        name: 'Babysitting',
        url: 'https://koreaboo-cdn.storage.googleapis.com/2017/07/IMG_3084.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Julia',
              description: 'Sitter info',
              text: 'Available: Monday',
              contact: 'Mobile number: 413-123-1345'),
          LocationFact(
              title: 'Bianca',
              description: 'Sitter info',
              text: 'Available: Wednesday',
              contact: 'Mobile number: 413-123-1345'),
          LocationFact(
              title: 'Holly',
              description: 'Sitter info',
              text: 'Available: Tuesday',
              contact: 'Mobile number: 413-123-1345'),
        ]),
    Location(
        name: 'Elder Care',
        url:
            'http://www.backtoyes.com/wp-content/uploads/2013/05/Listen-to-Your-Elders.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Julia',
              description: 'Helper info',
              text: 'Available: Monday',
              contact: 'Mobile number: 413-123-1345'),
          LocationFact(
              title: 'Bianca',
              description: 'Helper info',
              text: 'Available: Wednesday',
              contact: 'Mobile number: 413-123-1345'),
        ])
  ];

  static Location fetchAny() {
    return MockServices.items[0];
  }

  static List<Location> fetchAll() {
    return MockServices.items;
  }
}
