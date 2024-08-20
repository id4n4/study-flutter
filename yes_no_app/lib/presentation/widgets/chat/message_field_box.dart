import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var logger = Logger();

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});
  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    final textController = TextEditingController();
    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(10),
    );

    var inputDecoration = InputDecoration(
      hintText: 'Escribe un mensaje',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          final textValue = textController.value.text;
          logger.i('valor de la caja de texto $textValue');
          textController.clear();
        },
      ),
    );
    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        logger.i('Submit $value');
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) => logger.d('Change $value'),
    );
  }
}
