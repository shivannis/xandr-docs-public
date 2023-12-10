---
Title : Language Service
Description : This read-only service shows you the list of language IDs that you can
ms.date: 10/28/2023
ms.custom: digital-platform-api
use in the <a
href="profile-service.md"
---


# Language Service



This read-only service shows you the list of language IDs that you can
use in the <a
href="profile-service.md"
class="xref" target="_blank">Profile Service</a> (to target browser
languages) or in the <a
href="ad-profile-service.md"
class="xref" target="_blank">Ad Profile Service</a> (to trust or ban
creative languages).



## REST API

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001875__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00001875__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00001875__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__2">https://api.<span
class="ph">appnexus.com/language</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001875__entry__3">View
all languages available for targeting</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__2">https://api.<span
class="ph">appnexus.com/language?search=SEARCH_TERM</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001875__entry__3">View
all languages with IDs, names, or codes containing certain
characters</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__2">https://api.<span
class="ph">appnexus.com/language?id=LANGUAGE_ID</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001875__entry__3">View
a specific language</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__2">https://api.<span
class="ph">appnexus.com/language?name=LANGUAGE_NAME</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001875__entry__3">View
a specific language</td>
</tr>
</tbody>
</table>





## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001875__entry__16"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00001875__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00001875__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__16"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001875__entry__18">The
code for the language. (2 letter ISO-639-1 codes as given in
<p><a href="https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes"
class="xref"
target="_blank">https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes</a>)</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__16"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__17">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001875__entry__18">The
ID of the language.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__16"><code
class="ph codeph">last_activity</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__17">timestamp</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001875__entry__18">The
date and time of the last update to the language entry.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00001875__entry__18">The
name of the language.</td>
</tr>
</tbody>
</table>

**Available Languages**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001875__entry__31" class="entry colsep-1 rowsep-1">ID</th>
<th id="ID-00001875__entry__32"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-00001875__entry__33"
class="entry colsep-1 rowsep-1">Code</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">0</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Unknown    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> NULL </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">1</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> English    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> EN   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Chinese    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> ZH   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">3</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Spanish    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> ES   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">4</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Japanese   </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> JA   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">5</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> French     </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> FR   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">6</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> German     </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> DE   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">7</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Arabic     </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> AR   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">8</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Portuguese </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> PT   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">9</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Russian    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> RU   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">10</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Korean     </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> KO   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">11</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Italian    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> IT   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">12</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Dutch      </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> NL   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">14</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Danish     </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> DA   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">15</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Swedish    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> SV   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">16</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Norwegian  </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> NB   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">17</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Polish     </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> PL   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">18</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Turkish    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> TR   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">19</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Finnish    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> FI   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">20</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Czech      </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> CS   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">21</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Slovak     </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> SK   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">22</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Romanian   </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> RM   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">23</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Bulgarian  </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> BG   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">24</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Slovene    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> SL   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">25</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Hungarian  </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> HU   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">26</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Ukranian   </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> UK   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">27</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Croatian   </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> HR   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">28</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Serbian    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> SR   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">29</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Bosnian    </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> BS   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">30</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Albanian   </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> SQ   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">31</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Macedonian </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> MK   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">32</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Vietnamese </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> VI   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">33</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Hindi      </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> HI   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">34</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Urdu       </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> UR   </td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">35</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Tamil      </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> TA   </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__31">36</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__32"> Thai       </td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00001875__entry__33"> TH   </td>
</tr>
</tbody>
</table>





## Examples

**View all languages**

``` pre
$ curl -b cookies -c cookies  https://api.appnexus.com/language'
{
  "response": {
    "status": "OK",
    "count": 36,
    "start_element": 0,
    "num_elements": 100,
    "languages": [
      {
        "id": 0,
        "name": "Unknown",
        "last_activity": "2010-12-17 15:19:49",
        "code": null
      },
      {
        "id": 1,
        "name": "English",
        "last_activity": "2013-04-01 19:12:00",
        "code": "EN"
      },
      {
        "id": 2,
        "name": "Chinese",
        "last_activity": "2013-04-01 19:12:00",
        "code": "ZH"
      },
      {
        "id": 3,
        "name": "Spanish",
        "last_activity": "2013-04-01 19:12:00",
        "code": "ES"
      },
      {
        "id": 4,
        "name": "Japanese",
        "last_activity": "2013-04-01 19:12:00",
        "code": "JA"
      },
      {
        "id": 5,
        "name": "French",
        "last_activity": "2013-04-01 19:12:00",
        "code": "FR"
      },
      {
        "id": 6,
        "name": "German",
        "last_activity": "2013-04-01 19:12:00",
        "code": "DE"
      },
      {
        "id": 7,
        "name": "Arabic",
        "last_activity": "2013-04-01 19:12:00",
        "code": "AR"
      },
      {
        "id": 8,
        "name": "Portuguese",
        "last_activity": "2013-04-01 19:12:00",
        "code": "PT"
      },
      {
        "id": 9,
        "name": "Russian",
        "last_activity": "2013-04-01 19:12:00",
        "code": "RU"
      },
      {
        "id": 10,
        "name": "Korean",
        "last_activity": "2013-04-01 19:12:00",
        "code": "KO"
      },
      {
        "id": 11,
        "name": "Italian",
        "last_activity": "2013-04-01 19:12:00",
        "code": "IT"
      },
      {
        "id": 12,
        "name": "Dutch",
        "last_activity": "2013-04-01 19:12:00",
        "code": "NL"
      },
      {
        "id": 14,
        "name": "Danish",
        "last_activity": "2013-04-01 19:12:00",
        "code": "DA"
      },
      {
        "id": 15,
        "name": "Swedish",
        "last_activity": "2013-04-01 19:12:00",
        "code": "SV"
      },
      {
        "id": 16,
        "name": "Norwegian",
        "last_activity": "2013-04-01 19:12:00",
        "code": "NB"
      },
      {
        "id": 17,
        "name": "Polish",
        "last_activity": "2012-07-23 19:14:56",
        "code": "PL"
      },
      {
        "id": 18,
        "name": "Turkish",
        "last_activity": "2014-01-21 17:08:22",
        "code": "TR"
      },
      {
        "id": 19,
        "name": "Finnish",
        "last_activity": "2014-01-21 17:08:58",
        "code": "FI"
      },
      {
        "id": 20,
        "name": "Czech",
        "last_activity": "2014-07-14 18:00:07",
        "code": "CS"
      },
      {
        "id": 21,
        "name": "Slovak",
        "last_activity": "2014-07-14 18:00:07",
        "code": "SK"
      },
      {
        "id": 22,
        "name": "Romanian",
        "last_activity": "2014-07-14 18:00:07",
        "code": "RM"
      },
      {
        "id": 23,
        "name": "Bulgarian",
        "last_activity": "2014-07-14 18:00:07",
        "code": "BG"
      },
      {
        "id": 24,
        "name": "Slovene",
        "last_activity": "2014-07-14 18:00:07",
        "code": "SL"
      },
      {
        "id": 25,
        "name": "Hungarian",
        "last_activity": "2014-07-14 18:00:07",
        "code": "HU"
      },
      {
        "id": 26,
        "name": "Ukranian",
        "last_activity": "2014-07-14 18:00:07",
        "code": "UK"
      },
      {
        "id": 27,
        "name": "Croatian",
        "last_activity": "2014-07-14 18:00:07",
        "code": "HR"
      },
      {
        "id": 28,
        "name": "Serbian",
        "last_activity": "2014-07-14 18:00:07",
        "code": "SR"
      },
      {
        "id": 29,
        "name": "Bosnian",
        "last_activity": "2014-07-14 18:00:07",
        "code": "BS"
      },
      {
        "id": 30,
        "name": "Albanian",
        "last_activity": "2014-07-14 18:00:07",
        "code": "SQ"
      },
      {
        "id": 31,
        "name": "Macedonian",
        "last_activity": "2014-07-14 18:00:07",
        "code": "MK"
      },
      {
        "id": 32,
        "name": "Vietnamese",
        "last_activity": "2014-07-14 18:00:07",
        "code": "VI"
      },
      {
        "id": 33,
        "name": "Hindi",
        "last_activity": "2014-07-14 18:00:07",
        "code": "HI"
      },
      {
        "id": 34,
        "name": "Urdu",
        "last_activity": "2014-07-14 18:00:07",
        "code": "UR"
      },
      {
        "id": 35,
        "name": "Tamil",
        "last_activity": "2014-07-14 18:00:07",
        "code": "TA"
      },
      {
        "id": 36,
        "name": "Thai",
        "last_activity": "2014-07-14 18:00:07",
        "code": "TH"
      }
    ]
  }
}
```

**View the language entry for Chinese**

``` pre
$ curl -b cookies -c cookies  https://api.appnexus.com/language?name=Chinese'
{
    "response": {
        "status": "OK",
        "languages": [
            {
                "id": 2,
                "name": "Chinese",
                "code": null,
                "last_activity": "2010-05-21 21:05:28"
            }
        ],
        "count": 1,
        "start_element": null,
        "num_elements": null
    }
}
```






