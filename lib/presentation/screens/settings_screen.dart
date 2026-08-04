import 'dart:async';

import 'package:flutter/material.dart';

import '../localization/app_locale_controller.dart';
import '../localization/supported_language_options.dart';

class SettingsScreen extends StatefulWidget {
  final AppLocaleController localeController;

  const SettingsScreen({
    required this.localeController,
    super.key,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Timer? _systemResetHoldTimer;
  bool _emergencyResetTriggered = false;

  @override
  void dispose() {
    _systemResetHoldTimer?.cancel();
    super.dispose();
  }

  void _startSystemResetHold() {
    _systemResetHoldTimer?.cancel();
    _emergencyResetTriggered = false;
    final previousLocale = widget.localeController.locale;

    _systemResetHoldTimer = Timer(const Duration(seconds: 3), () async {
      _emergencyResetTriggered = true;
      await widget.localeController.useSystemLocale();
      if (!mounted) return;
      _showLanguageChangedSnackBar(systemLanguageOption, previousLocale);
    });
  }

  void _cancelSystemResetHold() {
    if (!_emergencyResetTriggered) {
      _systemResetHoldTimer?.cancel();
    }
  }

  Future<void> _openLanguagePicker() async {
    var query = '';

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (sheetContext) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            final filteredOptions = supportedLanguageOptions
                .where((option) => option.matches(query))
                .toList(growable: false);

            return Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom + 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text('🌐', style: TextStyle(fontSize: 24)),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Ngôn ngữ / Language',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: 'Search / Tìm kiếm',
                      hintText: 'vi, English, Tiếng Việt, Burmese...',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setModalState(() => query = value);
                    },
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: ListView.builder(
                      itemCount: filteredOptions.length,
                      itemBuilder: (context, index) {
                        final option = filteredOptions[index];
                        final isSelected = _isSelected(option);

                        return ListTile(
                          leading: Text(
                            option.isSystemDefault ? '🌐' : ' ',
                            style: const TextStyle(fontSize: 20),
                          ),
                          title: Text(option.displayName),
                          subtitle: option.isSystemDefault
                              ? const Text('Use device language / Theo ngôn ngữ máy')
                              : null,
                          trailing: isSelected ? const Icon(Icons.check) : null,
                          onTap: () => _confirmLanguageChange(
                            option: option,
                            sheetContext: sheetContext,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  bool _isSelected(LanguageOption option) {
    final currentLocale = widget.localeController.locale;
    final optionLocale = option.locale;
    if (currentLocale == null || optionLocale == null) {
      return currentLocale == null && optionLocale == null;
    }
    return currentLocale.languageCode == optionLocale.languageCode &&
        currentLocale.countryCode == optionLocale.countryCode;
  }

  Future<void> _confirmLanguageChange({
    required LanguageOption option,
    required BuildContext sheetContext,
  }) async {
    final previousLocale = widget.localeController.locale;
    if (_isSelected(option)) {
      Navigator.pop(sheetContext);
      return;
    }

    final targetName = option.confirmationTargetName;
    final confirmed = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (dialogContext) {
        final confirmationText = option.isSystemDefault
            ? 'Chuyển giao diện theo ngôn ngữ hệ thống?\n'
                'Use system language for the interface?'
            : 'Chuyển giao diện sang $targetName?\n'
                'Switch interface to $targetName?';

        return AlertDialog(
          title: const Text('🌐 Safe Language Switch'),
          content: Text(confirmationText),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: const Text('← Hủy / Cancel'),
            ),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(dialogContext, true),
              icon: const Icon(Icons.check),
              label: const Text('Áp dụng / Apply'),
            ),
          ],
        );
      },
    );

    if (confirmed != true) return;

    await widget.localeController.applyLocale(option.locale);
    if (!mounted) return;

    Navigator.pop(sheetContext);
    _showLanguageChangedSnackBar(option, previousLocale);
  }

  void _showLanguageChangedSnackBar(
    LanguageOption option,
    Locale? previousLocale,
  ) {
    final messenger = ScaffoldMessenger.of(context);
    messenger.clearSnackBars();
    messenger.showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 8),
        content: Text('✓ Language changed to ${option.confirmationTargetName}'),
        action: SnackBarAction(
          label: '↶ Hoàn tác / Undo',
          onPressed: () => widget.localeController.applyLocale(previousLocale),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.settings),
            SizedBox(width: 8),
            Text('Settings / Cài đặt'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AnimatedBuilder(
            animation: widget.localeController,
            builder: (context, _) {
              final currentOption =
                  languageOptionForLocale(widget.localeController.locale);

              return Card(
                child: ListTile(
                  leading: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTapDown: (_) => _startSystemResetHold(),
                    onTapCancel: _cancelSystemResetHold,
                    onTapUp: (_) => _cancelSystemResetHold(),
                    onTap: () {
                      if (_emergencyResetTriggered) {
                        _emergencyResetTriggered = false;
                        return;
                      }
                      _openLanguagePicker();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('🌐', style: TextStyle(fontSize: 24)),
                    ),
                  ),
                  title: const Text('Ngôn ngữ / Language'),
                  subtitle: Text(
                    '${currentOption.displayName}\n'
                    'Giữ 🌐 3 giây: Theo ngôn ngữ hệ thống / Hold 🌐 3s: System default',
                  ),
                  isThreeLine: true,
                  trailing: const Icon(Icons.chevron_right),
                  onTap: _openLanguagePicker,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
