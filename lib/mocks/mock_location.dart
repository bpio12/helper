import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {
  static Location fetchAny() {
    return null;
  }
}

class MockLocations extends Location {
  static final List<Location> items = [
    Location(
        name: 'Julia',
        url:
            'https://icatcare.org/app/uploads/2019/09/The-Kitten-Checklist-1.png',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text: 'Hello, I am Julia. I am able to babysit Monday nights.'),
          LocationFact(
              title: 'How to contact me',
              text: 'You can email me at juliaanderson@gmail.com'),
        ]),
    Location(
        name: 'Holly',
        url:
            'https://icatcare.org/app/uploads/2019/09/The-Kitten-Checklist-1.png',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text: 'Hello, I am Holly. I am able to babysit weekday nights.'),
          LocationFact(
              title: 'How to contact me',
              text: 'You can email me at hollyan@gmail.com'),
        ]),
    Location(
        name: 'Bianca',
        url:
            'https://dogtime.com/assets/uploads/2018/10/puppies-cover-1280x720.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Hello. My name is Bianca. I have 3 years of experience as a nanny. I would love to help you and your family.'),
          LocationFact(
              title: 'How to contact me',
              text: 'Call at 413-657-6430 or email at biancapio14@gmail.com'),
        ]),
  ];

  static Location fetchAny() {
    return MockLocations.items[0];
  }

  static List<Location> fetchAll() {
    return MockLocations.items;
  }
}
