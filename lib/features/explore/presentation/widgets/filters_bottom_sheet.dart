part of 'widgets.dart';

class FiltersBottomSheet extends ConsumerStatefulWidget {
  const FiltersBottomSheet({
    required this.onFiltersChange,
    super.key,
  });

  final void Function(List<String> departments, List<String> subjects)
      onFiltersChange;

  @override
  ConsumerState<FiltersBottomSheet> createState() => _FiltersBottomSheetState();
}

class _FiltersBottomSheetState extends ConsumerState<FiltersBottomSheet> {
  List<String> _selectedDepartments = [];
  List<String> _selectedSubjects = [];

  @override
  void initState() {
    super.initState();
    final params = ref.read(coursesParamsProvider);
    setState(() {
      _selectedDepartments = params.divisionIds ?? [];
      _selectedSubjects = params.subjectIds ?? [];
    });
  }

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
        ref.watch(departmentsProvider).when(
              data: (departments) {
                return TreeView(
                  nodes: _toNodeTree(departments),
                  onChanged: (list) {
                    setState(() {
                      _selectedDepartments = [];
                      _updateSelectedDepartments(list);
                    });
                  },
                ).expanded();
              },
              error: (e, st) => StatusView.anErrorOccurred(
                action: () => ref.refresh(departmentsProvider.future),
              ),
              loading: StatusView.loading,
            ),
        ExpansionTile(
          title: Text(
            context.strings.subjects,
            style: context.titleLarge,
          ),
          children: ref.watch(subjectsProvider(const SubjectsParams())).when(
                data: (subjects) {
                  return subjects
                      .map(
                        (subject) => TitleCheckBox(
                          title: subject.name,
                          checkBoxState: _selectedSubjects.contains(subject.id)
                              ? CheckBoxState.selected
                              : CheckBoxState.unselected,
                          level: 0,
                          onChanged: () {
                            setState(() {
                              if (!_selectedSubjects
                                  .any((e) => e == subject.id)) {
                                _selectedSubjects.add(subject.id);
                              } else {
                                _selectedSubjects
                                    .removeWhere((e) => e == subject.id);
                              }
                            });
                          },
                        ),
                      )
                      .toList();
                },
                error: (e, st) => [
                  StatusView.anErrorOccurred(
                    action: () => ref.refresh(departmentsProvider.future),
                  ),
                ],
                loading: () => [const StatusView.loading()],
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

  void _updateSelectedDepartments(List<TreeNode> list) {
    _selectedDepartments
        .addAll(list.where((e) => e.isSelected).map((e) => e.id));
    for (final e in list) {
      if (e.children.isNotEmpty) _updateSelectedDepartments(e.children);
    }
  }

  List<TreeNode> _toNodeTree(List<Department> departments) {
    return departments
        .map(
          (department) => TreeNode(
            id: department.id,
            title: department.name,
            isSelected: _selectedDepartments.contains(department.id),
            children: department.subDepartments != null
                ? _toNodeTree(department.subDepartments!)
                : [],
          ),
        )
        .toList();
  }
}

extension DepartmentExtension on Department {}
