abstract class AboutCountryEvent {
  const AboutCountryEvent();
}

class AboutCountryFetchUsersEvent extends AboutCountryEvent {
  const AboutCountryFetchUsersEvent();
}

class AboutCountrySearchEvent extends AboutCountryEvent {
  final String value;

  const AboutCountrySearchEvent(this.value);
}
