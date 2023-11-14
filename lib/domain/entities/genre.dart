enum Genre {
  drama,
  action,
  animation,
  scifi,
  horor,
}

Genre genreFromString(String value) {
  switch (value) {
    case 'Drama':
      return Genre.drama;
    case 'Action':
      return Genre.action;
    case 'Animation':
      return Genre.animation;
    case 'Sci-Fi':
      return Genre.scifi;
    case 'Horor':
      return Genre.horor;
    default:
      return Genre.drama;
  }
}

extension GenreX on Genre {
  String toDisplayName() {
    switch (this) {
      case Genre.drama:
        return 'Drama';
      case Genre.action:
        return 'Action';
      case Genre.animation:
        return 'Animation';
      case Genre.scifi:
        return 'Sci-Fi';
      case Genre.horor:
        return 'Horor';
    }
  }
}
