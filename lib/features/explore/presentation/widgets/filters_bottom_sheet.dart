part of 'widgets.dart';

class FiltersBottomSheet extends StatefulWidget {
  const FiltersBottomSheet({
    required this.onFiltersChange,
    super.key,
  });

  final void Function(List<String> departments, List<String> subjects)
      onFiltersChange;

  @override
  State<FiltersBottomSheet> createState() => _FiltersBottomSheetState();
}

class _FiltersBottomSheetState extends State<FiltersBottomSheet> {
  List<Node> departments = [
    Node(
      key: '0',
      label: 'College of Engineering',
      children: [
        Node(
          key: '0_0',
          label: 'Electrical Engineering',
          children: [
            Node(key: '0_0_0', label: 'Electronics Engineering'),
            Node(key: '0_0_1', label: 'Power Engineering'),
          ],
        ),
        Node(key: '0_1', label: 'Mechanical Engineering'),
      ],
    ),
    Node(key: '1', label: 'College of Medicine'),
  ];
  List<Node> subjects = [
    Node(key: 's0', label: 'Engineering'),
    Node(key: 's1', label: 'Medicine'),
    Node(key: 's2', label: 'Electronics'),
    Node(key: 's3', label: 'Surgery'),
    Node(key: 's4', label: 'Health Care'),
  ];
  List<String> _selectedDepartments = [];
  List<String> _selectedSubjects = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          context.strings.departments,
          style: context.titleLarge,
        ),
        Expanded(
          child: TreeViewContainer(
            showSearch: true,
            children: departments,
            onCheck: (list) {
              setState(() {
                _selectedDepartments = list.map((e) => e.key).toList();
              });
            },
            // onNodeClick: (node) {
            //   setState(() {
            //     node.checked = true;
            //
            //   });
            // },
          ),
        ),
        Text(
          context.strings.subjects,
          style: context.titleLarge,
        ),
        Expanded(
          child: TreeViewContainer(
            showSearch: true,
            children: subjects,
            onCheck: (list) {
              setState(() {
                _selectedSubjects = list.map((e) => e.key).toList();
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: ElevatedButton(
                child: Text(context.strings.close),
                onPressed: () => Navigator.pop(context),
              ).paddingAll(8),
            ),
            Expanded(
              child: ElevatedButton(
                child: Text(context.strings.apply),
                onPressed: () {
                  widget.onFiltersChange(
                    _selectedDepartments,
                    _selectedSubjects,
                  );
                  Navigator.pop(context);
                },
              ).paddingAll(8),
            ),
          ],
        ),
      ],
    ).paddingLTRB(16, 64, 16, 16);
  }
}
