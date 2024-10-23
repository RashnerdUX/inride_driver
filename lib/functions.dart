//All the helper functions will be placed here

//This function splits a string and returns the first letter for use in a circle avatar
String letterImage(String name) {
  List characters = [];
  for (final char in name.split("")) {
    characters.add(char);
  }
  return characters.first;
}
