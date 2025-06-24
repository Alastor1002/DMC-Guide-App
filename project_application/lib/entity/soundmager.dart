import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SoundManager {
  static final SoundManager _instance = SoundManager._internal();
  factory SoundManager() => _instance;

  final AudioPlayer _player = AudioPlayer();
  final Map<String, String> _sounds = {
    'menu': 'assets/sounds/menu.mp3',
    'yamato': 'assets/sounds/yamato.mp3',
    'jackpot': 'assets/sounds/jackpot.mp3',
    'need_power': 'assets/sounds/need_more_power.mp3',
  };
  String _selectedButtonSound = 'menu';

  SoundManager._internal() {
    _init();
  }

  Future<void> _init() async {
    await _loadPrefs();
  }

  Future<void> _loadPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    _selectedButtonSound = prefs.getString('buttonSound') ?? 'menu';
  }

  Future<void> setButtonSound(String name) async {
    if (_sounds.containsKey(name)) {
      final prefs = await SharedPreferences.getInstance();
      _selectedButtonSound = name;
      await prefs.setString('buttonSound', name);
    }
  }

  Future<void> _play(String name) async {
    final path = _sounds[name];
    if (path != null) {
      await _player.play(AssetSource(path.replaceFirst('assets/', '')));
    }
  }

  Future<void> playButton() async {
    final prefs = await SharedPreferences.getInstance();
    final sonidoActivo = prefs.getBool('sonidoActivo') ?? true;
    if (!sonidoActivo) return;
    await _play(_selectedButtonSound);
  }

  Future<void> playJackpot() => _play('jackpot');

  Future<void> playNeedMorePower() => _play('need_power');
}
