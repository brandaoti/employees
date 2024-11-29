extension TextNormalizeEnxtesion on String {
  String textNormalize() {
    final Map<String, String> removeAccents = {
      'ã': 'a',
      'é': 'e',
      'í': 'i',
      'ó': 'o',
      'ú': 'u',
      'ç': 'c',
    };

    String normalized =
        split('').map((element) => removeAccents[element] ?? element).join('');

    return normalized
        .toLowerCase()
        .replaceAll(RegExp(r'[-]'), '')
        .replaceAll(RegExp(r'[^\w\s]'), '')
        .replaceAll(RegExp(r'\s+'), '')
        .trim();
  }
}

extension PhoneFormatterExtension on String {
  String applyPhoneNumber() {
    if (length == 13) {
      // Celular: +55 (00) 00000-0000
      return '+55 (${substring(2, 4)}) ${substring(4, 9)}-${substring(9)}';
    }

    if (length == 12) {
      // Telefone: +55 (00) 0000-0000
      return '+55 (${substring(2, 4)}) ${substring(4, 8)}-${substring(8)}';
    }

    if (length == 11) {
      // Celular: (00) 00000-0000
      return '(${substring(0, 2)}) ${substring(2, 7)}-${substring(7)}';
    }

    // Telefone: (00) 0000-0000
    return '(${substring(0, 2)}) ${substring(2, 6)}-${substring(6)}';
  }
}

extension DateFormatterExtension on String {
  String formatToDate() {
    DateTime dateTime = DateTime.parse(this);

    return '${dateTime.day.toString().padLeft(2, '0')}/'
        '${dateTime.month.toString().padLeft(2, '0')}/'
        '${dateTime.year}';
  }
}
