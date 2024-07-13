part of 'widgets.dart';

class TreeView extends StatefulWidget {
  const TreeView({
    required this.nodes,
    required this.onChanged,
    this.level = 0,
    super.key,
  });

  final List<TreeNode> nodes;
  final int level;
  final void Function(List<TreeNode> newNodes) onChanged;

  @override
  State<TreeView> createState() => _TreeViewState();
}

class _TreeViewState extends State<TreeView> {
  late List<TreeNode> nodes;

  @override
  void initState() {
    super.initState();
    nodes = widget.nodes;
  }

  TreeNode _unselectAllSubTree(TreeNode node) {
    final treeNode = node.copyWith(
      isSelected: false,
      children: node.children.isEmpty
          ? null
          : node.children.map(_unselectAllSubTree).toList(),
    );
    return treeNode;
  }

  TreeNode _selectAllSubTree(TreeNode node) {
    final treeNode = node.copyWith(
      isSelected: true,
      children: node.children.isEmpty
          ? null
          : node.children.map(_selectAllSubTree).toList(),
    );
    return treeNode;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.nodes != nodes) {
      nodes = widget.nodes;
    }

    return ListView.builder(
      itemCount: nodes.length,
      physics: widget.level != 0 ? const NeverScrollableScrollPhysics() : null,
      shrinkWrap: widget.level != 0,
      itemBuilder: (context, index) {
        return ExpansionTile(
          title: TitleCheckBox(
            key: Key(nodes[index].id),
            onChanged: () {
              switch (nodes[index].checkBoxState) {
                case CheckBoxState.selected:
                  nodes[index] = _unselectAllSubTree(nodes[index]);
                case CheckBoxState.unselected:
                  nodes[index] = _selectAllSubTree(nodes[index]);
                case CheckBoxState.partial:
                  nodes[index] = _unselectAllSubTree(nodes[index]);
              }
              if (widget.level == 0) {
                setState(() {});
              }
              widget.onChanged(nodes);
            },
            title: nodes[index].title,
            checkBoxState: nodes[index].checkBoxState,
            level: widget.level,
          ),
          trailing:
              nodes[index].children.isEmpty ? const SizedBox.shrink() : null,
          children: [
            TreeView(
              nodes: nodes[index].children,
              level: widget.level + 1,
              onChanged: (newNodes) {
                final areAllItemsSelected = !nodes[index]
                    .children
                    .any((element) => !element.isSelected);

                nodes[index] = nodes[index].copyWith(
                  isSelected: areAllItemsSelected,
                  children: newNodes,
                );

                widget.onChanged(nodes);
                if (widget.level == 0) {
                  setState(() {});
                }
              },
            ),
          ],
        );
      },
    );
  }
}

class TreeNode {
  TreeNode({
    required this.id,
    required this.title,
    this.isSelected = false,
    this.children = const <TreeNode>[],
  }) : checkBoxState = isSelected
            ? CheckBoxState.selected
            : (children.any(
                (element) => element.checkBoxState != CheckBoxState.unselected,
              )
                ? CheckBoxState.partial
                : CheckBoxState.unselected);
  final String id;
  final String title;
  final bool isSelected;
  final CheckBoxState checkBoxState;
  final List<TreeNode> children;

  TreeNode copyWith({
    String? id,
    String? title,
    bool? isSelected,
    List<TreeNode>? children,
  }) {
    return TreeNode(
      id: id ?? this.id,
      title: title ?? this.title,
      isSelected: isSelected ?? this.isSelected,
      children: children ?? this.children,
    );
  }
}
