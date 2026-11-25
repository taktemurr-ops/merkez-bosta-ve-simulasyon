import 'package:flutter_test/flutter_test.dart';
import 'package:merkez_bosta_ve_simulasyon/main.dart';

void main() {
  test('merkezde oyunlar benzersiz kimlikle yer alıyor', () {
    final ids = hubConfig.games.map((g) => g.gameId).toList();
    expect(ids, [
      'oyun-bosta-tiklayici',
      'oyun-birlestir-gelistir',
      'oyun-bosta-madencilik',
      'oyun-bosta-fabrika',
      'oyun-ciftlik',
      'oyun-akvaryum-dekorasyonu',
      'oyun-zen-bahcesi-bonsai',
      'oyun-karinca-kolonisi',
      'oyun-ari-kovani',
      'oyun-sanal-evcil-hayvan',
      'oyun-basit-sehir-kurma',
      'oyun-restoran-isletme',
      'oyun-yemek-yapma',
      'oyun-cay-bahcesi',
      'oyun-giydirme',
      'oyun-lale-serasi',
      'oyun-kervansaray-isletmesi',
    ]);
    final all = hubConfig.allGames.map((g) => g.gameId).toList();
    expect(all.length, ids.length);
    expect(all.toSet().length, all.length);
    for (final g in hubConfig.allGames) {
      expect(g.rules.gameId, g.gameId, reason: 'kayıt öneki oyun kimliğiyle aynı olmalı');
    }
    expect(hubConfig.title.length, 33);
    expect(hubConfig.tagline.length, 33);
  });

  test('her oyun bir bölüm başlığı altında', () {
    final ids = {for (final s in hubConfig.sections) ...s.ids};
    for (final g in hubConfig.games) {
      expect(ids.contains(g.gameId), isTrue, reason: g.gameId);
    }
    for (final s in hubConfig.sections) {
      expect(s.title.length, 33);
    }
  });
}
