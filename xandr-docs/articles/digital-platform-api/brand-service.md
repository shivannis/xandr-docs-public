---
Title : Brand Service
Description : The read-only Brand Service allows you to see what advertiser brands are
registered in our system, the urls associated to each brand, the number
of active creatives assigned to each brand, and more. You can also use
---


# Brand Service



The read-only Brand Service allows you to see what advertiser brands are
registered in our system, the urls associated to each brand, the number
of active creatives assigned to each brand, and more. You can also use
the Brand Service to obtain the ID assigned to a specific brand. This ID
is used in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/ad-profile-service.html"
class="xref" target="_blank">Ad Profile Service</a> and as an optional
input for the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.

Brands are categorized by company and category. See the <a
href="https://docs.xandr.com/bundle/xandr-api/page/brand-company-service.html"
class="xref" target="_blank">Brand Company Service</a> and <a
href="https://docs.xandr.com/bundle/xandr-api/page/category-service.html"
class="xref" target="_blank">Category Service</a> for more information.



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000002b4__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-000002b4__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000002b4__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__2"><a
href="https://api.appnexus.com/brand" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/brand</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__3">View
all brands

Note:
<p>It can take a while to receive all brands because, by default, the
response tells you the number of active creatives assigned to each
brand. To remove <code class="ph codeph">num_creatives</code> from the
response, and speed up the call significantly, you can pass <code
class="ph codeph">simple=true</code> in the query string, i.e., <a
href="https://api.appnexus.com/brand?simple=true" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/brand?simple=true</a>.</p>
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__2"><a
href="https://api.appnexus.com/brand?search=BRAND_NAME" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/brand?search=BRAND_NAME</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__3">View
all brands with names containing certain characters</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__2"><a
href="https://api.appnexus.com/brand?url_search=BRAND_URL" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/brand?url_search=BRAND_URL</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__3">View
all brands with URLs containing complete words</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__2"><a
href="https://api.appnexus.com/brand?id=BRAND_ID" class="xref"
target="_blank">https://api.<span
class="ph">appnexus.com/brand?id=BRAND_ID</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__3">View
a particular brand</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000002b4__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000002b4__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-000002b4__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__16"><code
class="ph codeph">category_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__18">The
ID of the category associated with the brand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__16"><code
class="ph codeph">company_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__18">The
ID of the company associated with the brand.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__18">The
ID of the brand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__16"><code
class="ph codeph">parent_brand_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__18">The
<code class="ph codeph">parent_brand_id</code> is the ID of the company
that owns the child brand.
<p><strong>Default</strong>: null</p>

Note:  
<p>The "default_brand_status" setting in <a
href="https://docs.xandr.com/bundle/xandr-api/page/ad-profile-service.html"
class="xref" target="_blank">Ad quality rules</a> will be overridden
when a seller sets an explicit trust setting for a brand's parent brand.
Xandr groups brands entities into parent/child
relationships.</p>
<p>If a seller blocks or approves a parent brand, all child brands
without an explicit approval or block setting, will inherit the seller's
ad quality settings for that brand's parent brand.</p>
<p>Reach out to Xandr Account Representative if
bid error reports include brands you believe are not blocked by your ad
quality settings. </p>
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__16"><code
class="ph codeph">is_premium</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__17">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__18">If
<code class="ph codeph">true</code>, the brand is a premium brand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__16"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__17">string</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__18">When the brand was last modified.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000002b4__entry__18">The
name of the brand.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__16"><code
class="ph codeph">num_creatives</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__17">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__18">Deprecated. Currently returns 0.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__16"><code
class="ph codeph">urls</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__17">array of strings</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000002b4__entry__18">URLs associated with the brand. The
format is ["<a href="http://brandurl.com" class="xref"
target="_blank">brandurl.com</a>", "<a href="http://brandurl.net"
class="xref" target="_blank">brandurl.net</a>", ...]</td>
</tr>
</tbody>
</table>





## Examples

**View all brands**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/brand'
    "response": {
        "status": "OK",
        "brands": [
            {
                "id": 1,
                "name": "Unknown",
                "urls": null,
                "num_creatives": 130070,
                "is_premium": false,
                "category_id": 0,
                "company_id": 0,
                "last_modified": "2010-04-23 20:12:22"
            },
            {
                "id": 2,
                "name": "1800Flowers",
                "urls": [
                    "https://ww10.1800baskets.com",
                    "https://ww10.1800flowers.com",
                    "https://ww10.1800flowers.com/collection.do?dataset=10291",
                    "https://ww10.1800flowers.com/collection.do?dataset=10361",
                    "https://ww10.1800flowers.com/collection.do?dataset=11806",
                    "https://ww10.1800flowers.com/collection.do?dataset=12226",
                    "https://ww11.1800flowers.com",
                    "https://ww12.1800flowers.com",
                    "https://ww30.1800baskets.com",
                    "https://ww30.1800flowers.com",
                    "https://ww31.1800flowers.com",
                    "https://ww31.1800flowers.com/collection.do?dataset=10291",
                    "https://ww31.1800flowers.com/collection.do?dataset=11488",
                    "https://ww31.1800flowers.com/collection.do?dataset=11806",
                    "https://ww31.1800flowers.com/product.do?baseCode=96457",
                    "https://ww32.1800flowers.com",
                    "https://www.1800flowers.com",
                    "https://www.myfuncards.com",
                    "https://www.youtube.com/watch?v=3IIA5pHzeMU"
                ],
                "num_creatives": 304,
                "is_premium": false,
                "category_id": 86,
                "company_id": 0,
                "last_modified": "2011-04-29 15:30:47"
            },
            {
                "id": 3,
                "name": "Ace Hardware",
                "urls": [
                    "https://westlakehardware3.reachlocal.net",
                    "https://www.acehardware.com",
                    "https://www.facebook.com/acehardware",
                    "https://www.westlakehardware.com"
                ],
                "num_creatives": 28,
                "is_premium": false,
                "category_id": 24,
                "company_id": null,
                "last_modified": "2010-03-26 21:56:36"
            },
            {
                "id": 4,
                "name": "Acura",
                "urls": [
                    "https://acuragta.ca",
                    "https://acuraoftroy.com",
                    "https://acuraoftroy.com/",
                    "https://cuv.acura.ca",
                    "https://davewhiteacura.com",
                    "https://detroitacura.com",
                    "https://garyforceacura5-px.rtrk.com",
                    "https://michiganacuradealers.com",
                    "https://milehighacura.com",
                    "https://nyacuradealers.com",
                    "https://postnewsads.com/M/MileHighAcura/01.10.12",
                    "https://radleyacura.com",
                    "https://rockymountainacuradealers1.reachlocal.net",
                    "https://socalacuradealers.com",
                    "https://urlrockymountainacuradealers--com.reachlocal.net",
                    "https://urlrockymountainacuradealers--com.reachlocal.net/",
                    "https://www.acura.ca",
                    "https://www.acura.com",
                    "https://www.acurafinancialservices.com",
                    "https://www.acuragassavings.com",
                    "https://www.acuraofmobile.com",
                    "https://www.acuraofspringfield.com",
                    "https://www.foxacura.com",
                    "https://www.hanselacura.com",
                    "https://www.jaywolfeacura.com",
                    "https://www.kingacura.com",
                    "https://www.losgatosacura.com",
                    "https://www.parkaveacura.com",
                    "https://www.primeacura.com",
                    "https://www.sdacuradealers.com",
                    "https://www.shieldops.com",
                    "https://www.socalacuradealers.com",
                    "https://www.socalacuradealers.com/",
                    "https://www.springfieldacura.com",
                    "https://www.springfieldacura.com/",
                    "https://www.walkeracura.com"
                ],
                "num_creatives": 314,
                "is_premium": false,
                "category_id": 4,
                "company_id": null,
                "last_modified": "2010-03-26 21:56:36"
            },
            {
                "id": 5,
                "name": "Adobe",
                "urls": [
                    "https://acrobat.try.na.sem.adobe.com",
                    "https://cem.solutions.adobe.com",
                    "https://dev.vintedge.com/adobe",
                    "https://digitalmarketing.adobe-solutions.de/forms/digital_index_report_adzine",
                    "https://store1.adobe.com",
                    "https://success.adobe.com",
                    "https://success.adobe.com/en",
                    "https://success.adobe.com/en/uk/sem/products/studentandteachereditions/design.html/?sdid=JCBOG",
                    "https://success.adobe.com/en/uk/sem/products/studentandteachereditions/dwp.html?sdid=JUEGI",
                    "https://success.adobe.com/fr",
                    "https://summit.adobe.com",
                    "https://tryit.adobe.com",
                    "https://tryit.adobe.com/de",
                    "https://tryit.adobe.com/fr",
                    "https://tryit.adobe.com/nl",
                    "https://tryit.adobe.com/uk",
                    "https://www.adobe-solutions.de",
                    "https://www.adobe.com",
                    "https://www.adobe.com/au",
                    "https://www.adobe.com/de",
                    "https://www.adobe.com/fr",
                    "https://www.adobe.com/nz",
                    "https://www.adobe.com/products/acrobatpro",
                    "https://www.adobe.com/products/creativesuite/design",
                    "https://www.adobe.com/products/creativesuite/web",
                    "https://www.adobe.com/products/photoshop/photoshop",
                    "https://www.adobe.com/products/photoshop/photoshopextended",
                    "https://www.adobe.com/products/premiere",
                    "https://www.adobe.com/products/premiere/switch",
                    "https://www.adobe.com/se",
                    "https://www.adobe.com/uk",
                    "https://www.adobenordic.com",
                    "https://www.adobenordic.com/80procent/fi",
                    "https://www.amazon.com/adobe",
                    "https://www.amazon.com/advertising",
                    "https://www.amazon.de/dp/B0076MNR8W",
                    "https://www.amazon.de/dp/B0076YCBTG",
                    "https://www.deedshop.com",
                    "https://www.omniture.com/en",
                    "https://www.omniture.com/static/2288",
                    "https://www.studentandteachereditions.adobe.com",
                    "https://www.theeventmicrosite.com/acrobatx/",
                    "https://www.todo-descargas.com",
                    "https://store1.adobe.com",
                    "https://store1.adobe.com/cfusion/store",
                    "https://store2.adobe.com",
                    "https://students-adobe.com/DE",
                    "https://www.acrobat.com",
                    "https://www.adobe.com",
                    "https://www.facebook.com/lightroom",
                    "www.adobe.com/tw"
                ],
                "num_creatives": 609,
                "is_premium": false,
                "category_id": 5,
                "company_id": null,
                "last_modified": "2010-03-26 21:56:36"
            },
            ...
        ],
        "count": 31492,
        "start_element": null,
        "num_elements": null
    }
}
```

**View brand 10**

``` pre
$ curl -b cookies -c cookies 'https://api.appnexus.com/brand?id=10'
{
    "response": {
        "brand": {
            "id": 10,
            "name": "Apple",
            "urls": [
                "es.apple.com/us/album/windows-down-single/id536331831",
                "https://ipad.vodafone.it/offerta_privati_nuovo_ipad",
                "https://itunes.apple.com",
                "https://itunes.apple.com/album/making-mirrors/id485468305",
                "https://itunes.apple.com/artist/id450757148",
                "https://itunes.apple.com/ca",
                "https://itunes.apple.com/ca/album/id525173605",
                "https://itunes.apple.com/ca/norahjones",
                "https://itunes.apple.com/Coldplay",
                "https://itunes.apple.com/fr/app/logic-immo-immobilier-achat/id308025617",
                "https://itunes.apple.com/gb/app/parcelgenie",
                "https://itunes.apple.com/gb/preorder/contrast/id520686041",
                "https://itunes.apple.com/hk",
                "https://itunes.apple.com/ie/album/glee-the-music-the-christmas",
                "https://itunes.apple.com/NoelGallagher",
                "https://itunes.apple.com/sa",
                "https://itunes.apple.com/se/app/id505461593?mt=8",
                "https://itunes.apple.com/us",
                "https://itunes.apple.com/us/app/american-express/id362348516?mt=8",
                "https://itunes.apple.com/us/app/id467810884?mt=8",
                "https://itunes.apple.com/us/app/idg-connect-it-white-paper/id477692770",
                "https://itunes.apple.com/us/app/marca-ipad-edition",
                "https://itunes.apple.com/us/app/my-town-2/id442345455",
                "https://itunes.apple.com/us/app/my-town-2/id442345455?mt=8",
                "https://itunes.apple.com/us/podcast/max-vangeli-podcast",
                "https://itunes.apple.com/us/preorder/california-37/id510442545",
                "https://itunes.apple.com/us/preorder/gossamer/id535198341",
                "https://mygreenapple.nl/",
                "https://store.apple.com",
                "https://store.apple.com/be-fr",
                "https://store.apple.com/be-nl",
                "https://store.apple.com/ca/browse/home/shop_mac/family/macbook_pro",
                "https://www.amazon.de/apple",
                "https://www.apple.com",
                "https://www.apple.com/au",
                "https://www.apple.com/itunes",
                "https://www.apple.com/itunes/andrewbird",
                "https://www.facebook.com/AppleInc",
                "https://www.iclg.com",
                "https://www.iphonelar.com",
                "https://www.macway.com",
                "https://www.microconseil.com/newipadantilles"
            ],
            "num_creatives": 212,
            "is_premium": false,
            "category_id": 5,
            "company_id": null,
            "last_modified": "2010-03-26 21:56:36"
        },
        "status": "OK",
        "count": 1,
        "start_element": null,
        "num_elements": null,
        "dbg_info": {
            ...
        }
    }
}
```






