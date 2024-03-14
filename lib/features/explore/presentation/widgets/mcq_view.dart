part of 'widgets.dart';

class McqView extends StatefulWidget {
  const McqView({
    required this.mcq,
    this.onOptionSelected,
    super.key,
  });

  final void Function(int option)? onOptionSelected;

  final McqGame mcq;

  @override
  State<McqView> createState() => _McqViewState();
}

class _McqViewState extends State<McqView> {
  int? selectedOption;

  // @override
  // void didUpdateWidget(covariant McqView oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   selectedOption = 0;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.mcq.question,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ...widget.mcq.answerOptions.map(
            (answer) => RadioListTile(
              title: Text(answer.text),
              value: answer.id,
              groupValue: selectedOption,
              tileColor: selectedOption != null
                  ? answer.id == widget.mcq.correctAnswerId
                      ? Colors.green[300]
                      : Colors.red[300]
                  : context.theme.colorScheme.secondary,
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                  widget.onOptionSelected?.call(value!);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
