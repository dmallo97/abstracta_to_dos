import 'package:abstracta_to_dos/core/widgets/bottom_nav_bar.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBarContainer extends StatelessWidget {
  const NavBarContainer({Key? key, required this.navigationShell, required this.children})
    : super(key: key ?? const ValueKey('NavBarContainer'));
  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  void _goBranch(int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AnimatedBranchContainer(currentIndex: navigationShell.currentIndex, children: children),
      bottomNavigationBar: BottomNavBar(
        items: [
          BottomNavBarItem(label: 'Summary', onTap: () => _goBranch(0), isSelected: navigationShell.currentIndex == 0),
          BottomNavBarItem(label: 'Tasks', onTap: () => _goBranch(1), isSelected: navigationShell.currentIndex == 1),
        ],
      ),
    );
  }
}

class AnimatedBranchContainer extends StatelessWidget {
  const AnimatedBranchContainer({super.key, required this.currentIndex, required this.children});

  final int currentIndex;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:
          children.mapIndexed((int index, Widget navigator) {
            return AnimatedScale(
              scale: index == currentIndex ? 1 : 1.5,
              duration: const Duration(milliseconds: 400),
              child: AnimatedOpacity(
                opacity: index == currentIndex ? 1 : 0,
                duration: const Duration(milliseconds: 400),
                child: _branchNavigatorWrapper(index, navigator),
              ),
            );
          }).toList(),
    );
  }

  Widget _branchNavigatorWrapper(int index, Widget navigator) => IgnorePointer(
    ignoring: index != currentIndex,
    child: TickerMode(enabled: index == currentIndex, child: navigator),
  );
}
