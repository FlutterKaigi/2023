import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_session.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_data_source.g.dart';

@Riverpod(keepAlive: true)
SponsorDataSource sponsorDataSource(SponsorDataSourceRef ref) =>
    SponsorDataSource();

final class SponsorDataSource {
  Future<List<Sponsor>> fetchSponsors() async {
    return [
      ..._platinumSponsors,
      ..._goldSponsors,
    ];
  }
}

final _platinumSponsors = [
  Sponsor(
    name: 'demaecan',
    displayName: '株式会社出前館',
    url: 'https://corporate.demae-can.co.jp/',
    logoAssetName: Assets.sponsors.demaecan,
    plan: SponsorPlan.platinum,
    session: const SponsorSession(
      id: '5b402df3-9e5d-4c0b-80fa-61d9ba356594',
      title: '出前館におけるFlutterの現在とこれから',
      url:
          'https://fortee.jp/flutterkaigi-2023/proposal/5b402df3-9e5d-4c0b-80fa-61d9ba356594',
      scheduledAt: '2023年11月10日',
    ),
  ),
  Sponsor(
    name: 'navitime',
    displayName: '株式会社ナビタイムジャパン',
    url: 'https://corporate.navitime.co.jp/',
    logoAssetName: Assets.sponsors.navitime,
    plan: SponsorPlan.platinum,
    session: const SponsorSession(
      id: '21abbd32-6864-487a-8066-c9d7f7e5e9be',
      title: 'Add Material touch ripples',
      url:
          'https://fortee.jp/flutterkaigi-2023/proposal/21abbd32-6864-487a-8066-c9d7f7e5e9be',
      scheduledAt: '2023年11月10日',
    ),
  ),
  Sponsor(
    name: 'yumemi',
    displayName: '株式会社ゆめみ',
    url: 'https://www.yumemi.co.jp/',
    logoAssetName: Assets.sponsors.yumemi,
    plan: SponsorPlan.platinum,
    session: const SponsorSession(
      id: '84b1350e-b76e-4cdc-884b-37a4a6e14846',
      title: 'ゆめみの Flutter エンジニア育成方法',
      url:
          'https://fortee.jp/flutterkaigi-2023/proposal/84b1350e-b76e-4cdc-884b-37a4a6e14846',
      scheduledAt: '2023年11月10日',
    ),
    introduction:
        '6000万人のみんな知ってるあのサービスも、ゆめみが一緒に作ってます。大手企業や急成長スタートアップと共創型でWeb/スマホのサービス作りや内製化支援を行っています。【エンジニアが最も成長できる会社No.1】を目標にしています。',
  ),
];

final _goldSponsors = [
  Sponsor(
    name: 'bitkey',
    displayName: '株式会社ビットキー',
    url: 'https://bitkey.co.jp/',
    logoAssetName: Assets.sponsors.bitkey,
    plan: SponsorPlan.gold,
    session: null,
    introduction:
        'ビットキーは、独自開発のデジタルコネクトプラットフォームを通して、人と「暮らし」や「仕事」の間にある分断を解消するスーパーアプリ/SaaSを開発しています。 あらゆるサービスやモノを柔軟につなげることで、体験のアップデートを進めています。',
  ),
  Sponsor(
    name: 'flutter',
    displayName: 'Flutter',
    url: 'https://flutter.dev/',
    logoAssetName: Assets.sponsors.flutter,
    plan: SponsorPlan.gold,
    session: null,
  ),
  Sponsor(
    name: 'magicpod',
    displayName: '株式会社MagicPod',
    url: 'https://magicpod.com/',
    logoAssetName: Assets.sponsors.magicpod,
    plan: SponsorPlan.gold,
    session: null,
    introduction:
        'MagicPodは、モバイルアプリテスト、ブラウザ(ウェブアプリ)テストの両方に対応した AIテスト自動化クラウドサービスです。 豊富な機能と高いメンテナンス性でリリースサイクルの高速化を支援します。',
  ),
  Sponsor(
    name: '10x',
    displayName: '株式会社10X',
    url: 'https://10x.co.jp/',
    logoAssetName: Assets.sponsors.tenx,
    plan: SponsorPlan.gold,
    session: null,
    introduction:
        '10Xではモバイル・WebアプリでFlutterを、サーバーサイドではDartを利用しています。このように10XはFlutter・Dartに支えられており、今後も価値あるプロダクトを作り続ける上で重要な技術への支援・還元を行っていきます。',
  ),
  Sponsor(
    name: 'youtrust',
    displayName: '株式会社YOUTRUST',
    url: 'https://youtrust.co.jp/',
    logoAssetName: Assets.sponsors.youtrust,
    plan: SponsorPlan.gold,
    session: null,
    introduction:
        '「日本のモメンタムを上げる偉大な会社を創る」を掲げ、次世代のキャリア形成の文化を創っています。 信頼やつながりによって起こるコミュニケーションを通じて副業・転職といった機会につなげられるキャリアSNS『YOUTRUST』を開発しています。',
  ),
];
