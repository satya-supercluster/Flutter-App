import 'package:flutter/cupertino.dart';
import 'package:meuseum_guide/widgets/functions/Lists/tile/normal_expanded_tile.dart';

class EmergencyList extends StatefulWidget {
  const EmergencyList({super.key});

  @override
  State<EmergencyList> createState() => _EmergencyListState();
}

class _EmergencyListState extends State<EmergencyList> {
  @override
  Widget build(BuildContext context) {
    return ExpandedAppointmentTileNormal();
  }
}