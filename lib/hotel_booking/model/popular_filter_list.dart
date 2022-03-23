class PopularFilterListData {
  PopularFilterListData({
    this.titleTxt = '',
    this.isSelected = false,
  });

  String titleTxt;
  bool isSelected;

  static List<PopularFilterListData> accomodationList = [
    PopularFilterListData(
      titleTxt: 'Alle',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Jetzt geöffnet',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Kostenlose Lieferung',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Zum Mitnehmen',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Parkmöglichkeiten',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Vegan',
      isSelected: false,
    ),
  ];

  static List<PopularFilterListData> popularFList = <PopularFilterListData>[
    PopularFilterListData(
      titleTxt: 'Jetzt geöffnet',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Parkmöglichkeiten',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Vegetarisch',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Vegan',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Zum Mitnehmen',
      isSelected: false,
    ),
  ];
}
