---
Title : Currency Service
Description : <b>Warning:</b> The API Currency Service is
ms.date : 10/28/2023
available to clients solely to reconcile amounts paid or received by
them resulting from their transactions through the
Xandr Platform and may not be used by clients
for any other purpose.
---


# Currency Service





<b>Warning:</b> The API Currency Service is
available to clients solely to reconcile amounts paid or received by
them resulting from their transactions through the
Xandr Platform and may not be used by clients
for any other purpose.



This is a read-only service that shows you the list of currencies that
you can set a line-item or insertion-order to use. 

For buy side Open RTB for bidders, you can send currencies other than
USD in the outgoing bid request to bidders and accept other currencies
in the response. In order for a bidder to change currency of their bid,
they must send the "cur" field. If the "cur" field is not specified, it
will be defaulted to USD. A bidder can respond with any currency,
regardless of what value is set in the default currency. They just need
to indicate the currency in the "cur" field and no additional enablement
is required. 

For sell side Open RTB, by default USD is used as currency where the
"cur" field is ignored. If the seller member has a member entitlement
for seller_bid_currency explicitly set up, the "cur" field in bid
requests is respected.



## REST API 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004c5c__entry__1" class="entry colsep-1 rowsep-1">HTTP
Method</th>
<th id="ID-00004c5c__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-00004c5c__entry__3"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__2"><a
href="https://api.adnxs.com/currency" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/currency</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__3">View
all available currencies.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__2"><a
href="https://api.adnxs.com/currency?code=CURRENCY_CODE" class="xref"
target="_blank">https://api.<span
class="ph">adnxs.com/currency?code=CURRENCY_CODE</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__3">View
a specific currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__2"><a
href="https://api.adnxs.com/currency?code=CURRENCY_CODE&amp;show_rate=true"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/currency?code=CURRENCY_CODE&amp;show_rate=true</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__3">View
a currency's exchange rate for today.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__2"><a
href="https://api.adnxs.com/currency?show_rate=true&amp;code=CURRENCY_CODE&amp;ymd=2020-03-01"
class="xref" target="_blank">https://api.<span
class="ph">adnxs.com/currency?show_rate=true&amp;code=CURRENCY_CODE&amp;ymd=2020-03-01</a></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__3">View
a currency's exchange rate for a day in the past.</td>
</tr>
</tbody>
</table>



<b>Tip:</b> Exchange rates are sourced **once
daily** from
<a href="https://www.oanda.com/" class="xref" target="_blank">Oanda</a>
at approximately **3:00 a.m. UTC**.







## JSON Fields

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00004c5c__entry__16"
class="entry colsep-1 rowsep-1">Fields</th>
<th id="ID-00004c5c__entry__17"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00004c5c__entry__18"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__16"><code
class="ph codeph">as_of</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__18">The
date and time that <a href="https://www.oanda.com/fx-for-business/"
class="xref" target="_blank">Oanda</a> last updated the exchange rate in
UTC. We pull the rates from Oanda every day at 3:00 a.m. UTC. This is
returned only when you pass <code
class="ph codeph">show_rate=true</code> in the query string.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__16"><code
class="ph codeph">code</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__18">The
code for the currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__16"><code
class="ph codeph">description</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__18">A
description of the currency.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__16"><code
class="ph codeph">last_modified</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__18">The
date and time when the currency was last modified. (See Below
<strong>Note</strong>)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__16"><code
class="ph codeph">is_exposed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__17">boolean</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__18">If
true, the currency is exposed.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__16"><code
class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__18">The
full name of the currency.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__16"><code
class="ph codeph">position</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__17">enum</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__18">Whether the currency symbol appears
before or after the amount. Possible values: "before" or "after".</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__16"><code
class="ph codeph">rate_per_usd</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__17">double</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__18">The
exchange rate. This is returned only when you pass <code
class="ph codeph">show_rate=true</code> in the query string.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__16"><code
class="ph codeph">symbol</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00004c5c__entry__17">string</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00004c5c__entry__18">The
symbol for the currency, e.g. "$" for USD, "€" for Euro</td>
</tr>
</tbody>
</table>



<b>Note:</b> To show conversion rates, pass
`show_rate=true` in the URL. You can also retrieve a past day's rate by
passing in `ymd=YYYYMMDD` via the URL.





<b>Warning:</b> \* When querying the currency
API (eg: `rate_per_usd`), the service is currently returning all the
correct values, with the exception for `last_modified`. The actual rates
are accurate, and the API is returning updated exchange rates.
Currently, use the `as_of` column instead of `last_modified` to know the
version of the exchange rate being returned.







## Examples

**View all available currencies**

``` pre
curl -b cookies -c cookies 'https://api.adnxs.com/currency'
{
    "response": {
        "status": "OK",
        "currencies": [
            {
                "code": "ARS",
                "symbol": "₱",
                "name": "Argentine Peso (ARS)",
                "description": null,
                "position": "before",
                "last_modified": "2010-08-16 23:07:23",
                "is_exposed": true
            },
            {
                "code": "AUD",
                "symbol": "AUD$",
                "name": "Australian Dollar (AUD)",
                "description": null,
                "position": "before",
                "last_modified": "2010-08-24 19:29:04",
                "is_exposed": true
            },
            {
                "code": "BRL",
                "symbol": "R$",
                "name": "Brazilian Real (BRL)",
                "description": null,
                "position": "before",
                "last_modified": "2010-08-16 23:07:23",
                "is_exposed": true
            }
                        ...
        ],
        "count": 17,
        "start_element": null,
        "num_elements": null
    }
}
```

**View the EUR exchange rate on March 1, 2020**

``` pre
$ curl -b cookies -c cookies  'https://api.adnxs.com/currency?show_rate=true&code=EUR&ymd=2020-03-01'
{
    "response": {
        "status": "OK",
        "currency": {
            "code": "EUR",
            "symbol": "€",
            "name": "Euro (EUR)",
            "description": null,
            "position": "before",
            "last_modified": "2020-02-16 23:07:23",
            "rate_per_usd": 0.7506,
            "as_of": "2020-03-01 11:24:00",
            "is_exposed": true
        },
        "count": 1,
        "start_element": null,
        "num_elements": null
    }
}
```






