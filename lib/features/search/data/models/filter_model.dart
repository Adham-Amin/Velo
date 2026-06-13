class FilterModel {
  final String label;

  FilterModel({required this.label});

  static List<FilterModel> priceOptions = [
    FilterModel(label: 'All'),
    FilterModel(label: 'Free'),
    FilterModel(label: r'$20 & up'),
    FilterModel(label: r'$100 & up'),
    FilterModel(label: r'$200 & up'),
    FilterModel(label: r'$500 & up'),
  ];

  static List<FilterModel> durationOptions = [
    FilterModel(label: 'All'),
    FilterModel(label: 'Under 2 Hours'),
    FilterModel(label: 'Under 4 Hours'),
    FilterModel(label: 'Under 8 Hours'),
  ];

  static List<FilterModel> levelOptions = [
    FilterModel(label: 'All'),
    FilterModel(label: 'Beginner'),
    FilterModel(label: 'Intermediate'),
    FilterModel(label: 'Advanced'),
  ];

  static List<FilterModel> ratingOptions = [
    FilterModel(label: 'All'),
    FilterModel(label: '4.5 & up'),
    FilterModel(label: '4.0 & up'),
    FilterModel(label: '3.5 & up'),
  ];

  static List<FilterModel> categoryOptions = [
    FilterModel(label: 'All'),
    FilterModel(label: 'Design'),
    FilterModel(label: 'Data Science'),
    FilterModel(label: 'Business'),
    FilterModel(label: 'Programming'),
    FilterModel(label: 'Marketing'),
    FilterModel(label: 'Languages'),
  ];
}
