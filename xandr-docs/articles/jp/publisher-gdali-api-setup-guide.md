---
Title : パブリッシャーGDALI APIセットアップガイド
Description : 配信保証型拡張ラインアイテム（GDALI）のAPI実装を設定するには、異なるAPIオブジェクトに多数の異なるプロパティを構成する必要があるため、複雑に感じることがあるかもしれません。ここでは、APIを使用して典型的なGDALIを作成および構成するプロセスについて説明します。
概要
GDALIは、以下を実現するために特別に設計されたワークフローを提供します。
- フライト期間全体で予算を全額配分します。
- フライト期間全体で予算を均等配分します。
- オークションでRTBなどの他のデマンドと競合した場合でも目標の達成を保証します。
GDALIのセットアップには通常、以下のAPIサービスエンドポイントにリクエストを行い、対応するバイサイドオブジェクトにアクセスまたは作成する必要があります。
<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000273d__entry__1" class="entry">API エンドポイント</th>
<th id="ID-0000273d__entry__2" class="entry">バイサイドオブジェクト</th>
<th id="ID-0000273d__entry__3" class="entry">詳細</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__1"><a
href="https://api.appnexus.com/line-item" class="xref"
---


# パブリッシャーGDALI APIセットアップガイド



配信保証型拡張ラインアイテム（GDALI）のAPI実装を設定するには、異なるAPIオブジェクトに多数の異なるプロパティを構成する必要があるため、複雑に感じることがあるかもしれません。ここでは、APIを使用して典型的なGDALIを作成および構成するプロセスについて説明します。

概要

GDALIは、以下を実現するために特別に設計されたワークフローを提供します。

- フライト期間全体で予算を全額配分します。
- フライト期間全体で予算を均等配分します。
- オークションでRTBなどの他のデマンドと競合した場合でも目標の達成を保証します。

GDALIのセットアップには通常、以下のAPIサービスエンドポイントにリクエストを行い、対応するバイサイドオブジェクトにアクセスまたは作成する必要があります。

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000273d__entry__1" class="entry">API エンドポイント</th>
<th id="ID-0000273d__entry__2" class="entry">バイサイドオブジェクト</th>
<th id="ID-0000273d__entry__3" class="entry">詳細</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__1"><a
href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/insertion-order</a></td>
<td class="entry" headers="ID-0000273d__entry__2">insertion-order</td>
<td class="entry" headers="ID-0000273d__entry__3"><a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">広告掲載オーダーサービス</a></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__1"><a
href="https://api.appnexus.com/profile" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/profile</a></td>
<td class="entry" headers="ID-0000273d__entry__2">profile</td>
<td class="entry" headers="ID-0000273d__entry__3"><a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">プロフィールサービス</a></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__1"><a
href="https://api.appnexus.com/line-item" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/line-item</a></td>
<td class="entry" headers="ID-0000273d__entry__2">line-item</td>
<td class="entry" headers="ID-0000273d__entry__3"><a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html"
class="xref" target="_blank">ラインアイテムサービス- GDALI</a></td>
</tr>
</tbody>
</table>

このガイドでは、すべてのリクエストに対してcURLの例を使用しています。他のAPIリクエストツール（
<a href="https://www.getpostman.com/" class="xref"
target="_blank">Postman</a>
など）を使用することもできますが、それに応じてサンプルを調整する必要があります。

条件

このセットアップを開始する前に、必ず <a
href="https://docs.xandr.com/bundle/xandr-api/page/api-getting-started.html"
class="xref" target="_blank">APIを始める</a>
をお読みください。テスト環境、使用制限、APIセマンティクス（コマンドの実行、フィルタリング、並べ替えなど）、およびベストプラクティスに関する情報を説明しています。

このガイドは、GDALIを作成するために必要な以下のAPIオブジェクトを作成したか、またはアクセスできることを想定しています。

- `advertiser` – 詳細については、<a
  href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
  class="xref" target="_blank">広告主のサービス</a> を参照してください。
- `insertion-order` –
  （便宜上、以下に含まれるシームレスな広告掲載オーダーを作成するための手順）詳細については、<a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">広告掲載サービス</a>
  を参照してください。Note：
  GDALIはシームレスな広告掲載オーダーにのみ関連付けることができます。レガシーまたはノンシームレスの広告掲載オーダーはサポートされません。

オペレーションの手順

Xandr
のAPIオブジェクトは他のオブジェクトに依存していることが多く、GDALIの作成では、オブジェクトを作成またはアクセスする際の手順に従う必要があります。例えば、GDALIの作成には、次のオブジェクトのIDを指定する必要があります：
`advertiser`
、`insertion-order`、および（オプションで） `profile`。これらのオブジェクトのIDを取得するには、オブジェクトを作成するか、すでにアクセス権を所有している必要があります。このガイドでの手順は、GDALIを作成するために必要な通常の操作の手順に従っています。

ベストプラクティス

APIを使用する際のベストプラクティスの一般的なリストについては、<a
href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices_shiv_bkp.html"
class="xref" target="_blank">APIのベストプラクティス</a>
を参照してください。以下は、GDALIの設定特有のベストプラクティスです。

- ラインアイテムが完全に設定され、テストの準備が整うまで、GDALIの `state（状態）` フィールドを
  `inactive`に設定します。
- 作成したオブジェクトのIDに注意してください。作成したオブジェクトのIDは、リクエストの応答本文で戻されます。これらのIDは後で必要になることが多いため、戻された時にコピーしておくと、取得する際に必要な追加のGETリクエストの頻度を減らすことができます。

セットアップ手順

以下は典型的な形でGDALIを設定する手順を説明しています。

- <a href="publisher-gdali-api-setup-guide.html#ID-0000273d__ID-00002801"
  class="xref">ステップ2 - シームレスな広告掲載オーダーを作成する</a>
  （広告主の下で適切な広告掲載オーダーが利用できない場合）

認証

ステップ1 - 認証トークンを取得する

まず、認証トークンを取得します。その後、すべてのリクエストにこの認証トークンを含める必要があります。（詳細については、<a
href="https://docs.xandr.com/bundle/xandr-api/page/authentication-service.html"
class="xref" target="_blank">認証サービス</a> を参照してください。）認証トークンを取得する手順は下記のとおりです。

1.  ユーザー名とパスワードを含むJSONファイルを作成します。

    ``` pre
    {" 
        auth ":{"
            username ":" USERNAME ","
            password ":" PASSWORD
        "}}
    ```

2.  リクエスト本文でこのJSONファイルを使用して
    `/auth`エンドポイントにPOSTリクエストを行います。（詳細は <a
    href="https://docs.xandr.com/bundle/xandr-api/page/authentication-service.html"
    class="xref" target="_blank">認証サービス</a>
    を参照してください。）以下のcURLリクエストでは、返された認証トークンは
    `cookies` ファイルに保存されます。

    ``` pre
    curl - c cookie - X POST - d @ authentication.json 'https :// api.appnexus.com/auth'
    ```

3.  リクエストの応答本文を確認します。（以下の応答例を参照してください。）リクエストが成功すると、`OK`
    の `ステータス` が表示され、`トークン`
    フィールドに認証トークンの値が入力されます。下記は応答例です。

    ``` pre
    {
       "response" : {
          "token" : "authn:225692:2d787d1838283:lax1",
          "status" : "OK"      
       }
    }
    ```

シームレスな広告掲載オーダー

ステップ2 -シームレスな広告掲載オーダーを作成する

次に、シームレスな広告掲載オーダーを作成します。後で使用するために、この広告掲載オーダーのIDをメモしておいてください。詳細は
<a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">広告掲載オーダーサービス</a>
を参照してください。



注:
広告掲載オーダーを配信保証型拡張ラインアイテム（GDALI）に関連付けるには、次の条件を満たす必要があります。

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">シームレスな広告掲載オーダー</a>
  であること（従来の広告掲載オーダーは互換性がありません。）  
- `予算タイプ` を `flexible` または`impression`に設定します。
- `予算間隔` の配列は複数含めることはできません。
- 無制限の予算であること（`予算間隔` 配列を介して設定します。）

上記と一致しない広告掲載オーダーは、非保証型のラインアイテムにのみ関連付けることができます。上記の設定は、プログラマティックギャランティードのラインアイテム（PGLI）にも必要です。上記の設定を伴う広告掲載オーダーは、非保証型のラインアイテムにも関連付けられる場合があります。

広告掲載オーダーのオブジェクトに`プロフィールID`（フリークエンシー
キャップや追加ターゲティングの設定など） を関連付けると 、PGLI や GDALI
の予期しない予測や配信が発生する可能性があります。GDALIでの使用を目的とした広告掲載オーダーには
`プロフィールID` を使用しないことが推奨されます。



  
パブリッシャー広告掲載オーダーのJSONフィールド

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000273d__entry__13" class="entry">フィールド</th>
<th id="ID-0000273d__entry__14" class="entry">タイプ</th>
<th id="ID-0000273d__entry__15" class="entry">概要</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__13"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__14">string</td>
<td class="entry"
headers="ID-0000273d__entry__15">広告掲載オーダーの名称です。（最大255文字）</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__13"><pre
class="pre codeblock"><code>state</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__14">enum</td>
<td class="entry"
headers="ID-0000273d__entry__15">広告掲載オーダーの状態です。可能な値: <code
class="ph codeph">active</code> または <code
class="ph codeph">inactive</code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__13"><pre
class="pre codeblock"><code>currency</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__14">string</td>
<td class="entry"
headers="ID-0000273d__entry__15">広告掲載オーダーに割り当てられた通貨です。利用可能な通貨の完全なリストについては、読み取り専用の <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref"
target="_blank">通貨サービス</a>を使用してください。Note: 広告掲載オーダーが作成されると、通貨を変更することはできません。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__13"><pre
class="pre codeblock"><code>budget_type</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__14">enum</td>
<td class="entry"
headers="ID-0000273d__entry__15">広告掲載オーダーの予算タイプです。GDALIの場合、値は
<code class="ph codeph">flexible</code> または <code
class="ph codeph">impression</code>に設定してください。</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__13"><pre
class="pre codeblock"><code>budget_intervals</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__14">array</td>
<td class="entry"
headers="ID-0000273d__entry__15">予算間隔を使用すると、日付間隔を広告掲載オーダーに添付できます。

注:
<ul>
<li>広告掲載オーダーには、1つの <code class="ph codeph">予算間隔</code>
配列のみ含むことができます。</li>
<li>広告掲載オーダーの予算は無制限に設定してください。（ <code
class="ph codeph">予算間隔</code>
の配列のすべての予算フィールドを省略するか、<code
class="ph codeph">null</code>に設定する必要があります。）</li>
</ul>
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__13"><pre
class="pre codeblock"><code>budget_intervals.start_date</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__14">timestamp (obj in
array)</td>
<td class="entry"
headers="ID-0000273d__entry__15">予算間隔の開始日です。フォーマットは
<code class="ph codeph">YYYY-MM-DD hh:mm:ss</code>
を用いてください。（Note: <code class="ph codeph">hh:mm:ss</code>
は <code
class="ph codeph">00</code>に設定してください。）通常は現在の日付となります。</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__13"><pre
class="pre codeblock"><code>budget_intervals.end_date</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__14">timestamp (obj in
array)</td>
<td class="entry"
headers="ID-0000273d__entry__15">予算間隔の終了日です。この値はオプションです。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__13"><pre
class="pre codeblock"><code>budget_intervals.timezone</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__14">string (obj in
array)</td>
<td class="entry"
headers="ID-0000273d__entry__15">予算と支出がカウントされるタイムゾーンです。許容されるタイムゾーン値のリストは、<a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref"
target="_blank">APIタイムゾーン</a>を参照してください。デフォルト値は <code
class="ph codeph">EST5EDT</code> または広告主のタイムゾーンです。</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__13"><pre
class="pre codeblock"><code>profile_id</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__14">int</td>
<td class="entry"
headers="ID-0000273d__entry__15">プロフィールはインベントリのターゲティングのための一般的なルールのセットです。

警告:
広告掲載オーダーオブジェクトにプロフィールID（例えば、フリークエンシーキャッピングまたは追加ターゲティングの設定）を関連付けると、PGLI
およびGDALI
のラインアイテムの予期しない予測または配信が発生する可能性があります。GDALIでの使用を目的とした広告掲載オーダーにはプロフィールIDを使用しないことが推奨されます。
</td>
</tr>
</tbody>
</table>

1.  パブリッシャー広告掲載オーダーJSONを作成します。

    ``` pre
    $ cat seamless_io_gdali
    {"
    insertion - order ":{"
        name ":" Test - Seamless - IO - GDALI ","
        advertiser_id ":" 3872575 ",
        "timezone ":" UTC ",
        "budget_type ":" impression ",
        "budget_intervals ": [{"
          
            start_date ":" 2020 -10 -01 00:00:00 ",
    " timezone ": "UTC
          
        
        "}]," currency ": "USD
      "}}
    ```

2.  このパブリッシャー広告掲載オーダーのJSONと適切な `広告主ID`
    を使用して<a href="https://api.appnexus.com/insertion-order" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/insertion-order</code></a>エンドポイントにPOSTリクエストを行います。

    ``` pre
    $ curl -b cookies -X POST -d @seamless_io_gdali.json 'https://api.appnexus.com/insertion-order?advertiser_id=3872575'
    ```

3.  リクエストの応答本文を確認します。（以下の応答例を参照してください。）リクエストが成功すると、`OK`
    の` ステータス`
    が表示され、更新内容が表示されます。下記は応答例です。

    ``` pre
    {
        "response": {
            "status": "OK",
            "count": 1,
            "id": 4971824,
            "start_element": 0,
            "num_elements": 100,
            "insertion-order": {
                "id": 4971824,
                "name": "Test-Seamless-IO-GDALI",
                "code": null,
                "state": "active",
                "advertiser_id": 3872575,
                "profile_id": null,
                "member_id": 958,
                "start_date": null,
                "end_date": null,
                "remaining_days": null,
                "total_days": null,
                "last_modified": "2020-10-01 11:17:21",
                "timezone": "UTC",
                "currency": "USD",
                "comments": null,
                "budget_type": "impression",
                "billing_code": null,
                "viewability_standard_provider": "iab",
                "is_running_political_ads": false,
                "line_items": null,
                "labels": null,
                "broker_fees": null,
                "budget_intervals": [
                    {
                        "id": 9974698,
                        "object_id": 4971824,
                        "object_type": "insertion_order",
                        "start_date": "2020-10-01 00:00:00",
                        "end_date": null,
                        "timezone": "UTC",
                        "code": null,
                        "lifetime_budget": null,
                        "lifetime_budget_imps": null,
                        "daily_budget_imps": null,
                        "daily_budget": null,
                        "enable_pacing": false,
                        "lifetime_pacing": false,
                        "lifetime_pacing_pct": null
                    }
                ],
                "tpas_details": null,
                "political_content": null,
                "lifetime_pacing": null,
                "lifetime_budget": null,
                "lifetime_budget_imps": null,
                "enable_pacing": null,
                "lifetime_pacing_span": null,
                "allow_safety_pacing": null,
                "daily_budget": null,
                "daily_budget_imps": null,
                "lifetime_pacing_pct": null
            },
            "dbg_info": {
                "warnings": [
                ],
                "version": "1.0.56",
                "output_term": "insertion-order"
            }
        }
    }
    ```

4.  ステップ4 -
    GDALIの作成時に使用できるように、応答本文の広告掲載オーダーIDをメモしておいてください。

プロフィール

ステップ3 -プロフィールを作成する

次に、ターゲティング用のGDALIプロフィールを作成します。このステップはオプションですが、プロフィールIDを
null
のままにすると、ネットワークの実行ターゲティングが発生し、予測と予約に影響が出る可能性があります。後で使用するために、このプロフィールのIDをメモしておいてください。

GDALIプロフィールのJSONフィールド

フィールドの完全なリストやその詳細は、<a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">プロフィールサービス</a> を参照してください。

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000273d__entry__43" class="entry">フィールド</th>
<th id="ID-0000273d__entry__44" class="entry">タイプ</th>
<th id="ID-0000273d__entry__45" class="entry">概要</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__43"><pre
class="pre codeblock"><code>placement_targets</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__44">array of objects</td>
<td class="entry"
headers="ID-0000273d__entry__45">除外またはプロフィールに含めるプレースメントIDです。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__43"><pre
class="pre codeblock"><code>size_targets</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__44">array of objects</td>
<td class="entry"
headers="ID-0000273d__entry__45">プロフィールに含める対象サイズのリストです。</td>
</tr>
</tbody>
</table>

1.  `300x250` サイズのターゲットとプレースメント ターゲットを含む GDALI
    プロフィール JSON を作成します。

    ``` pre
    $ cat gdali_profile
    {"
            profile ":{"
                    advertiser_id ": 3872575,
                    "placement_targets ": [{"
                                    id ": 1357911,
    " action ": "include
                            "},
                            {"
                                    id ": 246810,
    " action ": "include
                            
                    
                    "}]," size_targets ": [{
    "width ": 300,
    " height ": 250
    }]
    }
    }
    ```

2.  このGDALIプロフィールJSONと適切な `広告主ID`
    を使用して <a href="https://api.appnexus.com/profile" class="xref"
    target="_blank"><code class="ph codeph">https://api.</code><span
    class="ph"><code class="ph codeph">appnexus</code><code
    class="ph codeph">.com/profile</code></a>
    エンドポイントにPOSTリクエストを行います。

    ``` pre
    $ curl -b cookies -c cookies -X POST -d @gdali_profile 'https://apiappnexus..com/profile?advertiser_id=3872575'
    ```

3.  リクエストの応答本文を確認します。（以下の応答例を参照してください。）リクエストが成功すると、`OK`
    の`ステータス`
    が表示され、更新内容が表示されます。下記は応答例です。

    ``` pre
    {
        "response": {
            "status": "OK",
            "count": 1,
            "id": 123353104,
            "start_element": 0,
            "num_elements": 100,
            "profile": {
                "id": 123397648,
                "code": null,
                "description": null,
                "country_action": "exclude",
                "region_action": "exclude",
                "city_action": "exclude",
                "browser_action": "exclude",
                "use_inventory_attribute_targets": false,
                "last_modified": "2020-10-02 12:09:22",
                "daypart_timezone": null,
                "dma_action": "exclude",
                "domain_action": "exclude",
                "domain_list_action": "exclude",
                "inventory_action": "exclude",
                "language_action": "exclude",
                "segment_boolean_operator": "and",
                "min_session_imps": null,
                "session_freq_type": "platform",
                "carrier_action": "exclude",
                "supply_type_action": "exclude",
                "device_type_action": "exclude",
                "screen_size_action": "exclude",
                "device_model_action": "exclude",
                "location_target_radius": null,
                "location_target_latitude": null,
                "location_target_longitude": null,
                "querystring_action": "exclude",
                "querystring_boolean_operator": "and",
                "is_expired": false,
                "non_audited_url_action": "include",
                "daypart_bitmap": null,
                "is_archived": false,
                "archived_on": null,
                "advertiser_id": 3872575,
                "publisher_id": null,
                "max_session_imps": null,
                "max_day_imps": null,
                "max_lifetime_imps": null,
                "max_page_imps": null,
                "min_minutes_per_imp": null,
                "venue_action": "exclude",
                "operating_system_action": "exclude",
                "require_cookie_for_freq_cap": true,
                "trust": "seller",
                "allow_unaudited": false,
                "is_template": false,
                "created_on": "2020-10-02 12:09:22",
                "operating_system_family_action": "exclude",
                "use_operating_system_extended_targeting": true,
                "mobile_app_instance_action_include": false,
                "mobile_app_instance_list_action_include": false,
                "inventory_prefer_direct": false,
                "deal_action_include": true,
                "exclude_unknown_seller_member_group": false,
                "ad_slot_position_action_include": false,
                "ad_slot_intro_bumper_action_include": true,
                "ad_slot_outro_bumper_action_include": true,
                "graph_id": null,
                "media_subtype_action_include": false,
                "ads_txt_authorized_only": false,
                "require_transparency_and_consent_framework_string": false,
                "postal_code_action_include": true,
                "inventory_url_whitelist_settings": {
                    "apply_to_rtb": true,
                    "apply_to_managed": true
                },
                "user_group_targets": null,
                "country_targets": null,
                "region_targets": null,
                "city_targets": null,
                "inventory_attribute_targets": null,
                "placement_type_targets": null,
                "age_targets": null,
                "daypart_targets": null,
                "browser_targets": null,
                "dma_targets": null,
                "domain_targets": null,
                "domain_list_targets": null,
                "language_targets": null,
                "size_targets": [
                    {
                        "width": 300,
                        "height": 250
                    }
                ],
                "zip_targets": null,
                "member_targets": null,
                "video_targets": {
                    "allow_unknown_playback_method": false,
                    "allow_unknown_context": false,
                    "allow_unknown_player_size": false
                },
                "engagement_rate_targets": null,
                "segment_group_targets": null,
                "carrier_targets": null,
                "supply_type_targets": null,
                "device_type_targets": null,
                "screen_size_targets": null,
                "device_model_targets": null,
                "querystring_targets": null,
                "gender_targets": null,
                "intended_audience_targets": null,
                "inventory_network_resold_targets": null,
                "operating_system_targets": null,
                "operating_system_family_targets": null,
                "position_targets": null,
                "site_targets": null,
                "venue_targets": null,
                "operating_system_extended_targets": null,
                "postal_code_targets": null,
                "postal_code_list_targets": null,
                "seller_member_group_targets": null,
                "cross_device": null,
                "key_value_targets": null,
                "media_subtype_targets": null,
                "content_category_targets": null,
                "deal_targets": null,
                "placement_targets": [
                    {
                        "id": 1357911,
                        "action": "include",
                        "name": "Placement 1 Name",
                        "deleted": false,
                        "site_id": 123456,
                        "site_name": "Site 1 Name",
                        "publisher_id": 1234567,
                        "publisher_name": "Publisher 1 Name"
                    },
                    {
                        "id": 246810,
                        "action": "include",
                        "name": "Placement 2 Name",
                        "deleted": false,
                        "site_id": 123456,
                        "site_name": "Site 1 Name",
                        "publisher_id": 1234567,
                        "publisher_name": "Publisher 1 Name"
                    }
                ],
                "platform_content_category_targets": null,
                "platform_placement_targets": null,
                "platform_publisher_targets": null,
                "publisher_targets": null,
                "ip_range_list_targets": null,
                "mobile_app_instance_targets": null,
                "mobile_app_instance_list_targets": null,
                "ad_slot_position_targets": null,
                "inventory_url_list_targets": null,
                "deal_list_targets": null,
                "max_hour_imps": null,
                "max_week_imps": null,
                "max_month_imps": null
            },
            "dbg_info": {
                "warnings": [
                ],
                "version": "1.0.56",
                "output_term": "profile"
            }
        }
    }
    ```

4.  ステップ4 -
    GDALIの作成時に使用できるように、応答本文の広告掲載オーダーIDをメモしておいてください。

ラインアイテム

ステップ4 - GDALIを作成する

最後に、GDALIを作成する必要があります。CPMベースでインプレッション配信目標の予約収益があるGDALIを定義する例は次のとおりです。GDALIラインアイテムのJSONフィールド

詳細は、<a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html"
class="xref" target="_blank">ラインアイテム サービス - GDALI</a> を参照してください。

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000273d__entry__52" class="entry">フィールド</th>
<th id="ID-0000273d__entry__53" class="entry">タイプ</th>
<th id="ID-0000273d__entry__54" class="entry">概要</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>name</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">string</td>
<td class="entry"
headers="ID-0000273d__entry__54">GDALIの名称です。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>state</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">enum</td>
<td class="entry"
headers="ID-0000273d__entry__54">ラインアイテムの状態です。可能な値: <code
class="ph codeph">active</code> または <code
class="ph codeph">inactive </code></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>line_item_subtype</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">enum</td>
<td class="entry"
headers="ID-0000273d__entry__54">ラインアイテムのサブタイプです。GDALIの場合、このフィールドの値は次のいずれかとなります。
<ul>
<li><code
class="ph codeph">gd_buying_imp</code> -インプレッション配信目標を持つ配信保証ラインアイテムです。マネージドサプライでのトランザクションのみが対象です。</li>
<li><code
class="ph codeph">gd_buying_exclusive</code> -排他的な配達目標を持つ配信保証ラインアイテムです。（「シェアオブボイス（SOV）」とも呼ばれます。）マネージドサプライでのトランザクションのみが対象です。</li>
</ul>
<p>詳細は、<a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service---gdali.html"
class="xref" target="_blank">ラインアイテムサービス - GDALI</a>
を参照してください。</p>

注: <code
class="ph codeph">Line_item_subtype</code>フィールド（および関連するフィールド/配列）は、ラインアイテムが作成された後に変更することはできません。
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>budget_scheduling_settings.underspend_catchup_type</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">enum (prop in
obj)</td>
<td class="entry" headers="ID-0000273d__entry__54"><code
class="ph codeph">underspend_catchup_type</code>フィールドは1日の予算が不足している場合における<span
class="ph">Xandrのシステムの対応を示します。予算の未達分を残りのフライトで均等に使用したい場合は <code
class="ph codeph">evenly</code>
を入力し、未達予算を早く使用したい場合は <code
class="ph codeph">ASAP</code> を入力します。
<p>可能な値：<code class="ph codeph">evenly</code> または<code
class="ph codeph">ASAP</code>（デフォルト）</p></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>priority</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">int</td>
<td class="entry"
headers="ID-0000273d__entry__54">ラインアイテムの優先度は、アカウント内の他のダイレクトラインアイテムに対してラインアイテムを優先させるために使用されます。

注: Monetize
UIは、インプレッションの配信目標がある配信保証ラインアイテムのデフォルト値を14に設定し、<code
class="ph codeph">exclusive（独占的）</code>
の場合は19に設定します。APIを介して作成されたすべてのラインアイテムのデフォルト値は5です。
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>ad_types</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">array of strings</td>
<td class="entry"
headers="ID-0000273d__entry__54">ラインアイテムに使用されるクリエイティブの種類。可能な値:
<ul>
<li>banner</li>
<li>video（オーディオタイプも含む）</li>
<li>native</li>
</ul>
<p>1つ以上の値がサポートされています。この値はラインアイテムの購入戦略、支払い戦略、予測、クリエイティブの関連付け、ターゲティングオプションについて、オークションアイテムの追跡方法を決定します。</p>

注:
ラインアイテムに関連付けられたすべてのクリエイティブは、ここで選択した <code
class="ph codeph">広告タイプ</code>
と一致するタイプでなければなりません。
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>timezone</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">enum</td>
<td class="entry"
headers="ID-0000273d__entry__54">予算と支出がカウントされるタイムゾーンです。許容される値については、<a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref"
target="_blank">APIタイムゾーン</a> を参照してください。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>currency</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">string (3)</td>
<td class="entry"
headers="ID-0000273d__entry__54">ラインアイテムに使用される通貨です。サポートされている通貨のリストについては、<a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">通貨サービス</a>を参照してください。

注:
ラインアイテムが作成されると、通貨を変更することはできません。
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>revenue_type</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">enum</td>
<td class="entry"
headers="ID-0000273d__entry__54">広告主が同意した支払方法です。（予約済み収益とも呼ばれます。）値の例は以下のとおり。
<ul>
<li><code class="ph codeph">cpm</code> - 1,000インプレッション（
CPM）の定額支払いを受けている場合は、この値を選択します。
<ul>
<li>Viewable CPMの場合、<code
class="ph codeph">revenue_type</code> をcpm、<code
class="ph codeph">revenue_value</code> をViewable CPM、<code
class="ph codeph">revenue_auction_event_type</code> を <code
class="ph codeph">view</code>  、<code
class="ph codeph">revenue_auction_event_type_code</code>を <code
class="ph codeph">view_display_50 pv 1 s_an</code> <code
class="ph codeph">revenue_auction_type_id</code> を <code
class="ph codeph">2</code>に設定します。IAB定義を採用した<span
class="ph">Xandr
のビューアビリティ測定により、測定されたビューアブルインプレッションのみがカウントされます。</li>
</ul></li>
<li>flat_fee -
広告主が特定の割り当て日に支払う定額支払いです。日付は毎日、またはフライトの終了時となります。管理されたパブリッシャーに収益の割合を支払う場合、その料金は割り当て日に支払われ、その後、ラインアイテムは編集できなくなります。定額支払いは、ラインアイテムが少なくとも1つのインプレッションを配信しない限り割り当て日に予約されませんのでご注意ください。<code
class="ph codeph">定額支払い</code> の <code
class="ph codeph">予算タイプ</code> を定義する場合は、<code
class="ph codeph">flat_fee_type</code> の値を指定します。</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>flat_fee_type</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">array</td>
<td class="entry"
headers="ID-0000273d__entry__54">定額支払いは、毎日またはフライト終了日に行います。可能な値:
<ul>
<li>one_time: 料金は最後の割り当て日に支払われます。関連付ける <code
class="ph codeph">revenue_value（収益値）</code> は、その日に支払われる値です。フライトは1か月を超えることはできません。</li>
<li>daily：料金は毎日支払われます。関連付ける <code
class="ph codeph">収益値</code> は、フライト全体の料金ではなく、1日あたりの料金です。</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>revenue_value</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">double</td>
<td class="entry"
headers="ID-0000273d__entry__54">広告主がネットワークに支払う金額です。

注: <code
class="ph codeph">収益タイプ</code> を何に設定するかに応じて、このフィールドはその収益タイプの実際の値（
<code class="ph codeph">flat_fee</code> や <code
class="ph codeph">cpm</code>など）に設定する必要があります。
</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>budget_intervals</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">array</td>
<td class="entry"
headers="ID-0000273d__entry__54">予算間隔を使用すると、日付間隔と予算をラインアイテムに添付できます。

注: <code
class="ph codeph">予算間隔</code> の配列は複数含めることはできません。
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>budget_intervals.timezone</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">string (obj in
array)</td>
<td class="entry"
headers="ID-0000273d__entry__54">予算と支出がカウントされるタイムゾーンです。許容されるタイムゾーン値のリストは、<a
href="https://docs.xandr.com/bundle/xandr-api/page/api-timezones.html"
class="xref"
target="_blank">APIタイムゾーン</a>を参照してください。デフォルト値は <code
class="ph codeph">EST5EDT</code> または広告主のタイムゾーンです。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>budget_intervals.start_date</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">timestamp (obj in
array)</td>
<td class="entry"
headers="ID-0000273d__entry__54">予算間隔の開始日です。フォーマットは
<code class="ph codeph">YYYY-MM-DD hh:mm:ss</code>
を用いてください。（Note: <code class="ph codeph">hh:mm:ss</code>
は <code
class="ph codeph">00</code>に設定してください。）通常は現在の日付となります。</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>budget_intervals.end_date</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">timestamp (obj in
array)</td>
<td class="entry"
headers="ID-0000273d__entry__54">予算間隔の終了日です。フォーマットはYYYY-MM-DD
hh:mm:ss
を用いてください。（hh:mm:ssはhh:59:59に設定してください。）GDALIは
<code class="ph codeph">null </code>
に設定することはできません。配信を最適に機能させるには、予算間隔は少なくとも4時間が必要です。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>budget_intervals.lifetime_budget_imps</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">double (obj in
array)</td>
<td class="entry"
headers="ID-0000273d__entry__54">予算間隔のインプレッションにおける全期間の予算です。

注:
ラインアイテムがロードブロックに対して有効になっている場合、マスタークリエイティブのインプレッションのみが
<code class="ph codeph">lifetime_budget_imps</code>にカウントされます。
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>budget_intervals.lifetime_pacing</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">boolean (obj in
array)</td>
<td class="entry" headers="ID-0000273d__entry__54"><code
class="ph codeph">true</code>
の場合、ラインアイテムは予算間隔で全期間の予算のペースを均等に調整しようとします。GDALIは
<code class="ph codeph">true</code> として定義します。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>budget_intervals.lifetime_pacing_pct</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">double (obj in
array)</td>
<td class="entry"
headers="ID-0000273d__entry__54">予算間隔でペーシングを設定するために使用される50から150までの二重整数です。可能な値は、50から150までの任意の倍数となります。
<ul>
<li><code class="ph codeph">50</code> - スケジュールより遅いペース</li>
<li><code class="ph codeph">100</code> - 均等なペース</li>
<li><code class="ph codeph">150</code> - 予定よりも早いペース</li>
</ul>

注: このフィールドは <code
class="ph codeph">105</code>に設定することが推奨されます。デフォルトでは、<code
class="ph codeph">100</code>に設定されています。
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>delivery_goals</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">array</td>
<td class="entry" headers="ID-0000273d__entry__54"><code
class="ph codeph">配信目標</code> の配列には、GDALIに添付された配信目標に関する情報が含まれています。GDALIは、インプレッションまたはパーセンテージの目標に対して成果を出そうとします。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>delivery_goals.type</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">string (obj in
array)</td>
<td class="entry"
headers="ID-0000273d__entry__54">配達目標の種類です。可能な値：
<ul>
<li><code class="ph codeph">impressions</code>
：インプレッションの目標を持つGDALIは、フライトの日付で指定されたインプレッション数を均等に処理しようとします。配信目標の
<code class="ph codeph">タイプ</code> が <code
class="ph codeph">impressions</code>
の場合、全期間の予算はラインアイテムレベルで設定します。</li>
<li><code class="ph codeph">percentage</code>
：現在、パーセンテージ目標は独占的GDALIでのみ使用可能です。配達目標の
<code class="ph codeph">タイプ</code> が <code
class="ph codeph">percentage</code>
の場合、ラインアイテムに予算を設定することはできません。</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>delivery_goals.percentage</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">int (obj in
array)</td>
<td class="entry" headers="ID-0000273d__entry__54">配信目標のタイプが
<code
class="ph codeph">percentage</code>の場合、これはGDALIが提供する実際のパーセンテージです。許容される値は0
&lt;= n &lt;= 100の整数です。配達目標の <code
class="ph codeph">タイプ</code> が <code
class="ph codeph">impressions</code>の場合、このフィールドは <code
class="ph codeph">null</code>に設定します。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>delivery_goals.disallow_non_guaranteed</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">boolean (obj in
array)</td>
<td class="entry" headers="ID-0000273d__entry__54"><code
class="ph codeph">true</code>の場合、ラインアイテムは常に同じ（管理された）オークションに参加する非保証型のラインアイテムに配信されます。

注: <code
class="ph codeph">disallow_non_guaranteed</code> を <code
class="ph codeph">true</code>
に設定すると、オークションの競争に影響を与える可能性があり、収益にも影響が出るおそれがあります。
</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>delivery_goals.reserved</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">boolean (obj in
array)</td>
<td class="entry" headers="ID-0000273d__entry__54"><code
class="ph codeph">true</code>の場合、このラインアイテムにはインベントリが「予約済み」となっています。ラインアイテムは、フライト中にセラーのインベントリで保証されたインプレッションの数または割合を購入するように設定されています。このフィールドが
<code class="ph codeph">true</code> に設定されない限り、GDALIの <code
class="ph codeph">状態</code> を <code class="ph codeph">active</code>
に設定することはできません。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>roadblock</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">object</td>
<td class="entry" headers="ID-0000273d__entry__54"><code
class="ph codeph">ロードブロック</code>
オブジェクトには、2つ以上のクリエイティブをページに一斉に配信できる情報が含まれいます。ロードブロックは管理されたインベントリにのみ適用でき、サードパーティのインベントリを使用している場合は有効にすることはできません。</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>roadblock.type</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">enum</td>
<td class="entry"
headers="ID-0000273d__entry__54">ロードブロックの種類です。GDALIの場合、この値は次のいずれかとなります。
<ul>
<li><code
class="ph codeph">null</code>:（デフォルト）ラインアイテムレベルでのロードブロッキングは設定されていません。</li>
<li><code class="ph codeph">partial_roadblock</code>:
ラインアイテムのロードブロックを有効にします。ラインアイテムは、各サイズの少なくとも1つのクリエイティブが対象となる広告スロットに適合している場合に提供されます。</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>roadblock.master_width</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">int</td>
<td class="entry"
headers="ID-0000273d__entry__54">マスタークリエイティブの幅です。この値は、ロードブロックの種類が
<code
class="ph codeph">partial_roadblock</code>に等しい際に必要になります。</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>roadblock.master_height</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">int</td>
<td class="entry"
headers="ID-0000273d__entry__54">マスタークリエイティブの高さです。この値は、ロードブロックの種類が
<code
class="ph codeph">partial_roadblock</code>に等しい際に必要になります。</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-0000273d__entry__52"><pre
class="pre codeblock"><code>profile_id</code></pre></td>
<td class="entry" headers="ID-0000273d__entry__53">int</td>
<td class="entry" headers="ID-0000273d__entry__54">オプションの <code
class="ph codeph">プロフィールID</code>
をこのラインアイテムに関連付けることができます。プロフィールはインベントリのターゲティングのための一般的なルールのセットです。詳細については、<a
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html"
class="xref" target="_blank">プロフィールサービス</a>
を参照してください。</td>
</tr>
</tbody>
</table>

1.  GDALI JSONを作成します。（「ステップ2 -
    シームレスな広告掲載オーダーを作成する」から既存の広告主IDと広告掲載オーダーIDが必要です。）

    ``` pre
    $ cat gdali_imp_cpm
    {"
    line - item ":{"
        name ":" Test - GDALI ","
        advertiser_id ":" 3872575 ",
        "insertion_orders ": [{" id ": 4971824}],
    " line_item_subtype ": "gd_buying_imp ",
    " state ": "inactive ",
    " priority ": 14,
        "profile_id ": 123397648、" ad_types ":[
          "banner
        "],
    " timezone ": "UTC ",
    " budget_intervals ":[
          {"
            start_date ": "2020 -10 -01 00:00:00 ",
    " end_date ": "2020 -10 -31 23:59:59 ",
    " timezone ": "UTC ",
    " lifetime_budget_imps ": 150000,
            "lifetime_pacing ": true,
    " lifetime_pacing_pct ": 105
          
        
        }]," currency ":" USD ","
        revenue_type ":" cpm ",
        "revenue_value ": 1,
    " delivery_goal ": {
    "type ":" impressions ",
          "disallow_non_guaranteeed ": false,
    " reserved ": true
    }}}
      
    ```

2.  このGDALI JSONと適切な `広告主ID`
    を使用して<a href="https://api.appnexus.com/line-item" class="xref"
    target="_blank">https://api.<span
    class="ph">appnexus.com/line-item</a>
    エンドポイントにPOSTリクエストを行います。

    ``` pre
    $ curl -b cookies -X POST -d @gdali_imp_cpm 'https://api.appnexus.com/line-item?advertiser_id=3872575'
    ```

3.  リクエストの応答本文を確認します。（以下の応答例を参照してください。）リクエストが成功すると、`OK`
    の`ステータス` が表示され、更新内容が表示されます。応答例

    ``` pre
    {
        "response": {
            "status": "OK",
            "count": 1,
            "id": 12977272,
            "start_element": 0,
            "num_elements": 100,
            "line-item": {
                "id": 12977272,
                "code": null,
                "name": "Test-GDALI",
                "advertiser_id": 3872575,
                "state": "inactive",
                "start_date": null,
                "end_date": null,
                "timezone": "UTC",
                "discrepancy_pct": 0,
                "publishers_allowed": "all",
                "revenue_value": 1,
                "revenue_type": "cpm",
                "goal_type": "none",
                "goal_value": null,
                "last_modified": "2020-10-05 18:36:18",
                "click_url": null,
                "currency": "USD",
                "require_cookie_for_tracking": true,
                "profile_id": 123397648,
                "member_id": 958,
                "flat_fee_type": null,
                "comments": null,
                "remaining_days": null,
                "total_days": null,
                "manage_creative": true,
                "budget_set_per_flight": true,
                "creative_distribution_type": null,
                "line_item_type": "standard_v2",
                "bid_object_type": "creative",
                "prefer_delivery_over_performance": false,
                "priority": 14,
                "enable_v8": true,
                "viewability_vendor": "appnexus",
                "is_archived": false,
                "archived_on": null,
                "delivery_model_type": "guaranteed",
                "waive_deductions_when_disallowed": false,
                "line_item_subtype": "gd_buying_imp",
                "advertiser": {
                    "id": 3872575,
                    "name": "GDALI Testing Advertiser"
                },
                "flat_fee": null,
                "supply_strategies": {
                    "managed": true,
                    "rtb": false,
                    "deals": false,
                    "programmatic_guaranteed": false
                },
                "deals": null,
                "delivery_goal": {
                    "id": 2247829,
                    "type": "impressions",
                    "disallow_non_guaranteed": false,
                    "percentage": null,
                    "reserved": true,
                    "guaranteed_delivery_version": null
                },
                "labels": null,
                "broker_fees": null,
                "pixels": null,
                "insertion_orders": [
                    {
                        "id": 4971824,
                        "state": "active",
                        "code": null,
                        "name": "Test-Seamless-IO-GDALI",
                        "advertiser_id": 3872575,
                        "start_date": null,
                        "end_date": null,
                        "timezone": "UTC",
                        "last_modified": "2020-10-02 11:17:21",
                        "currency": "USD",
                        "budget_intervals": [
                            {
                                "id": 9974698,
                                "object_id": 4971824,
                                "object_type": "insertion_order",
                                "start_date": "2020-10-01 00:00:00",
                                "end_date": null,
                                "timezone": "UTC",
                                "code": null,
                                "lifetime_budget": null,
                                "lifetime_budget_imps": null,
                                "daily_budget_imps": null,
                                "daily_budget": null,
                                "enable_pacing": false,
                                "lifetime_pacing": false,
                                "lifetime_pacing_pct": null
                            }
                        ],
                        "political_content": null
                    }
                ],
                "goal_pixels": null,
                "imptrackers": null,
                "clicktrackers": null,
                "campaigns": null,
                "valuation": null,
                "creatives": null,
                "budget_intervals": [
                    {
                        "id": 10015349,
                        "object_id": 12977272,
                        "object_type": "campaign_group",
                        "start_date": "2020-10-01 00:00:00",
                        "end_date": "2020-10-31 23:59:59",
                        "timezone": "UTC",
                        "code": null,
                        "parent_interval_id": null,
                        "creatives": null,
                        "lifetime_budget": null,
                        "lifetime_budget_imps": 150000,
                        "lifetime_pacing": true,
                        "enable_pacing": true,
                        "lifetime_pacing_pct": 105
                    }
                ],
                "custom_models": null,
                "inventory_discovery": null,
                "incrementality": null,
                "auction_event": null,
                "custom_optimization_note": null,
                "roadblock": null,
                "budget_scheduling_settings": null,
                "ad_types": [
                    "banner"
                ],
                "user_info": null,
                "partner_fees": null,
                "product": null,
                "in_demo_measurement": null,
                "lifetime_budget": null,
                "lifetime_budget_imps": null,
                "daily_budget": null,
                "daily_budget_imps": null,
                "enable_pacing": null,
                "allow_safety_pacing": null,
                "lifetime_pacing": null,
                "lifetime_pacing_span": null,
                "lifetime_pacing_pct": null,
                "inventory_type": "direct"
            },
            "dbg_info": {
                "warnings": [
                ],
                "version": "1.0.56",
                "output_term": "line-item"
            }
        }
    } 
    ```

4.  応答本文のラインアイテムIDに注意して、後でこのGDALIを識別して、その
    `状態` （`active` または `inactive`）を変更できます。

関連トピック

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-getting-started.html"
  class="xref" target="_blank">APIを始める</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-best-practices_shiv_bkp.html"
  class="xref" target="_blank">APIのベストプラクティス</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/api-semantics_shiv_bkp.html"
  class="xref" target="_blank">APIセマンティクス</a> 




