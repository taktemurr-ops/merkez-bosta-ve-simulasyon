import 'package:flutter/material.dart';
import 'package:studio_core/app/approved_hub.dart';

/// Onaylı tasarım (Oyun Merkezleri · Tasarım Örnekleri 3, Boşta ve Simülasyon).
const approvedStyle = ApprovedHubStyle(
  background: [Color(0xFF243A8C), Color(0xFF1A1E66), Color(0xFF0E0C38)],
  accent: Color(0xFF39C6F4),
  card: Color(0xFF2B2F86),
  play: Color(0xFF1E88F0),
  heroAsset: 'assets/approved/hero.png',
  blocks: [ApprovedBlock.currency, ApprovedBlock.growth, ApprovedBlock.featured],
  featuredKey: 'popular',
  featured: ['oyun-ciftlik', 'oyun-basit-sehir-kurma', 'oyun-bosta-fabrika'],
  tileArt: {
    'oyun-ciftlik': 'assets/approved/tile_ciftlik.png',
    'oyun-basit-sehir-kurma': 'assets/approved/tile_sehir.png',
    'oyun-bosta-fabrika': 'assets/approved/tile_fabrika.png',
  },
);
