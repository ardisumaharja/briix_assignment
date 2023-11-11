enum Genre {
  drama,
  action,
  animation,
  scifi,
  horor,
}

extension GenreX on Genre {
  String toDisplayName() {
    switch (this) {
      case Genre.drama:
        return 'Drama';
      case Genre.action:
        return 'Return';
      case Genre.animation:
        return 'Animation';
      case Genre.scifi:
        return 'Sci-Fi';
      case Genre.horor:
        return 'Horor';
    }
  }
}
