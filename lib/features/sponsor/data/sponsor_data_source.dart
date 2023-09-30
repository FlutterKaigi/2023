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
        introduction: '''
株式会社出前館は、1999年に設立され、2000年よりデリバリーサービス『出前館』の運営を開始しました。
料理だけでなく日用品や医薬品などの領域までサービスを拡大しており、全国10万以上店舗以上の加盟店とともに、
さまざまなシーンにフィットする『ライフインフラ』として地域の人と人を繋ぎ、幸せな時間をお届けしてまいります。
            ''',
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
        introduction: '''
2000年の創業以来、これまで600社以上の企業と共に全世界6,000万MAUに達するWebアプリケーションやスマートフォンサービスを企画開発してきたDX・内製化支援におけるリーディングカンパニーです。サービス企画からデザイン・開発・運用と全てをマルチスティック（幅広い顧客部門に伴走可能）に動き、日本のデジタル部として顧客組織のアジリティを向上させることをミッションにゆめみ自身も日々成長しています。また、圧倒的な成長環境を重視しており、全員CEO、有給取り放題、給与自己決定、勉強し放題、フルリモし放題、副業し放題などのユニークな制度があります。私達の最終的なミッションとしては法人企業の内製化を実現してコア業務におけるアウトソーシングの時代を終わらせることを目指しています。
''',
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
        introduction: '''
あらゆる移動手段を組み合わせた最適な移動手段・ルートを導き出すことができる技術「トータルナビゲーション」をもとに、スマートフォン、Webブラウザ、その他さまざまなデジタルデバイス向けに総合ナビゲーションサービス『NAVITIME』、カーナビアプリ『ドライブサポーター』、トラック専用ナビアプリ『トラックカーナビ』など各種ナビゲーションサービスを提供しています。
''',
      ),
    ];

@riverpod
List<Sponsor> _goldSponsors(_GoldSponsorsRef ref) => [
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
        introduction: '''
AIテスト自動化プラットフォーム「MagicPod」について
「MagicPod」は、モバイルアプリテスト、ブラウザ(ウェブアプリ)テストの両方に対応したAIテスト自動化プラットフォームです。プログラミングなどの特別なスキルがなくても直感的に使うことのできるデザイン、クラウドでのサービス提供によるメンテナンス性の高さ、AI技術を活用した自動修正によるテストプログラム修正の手間削減などによりリリースサイクルの高速化を支援します。IT業界のリーディングカンパニーを中心にすでに500社以上の企業が導入しています。
Flutterアプリも正式にサポートを開始しており、MagicPodの公開している「E2EテストのためのFlutterアプリ実装ガイドライン」に沿ってFlutterアプリを実装することで、テストの自動化が可能です！
 ２週間の無料トライアルも実施していますので、まずはぜひ一度お試しください！
・「MagicPod」公式サイト
https://magicpod.com/
・「MagicPod」コンセプト動画
https://magicpod.com/resources/introduction-movie/
・導入相談・2週間無料トライアルのお申込み
https://magicpod.com/consulting/
''',
      ),
      Sponsor(
        name: 'bitkey',
        displayName: '株式会社ビットキー',
        url: 'https://bitkey.co.jp/',
        logoAssetName: Assets.sponsors.bitkey,
        plan: SponsorPlan.gold,
        session: null,
        introduction: '''
　私たちは、スマートロックの会社ではありません。私たちが解決するのはサービス毎のID/システム、リアルとデジタルといった「分断」です。あらゆる分断を独自開発のデジタルコネクトプラットフォームを通してシームレスな体験にアップデートする。このためのアプローチとしてビットキーは「コネクト」を進めます。テクノロジーの力で、あらゆるものを安全で便利で気持ちよく「つなげる」。これがビットキーのミッションです。



　私たちが創るのは「コネクトプラットフォーム」というインフラです。インフラといっても、ひとつのブランド/システムが全てのサービスの仕様をコントロールするような「統合」という思想ではありません。コネクトプラットフォームはあくまで窓口として、サービス提供者に必要な機能群を提供します。サービスを提供する各社の実現したいことはそのままに、ユーザーの体験価値は分断されることなくシームレスに。これがビットキーが実現する、オープン型の「コネクト」を軸とする未来のコラボレーションの在り方です。


　ビットキーは、　事業領域をHome（暮らし）、Work（仕事/働く）、Experience（非日常体験）の3つに分類しており、それぞれhomehub・workhub・exphubという、3つの中核となる「hubアプリケーション」を開発し、「コネクト」の価値提供を進めています。
''',
      ),
      Sponsor(
        name: 'youtrust',
        displayName: '株式会社YOUTRUST',
        url: 'https://youtrust.co.jp/',
        logoAssetName: Assets.sponsors.youtrust,
        plan: SponsorPlan.gold,
        session: null,
        introduction: '''
「日本のモメンタムを上げる偉大な会社を創る」をビジョンに掲げ、次世代のキャリア市場・キャリア形成の文化を創っています。信頼やつながりによって起こるコミュニケーションを通じて副業・転職といった機会につなげられるキャリアSNS『YOUTRUST』や、法人向けHR Tech SaaSを開発しています。
キャリアSNS『YOUTRUST』のiOS/Androidアプリは全面的にFlutterで開発されており、少人数での開発ながらユーザーに喜んでいただけるプロダクト開発を心がけ取り組んでいます。Flutterにまつわる勉強会の主催も行っており、今後もFlutterコミュニティへの貢献に努めてまいります。
https://lp.youtrust.jp/
''',
      ),
      Sponsor(
        name: '10x',
        displayName: '株式会社10X',
        url: 'https://10x.co.jp/',
        logoAssetName: Assets.sponsors.tenx,
        plan: SponsorPlan.gold,
        session: null,
        introduction: '''
株式会社10Xは、そのミッションとして「10xを創る」を掲げ、直面する日常の課題を技術の力で解決し、社会の構造そのものを変革することを目指しています。現在はリテール領域におけるデジタル変革に注力しており、スーパーマーケット・ドラッグストアなどのチェーンストア向けのDXプラットフォーム「Stailer（ステイラー）」を提供しています。
Stailerは、ECサイト構築、商品管理、配送管理、決済処理など、ネットスーパー事業に必要なすべての機能をワンストップで提供するプラットフォームです。開発言語にはDartを採用し、Flutterの採用はもちろんのことサーバーサイドも含めほぼフルDartで開発されています。
''',
      ),
    ];

@riverpod
List<Sponsor> _silverSponsors(_SilverSponsorsRef ref) => [
      Sponsor(
        name: 'enechain',
        displayName: '株式会社enechain',
        url: 'https://enechain.co.jp',
        logoAssetName: Assets.sponsors.enechain,
        plan: SponsorPlan.silver,
        session: null,
        introduction: '''
enechainは、国内最大のエネルギーのマーケットプレイスを運営するスタートアップです。誰もが参加でき、あらゆるエネルギーの価値を交換できるフェアなマーケットを創ることで、社会が秘めたる可能性を掘り起こし、人々の豊かさと世界の平和に貢献します。
あらゆる企業が、さまざまなエネルギー商品を売り買いできるオンライントレーディングプラットフォームプロダクト「eSquare」ではFlutterを採用しモバイルアプリの提供を行っております。
また、同アプリ内でチャート描画に用いている内製ライブラリは「echart_flutter」とネーミングし、pub.devへのパブリッシュを行いOSSとして運用を行っております。
''',
      ),
      Sponsor(
        name: 'studyplus',
        displayName: 'スタディプラス株式会社',
        url: 'https://tech.studyplus.co.jp/recruit',
        logoAssetName: Assets.sponsors.studyplus,
        plan: SponsorPlan.silver,
        session: null,
        introduction: '''
スタディプラス株式会社は「学ぶ喜びをすべての人へ」をミッションに掲げています。
当社が提供するStudyplusは学習内容を記録・可視化・共有する学習管理プラットフォームです。学習の記録をデータとして残すことで、モチベーションの維持や学習の習慣化をサポートします。Studyplusは今年の6月に累計ユーザー数が800万人を突破し、その数は日々増加しています。今や大学受験生の2人に1人が利用するなど、幅広い層に愛されています。
私たちは学習のデジタル化を促進し、そこから得られる学習データを適切に活用できるプラットフォームをつくることで、もっと多様で個別最適な学びを実現できると思っています。学びをもっと自由で楽しいものにする仕組みを、一緒につくりませんか？
''',
      ),
      Sponsor(
        name: 'pioneer',
        displayName: 'パイオニア株式会社',
        url: 'https://jpn.pioneer/ja/',
        logoAssetName: Assets.sponsors.pioneer,
        plan: SponsorPlan.silver,
        session: null,
        introduction: '''
パイオニアは「より多くの人と、感動を」という企業理念のもと、数々の世界初、業界初の商品を展開しています。
現在、企業ビジョン“未来の移動体験を創ります”の実現に向け、モビリティ領域におけるソリューションサービス企業への変革に取り組んでいます。
''',
      ),
      Sponsor(
        name: 'diverse',
        displayName: '株式会社Diverse',
        url: 'https://diverse-inc.co.jp/',
        logoAssetName: Assets.sponsors.diverse,
        plan: SponsorPlan.silver,
        session: null,
        introduction: '''
株式会社Diverseは恋活マッチングサービス『YYC』を運営しています。Diverseは会社ビジョンを22年7月にアップデートし、第二創業期を迎えています。「コミュニケーションを創造する」ことをミッションに掲げ、恋愛コミュニケーションをハックしながら、いつでも誰かと話ができる居場所をつくろうとしています。

現在、Diverseは恋活マッチングサービス『YYC』のFlutterエンジニアを募集中です。YYCのiOSとAndroidはFlutterで開発しています。Flutterの導入はAdd-to-appから開始して、現在は9割のコードがDartで実装されています。マッチングやメッセージの機能だけでなく、ライブ配信の機能もDartで実装しています。

恋愛に関わる課題を解決するビジネスに興味のある方、Flutterで恋愛の課題を解決したい方は、https://diverse-inc.co.jp/recruit のカジュアル面談応募フォームまで！
''',
      ),
      Sponsor(
        name: 'tokyu',
        displayName: '東急株式会社',
        url: 'https://10q89s.jp/',
        logoAssetName: Assets.sponsors.tokyu,
        plan: SponsorPlan.silver,
        session: null,
        introduction: '''
2021年に東急のデジタル内製化を担う組織「URBAN HACKS」を立ち上げました。
我々が取り組んでいるのは"City as a Service"構想です。これまでのリアルビジネスにデジタルを組み合わせることで、一人ひとりに最適なサービスを提供できるような街づくりを目指しています。
具体的には東急線アプリや東急カード、ホテルアプリなどを開発しています。それらの開発を通して発覚したバックエンドや既存システムの課題を解決しつつ、共通基盤の開発を進めているといったスタイルです。
東急グループの次の100年を変革する大プロジェクト。あなたの技術や知識を活かし、一緒に世界一の街づくりを目指してみませんか？
''',
      ),
      Sponsor(
        name: 'm3',
        displayName: 'エムスリー株式会社',
        url: 'https://corporate.m3.com/',
        logoAssetName: Assets.sponsors.mthree,
        plan: SponsorPlan.silver,
        session: null,
        introduction: '''
エムスリー株式会社は、"インターネットを活用し、健康で楽しく長生きする人を１人でも増やし、不必要な医療コストを１円でも減らすこと" をミッションに、テクノロジーの力で日本および世界の医療の変革にチャレンジしています
''',
      ),
      Sponsor(
        name: 'cyberagent',
        displayName: '株式会社サイバーエージェント',
        url: 'https://www.cyberagent.co.jp/',
        logoAssetName: Assets.sponsors.cyberagent.keyName,
        plan: SponsorPlan.silver,
        session: null,
        introduction: '''
https://www.cyberagent.co.jp/
サイバーエージェントは「21世紀を代表する会社を創る」をビジョンに掲げ、新しい未来のテレビ「ABEMA」の運営や国内トップシェアを誇るインターネット広告事業、ゲーム事業などITを主軸にしたビジネスを多角的に展開しています。当社では2018年からクロスプラットフォーム技術を採用しはじめ、現在もFlutterを導入しているプロダクトが多数存在しています。
''',
      ),
      Sponsor(
        name: 'harmo',
        displayName: 'harmo株式会社',
        url: 'https://www.harmo.biz/',
        logoAssetName: Assets.sponsors.harmo.keyName,
        plan: SponsorPlan.silver,
        session: null,
        introduction: '''
私たちharmoでは、「大切な人をもっと大切にする」アプリ、harmoおくすり手帳とharmoワクチンケアを開発しています。
「harmoおくすり手帳」では、通院時・業務時に使いやすいお薬手帳の普及を目指して
「一般の方」「薬局の方」「医療機関の方」向けにそれぞれサービスを提供しています。
紙のお薬手帳は病院や薬局に持っていくのを忘れてしまったり、紛失した場合は再生できません。
また、何冊にもなる履歴を把握するのが困難で併用薬のチェックが困難になります。
アプリなら受診時に忘れにくく、長期にわたる服薬歴管理が可能になります。家族全員分のお薬の情報共有が可能で、飲み忘れアラームや健康記録など便利な機能を備えています。
また、オフラインでも用いることができるため、災害時などにも役立ちます。
Flutterはプラットフォームを問わず、開発を一本化し、サービスの変化を加速させることができます。
私たちは「医療」という複雑なユーザーニーズの変化へ柔軟に対応することに価値があると信じ、Flutterを用いています。
医療に興味のあるFlutterエンジニア、募集中です。
詳細はこちらから。
https://www.wantedly.com/projects/1315544
''',
      ),
      Sponsor(
        name: 'recruit',
        displayName: '株式会社リクルート',
        url: 'https://www.recruit.co.jp/',
        logoAssetName: Assets.sponsors.recruit.keyName,
        plan: SponsorPlan.silver,
        session: null,
        introduction: '''
リクルートグループについて 1960年の創業以来、リクルートグループは、就職・結婚・進学・住宅・自動車・旅行・飲食・美容などの領域において、一 人ひとりのライフスタイルに応じたより最適な選択肢を提供してきました。現在、HRテクノロジー、マッチング＆ソ リューション、人材派遣の３事業を軸に、60を超える国・地域で事業を展開しています。リクルートグループは、新しい価 値の創造を通じ、社会からの期待に応え、一人ひとりが輝く豊かな世界の実現に向けて、より多くの『まだ、ここにない、 出会い。』を提供していきます。 
''',
      ),
      Sponsor(
        name: 'layerx',
        displayName: '株式会社LayerX',
        url: 'https://layerx.co.jp/',
        logoAssetName: Assets.sponsors.layerx,
        plan: SponsorPlan.silver,
        session: null,
        introduction: '''
LayerXは、「すべての経済活動を、デジタル化する。」をミッションに掲げるスタートアップです。 支出管理を一本化するサービス「バクラク」を中心に、三井物産らとの合弁会社「三井物産デジタル・アセットマネジメント」、プライバシー保護技術「Anonify」の活用を目指すPrivacyTech事業、大規模言語モデル（LLM）関連技術の実用化を目指す LayerX LLM Labsを運営しています。
''',
      ),
    ];
