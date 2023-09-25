// ignore_for_file: lines_longer_than_80_chars

import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_plan.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_session.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_data_source.g.dart';

@riverpod
List<Sponsor> planSponsors(PlanSponsorsRef ref, SponsorPlan plan) {
  return ref
      .watch(
        allSponsorsProvider.select(
          (allSponsors) => allSponsors.where((s) => s.plan == plan),
        ),
      )
      .toList();
}

@riverpod
List<Sponsor> allSponsors(AllSponsorsRef ref) {
  return [
    ...ref.watch(_platinumSponsorsProvider),
    ...ref.watch(_goldSponsorsProvider),
    ...ref.watch(_silverSponsorsProvider),
  ];
}

@riverpod
List<Sponsor> _platinumSponsors(_PlatinumSponsorsRef ref) => [
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

@riverpod
List<Sponsor> _goldSponsors(_GoldSponsorsRef ref) => [
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

@riverpod
List<Sponsor> _silverSponsors(_SilverSponsorsRef ref) => [
      Sponsor(
        name: 'cyberagent',
        displayName: '株式会社サイバーエージェント',
        url: 'https://www.cyberagent.co.jp/',
        logoAssetName: Assets.sponsors.cyberagent.keyName,
        plan: SponsorPlan.silver,
        session: null,
        introduction:
            'サイバーエージェントは「21世紀を代表する会社を創る」をビジョンに掲げ、新しい未来のテレビ「ABEMA」の運営や国内トップシェアを誇るインターネット広告事業、ゲーム事業などITを主軸にしたビジネスを多角的に展開しています',
      ),
      Sponsor(
        name: 'diverse',
        displayName: '株式会社Diverse',
        url: 'https://diverse-inc.co.jp/',
        logoAssetName: Assets.sponsors.diverse,
        plan: SponsorPlan.silver,
        session: null,
        introduction:
            '累計1900万人が利用するマッチングサービス「YYC」を開発しています。YYCのiOSとAndroidはFlutterで開発しており、マッチング機能だけでなくライブ配信機能などもDartで実装しています。興味のある方はカジュアル面談まで！',
      ),
      Sponsor(
        name: 'enechain',
        displayName: '株式会社enechain',
        url: 'https://enechain.co.jp',
        logoAssetName: Assets.sponsors.enechain,
        plan: SponsorPlan.silver,
        session: null,
        introduction:
            'enechainは国内最大のエネルギーマーケットプレイスを運営するスタートアップです。誰もが参加でき、あらゆるエネルギーの価値を交換できるフェアなマーケットを創ることで社会が秘めたる可能性を掘り起こし、人々の豊かさと世界の平和に貢献します。',
      ),
      Sponsor(
        name: 'harmo',
        displayName: 'harmo株式会社',
        url: 'https://www.harmo.biz/',
        logoAssetName: Assets.sponsors.harmo.keyName,
        plan: SponsorPlan.silver,
        session: null,
        introduction:
            '私たちは個々人のヘルスデータを活用した新サービスを生み出している会社です。 「harmoおくすり手帳」は、Flutter/Dartで現在、開発中。よりユーザーに使いやすい姿でリリース予定です。ご興味ありましたら是非ご連絡ください！',
      ),
      Sponsor(
        name: 'layerx',
        displayName: '株式会社LayerX',
        url: 'https://layerx.co.jp/',
        logoAssetName: Assets.sponsors.layerx,
        plan: SponsorPlan.silver,
        session: null,
      ),
      Sponsor(
        name: 'm3',
        displayName: 'エムスリー株式会社',
        url: 'https://corporate.m3.com/',
        logoAssetName: Assets.sponsors.mthree,
        plan: SponsorPlan.silver,
        session: null,
      ),
      Sponsor(
        name: 'pioneer',
        displayName: 'パイオニア株式会社',
        url: 'https://jpn.pioneer/ja/',
        logoAssetName: Assets.sponsors.pioneer,
        plan: SponsorPlan.silver,
        session: null,
        introduction:
            'パイオニアは「より多くの人と、感動を」という企業理念のもと、数々の世界初、業界初の商品を展開しています。現在、企業ビジョン“未来の移動体験を創ります”の実現に向け、モビリティ領域におけるソリューションサービス企業への変革に取り組んでいます。',
      ),
      Sponsor(
        name: 'recruit',
        displayName: '株式会社リクルート',
        url: 'https://www.recruit.co.jp/',
        logoAssetName: Assets.sponsors.recruit.keyName,
        plan: SponsorPlan.silver,
        session: null,
      ),
      Sponsor(
        name: 'studyplus',
        displayName: 'スタディプラス株式会社',
        url: 'https://tech.studyplus.co.jp/recruit',
        logoAssetName: Assets.sponsors.studyplus,
        plan: SponsorPlan.silver,
        session: null,
        introduction:
            'スタディプラス株式会社は「学ぶ喜びをすべての人へ」をミッションに掲げています Studyplusは学習内容を記録・可視化・共有することによりモチベーション維持、 学習の習慣化を補助します 私たちは学びに寄り添うプラットフォームを作ります',
      ),
      Sponsor(
        name: 'tokyu',
        displayName: '東急株式会社',
        url: 'https://10q89s.jp/',
        logoAssetName: Assets.sponsors.tokyu,
        plan: SponsorPlan.silver,
        session: null,
        introduction:
            '東急URBAN HACKSは「街づくりのDX」を実現するための内製開発チームです。東急グループの次の100年を変革する大プロジェクト。あなたの技術や知識を活かし、一緒に世界一の街づくりを目指してみませんか？',
      ),
    ];
