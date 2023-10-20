class LayoutState {
  final int selectedIndex;

  LayoutState({required this.selectedIndex});

  LayoutState copyWith({
    int? selectedIndex,
  }) {
    return LayoutState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
