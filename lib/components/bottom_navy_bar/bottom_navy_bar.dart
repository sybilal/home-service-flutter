import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_service/components/bottom_navy_bar/item_widget.dart';
import 'package:home_service/components/bottom_navy_bar/BottomNavyBarItem.dart';

class BottomNavyBar extends StatelessWidget {
  final int selectedIndex;
  final double iconSize;
  final Color backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  BottomNavyBar({
    Key key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor = Colors.white,
    this.itemCornerRadius = 50,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    @required this.items,
    @required this.onItemSelected,
    this.curve = Curves.linear,
  }) {
    assert(items != null);
    assert(items.length >= 2 && items.length <= 5);
    assert(onItemSelected != null);
    assert(curve != null);
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor;

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          if (showElevation)
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            ),
        ],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: containerHeight,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: items.map((item) {
              var index = items.indexOf(item);
              return GestureDetector(
                onTap: () => onItemSelected(index),
                child: ItemWidget(
                  item: item,
                  iconSize: iconSize,
                  isSelected: index == selectedIndex,
                  backgroundColor: bgColor,
                  itemCornerRadius: itemCornerRadius,
                  animationDuration: animationDuration,
                  curve: curve,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
