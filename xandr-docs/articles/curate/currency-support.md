---
Title : Currency Support
Description : Support for multiple currencies allows buyers and sellers to transact
with one another globally on the Xandr platform.
---


# Currency Support





Support for multiple currencies allows buyers and sellers to transact
with one another globally on the Xandr platform.
However, it is important for all parties to understand how spending and
payment in different currencies flows from buyers to sellers and
partners on the platform. This page provides an explanation of all
relevant concepts, processes and settings. In addition,
Xandr is expanding its support for non-USD
currencies (as part of a larger multi-year platform-wide localization
effort). As a result, this page will be updated periodically to explain
how these changes affect the currencies supported on the platform,
reporting and invoicing and what customization options you have. If you
have questions about currency support please contact your Account
Manager.





## Prerequisite Concepts

Ensure you understand these basics before proceeding (each of these
concepts is discussed in greater detail in dedicated sections below):

1.  **Base Currency:** Xandr' default currency
    is USD.
    - Although USD is the default currency,
      Xandr supports the **buying and selling
      ("transacting")** of impressions as well as **billing** in a
      number of different non-USD currencies.
    - Xandr performs all calculations in USD. To
      support non-USD use cases, we convert in and out of USD (as
      needed) using the latest exchange rates from our <a
      href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
      class="xref" target="_blank">API Currency Service</a>.
2.  **Supported Local Currencies and Exchange Rates:** Our <a
    href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
    class="xref" target="_blank">API Currency Service</a> updates
    exchange rates platform-wide on a daily basis based on the most
    current
    <a href="https://www.oanda.com/" class="xref" target="_blank">Oanda</a>
    rates.
3.  **Transaction and Billing Currency and Account Setup:**
    Xandr distinguishes between the currencies
    you transact in (currencies you select in the Digital Platform
    UI/API for buying/selling) and the currency you are billed in
    (currency in which you are invoiced or paid). Generally,
    Xandr bills clients for fees/charges based
    on the daily conversion rate logged at the time the relevant auction
    took place. However, in the following scenarios, we use the
    month-end rate to bill (for a full list, see
    <a href="currency-support.html#ID-00000773__ID-00000ab8"
    class="xref">When are media cost and related fees converted for use in
    billing?</a> below):
    - The transaction currency differs from the billing currency
    - We can't easily associate a fee back to an auction (e.g., Ad
      Serving Fees, Minimums, Log Level Data Fees, etc.)





## Base Currency (USD)

Xandr uses USD as the default currency (also
referred to as "base" or "primary" currency). However, we support
transacting in a wide range of currencies. When we need to compare
values across the platform, we use a common unit of measure; our base
currency of USD (which we convert into). This conversion practice is
used across the platform when evaluating bids, running auctions,
managing budgets or optimizing performance across the currencies we
support. However, none of these conversions will change the local
currency amount since we convert in and out of the local currency using
the same rate.





## Supported Currencies

Xandr supports the non-USD currencies listed
below.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000773__entry__1" class="entry">Currency</th>
<th id="ID-00000773__entry__2" class="entry">Transaction</th>
<th id="ID-00000773__entry__3" class="entry">Billing</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">United Arab Emirates
Dirham (AED)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Albanian Lek
(ALL)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Angolan Kwanza
(AOA)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Argentine Peso
(ARS)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Australian Dollar
(AUD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000773__entry__1">Bosnia-Herzegovinian Convertible Mark
(BAM)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Bangladeshi Taka
(BDT)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Brazilian Real
(BRL)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Bulgarian Lev
(BGN)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Canadian Dollar
(CAD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Swiss Franc (CHF)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Chilean Peso
(CLP)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Chinese Yuan
(CNY)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Colombian Peso
(COP)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Czech Koruna
(CZK)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Danish Krone
(DKK)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Algerian Dinar
(DZD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Egyptian Pound
(EGP)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Euro (EUR)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">British Pound
(GBP)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Guatemalan Quetzal
(GTQ)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Hong Kong Dollar
(HKD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Croatian Kuna
(HRK)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Hungarian Forint
(HUF)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Indonesian Rupiah
(IDR)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Israeli Shekel
(ILS)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Indian Rupee
(INR)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Jamaican Dollar
(JMD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Japanese Yen
(JPY)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Kenyan Shilling
(KES)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">South Korean Won
(KRW)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Kuwaiti Dinar
(KWD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Kazakhstani Tenge
(KZT)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Moroccan Dirham
(MAD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Macedonian Denar
(MKD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Mexican Peso
(MXN)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Malaysian Ringgit
(MYR)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Nigerian Naira
(NGN)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Norwegian Krone
(NOK)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">New Zealand Dollar
(NZD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Peruvian Nuevo Sol
(PEN)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Philippine Peso
(PHP)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Pakistani Rupee
(PKR)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Polish Złoty
(PLN)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Qatari Riyal
(QAR)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Romanian Leu
(RON)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Serbian Dinar
(RSD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Russian Ruble
(RUB)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Saudi Riyal (SAR)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Swedish Krona
(SEK)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Singapore Dollar
(SGD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Thai Baht (THB)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Tunisian Dinar
(TND)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Turkish Lira
(TRY)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Taiwan Dollar
(TWD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Ukrainian Hryvnia
(UAH)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">United States Dollar
(USD)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">Uruguayan Peso
(UYU)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__1">Vietnamese Dong
(VND)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3">X</td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__1">South African Rand
(ZAR)</td>
<td class="entry" headers="ID-00000773__entry__2">X</td>
<td class="entry" headers="ID-00000773__entry__3"></td>
</tr>
</tbody>
</table>

- **Transaction Currency** is the currency used to buy or sell inventory
  on the platform.
  - For Buyers, this is set at the Line Item level (or inherited from
    the network/member or Insertion Order level if not explicitly set at
    the Line Item).
  - For Sellers, this is set at the Publisher level.
  - Users can manually set a transaction currency on most objects (e.g.,
    Insertion Orders, Line Items).
  - A given member/network might have multiple transaction currencies if
    they set up objects in different currencies (i.e., Advertiser A =
    EUR, Advertiser B = USD, Publisher C = GBP, etc.)
- **Billing Currency** is the currency in which you are invoiced and/or
  paid by Xandr. Each member has only one
  billing currency (specified in your contract). If you would like to
  change your billing currency, contact your Account Manager.



Note: Not all currencies available for
**transacting** are available for **billing** (invoicing) and if you set
your transaction currency to anything other than your billing currency,
the amount you are billed at month-end may not exactly match the totaled
sum of all transaction amounts since transaction values are calculated
after each auction and billing is totaled monthly using the conversion
rate at the end of the month.







## Exchange Rates

Exchange Rates are sourced once daily from
<a href="https://www.oanda.com/" class="xref" target="_blank">Oanda</a>
at approximately 3:00 a.m. UTC. All Xandr
applications (bidder, budgeting, billing, etc.) use the <a
href="https://docs.xandr.com/bundle/xandr-api/page/currency-service.html"
class="xref" target="_blank">API Currency Service</a> (also available to
clients) to access the latest rates. This service provides centralized,
consistent and uniform exchange rates across the entire platform. The
API Currency Service is available to clients solely to reconcile amounts
paid or received by them resulting from their transactions through the
Xandr Platform and may not be used by clients
for any other purpose.



Note: Due to the distributed nature of
our systems, new rates will not be populated across all of our servers
simultaneously.







## Account Setup

Users can set the transaction currency for certain buy and sell side
objects (listed below under Currency Settings per Object) under their
member. The buy/sell side object currency settings control one or both
of the following:

1.  The default currency for any child objects created under the parent
    (e.g., Insertion Order determines the currency of its Line Items).
    The user can override the default currency set at the parent object.
2.  Transacting (buying or selling inventory). This is the currency of
    record for the object since it's what is actually logged for each
    auction.

See "Currency Settings per Object" below for more details on the objects
that have currency setting and what those settings affect.



Note: While you are able to set
currency on many objects, the only two which are actually used to buy
and sell are those set on the **Line Item** (for the buy side) and
**Publisher** (for the sell side). The currencies set on these two
objects are what is actually logged by and used for transacting on the
platform.



Currency Settings per Object

The table below explains when you can set currencies and the effects of
those settings.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000773__entry__184" class="entry">Currency Setting</th>
<th id="ID-00000773__entry__185" class="entry">Default/Settable?</th>
<th id="ID-00000773__entry__186" class="entry">Controls/Affects</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__184">BUY/SELL SIDE</td>
<td class="entry" headers="ID-00000773__entry__185"></td>
<td class="entry" headers="ID-00000773__entry__186"></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000773__entry__184"><strong>Member/Network</strong></td>
<td class="entry"
headers="ID-00000773__entry__185"><strong>Default:</strong> USD
<p><strong>Settable?:</strong> User can’t update (contact Account
Manager to change). Since there is no budget set at this level, your
account manager can always change the member currency at your
request.</p></td>
<td class="entry" headers="ID-00000773__entry__186">This setting
controls the default currency for child objects you create. This is only
used for buying or selling inventory (and reporting) if you don't set a
(different) currency on the Advertiser, Insertion Order or Line
Item.</td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__184"><strong>BUY
SIDE</strong></td>
<td class="entry" headers="ID-00000773__entry__185"></td>
<td class="entry" headers="ID-00000773__entry__186"></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000773__entry__184"><strong>Advertiser</strong></td>
<td class="entry"
headers="ID-00000773__entry__185"><strong>Default:</strong> USD
<p><strong>Settable?:</strong> Users can update. Since there is no
budget set at this level, you can always change the advertiser
currency.</p>
<p><strong>Where set:</strong></p>
<ul>
<li>API: via the <code class="ph codeph">default_currency</code> field
in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/advertiser-service.html"
class="xref" target="_blank">Advertiser Service</a></li>
<li>UI: via the Currency field (under
<strong>Default Settings</strong>) of the <span
class="ph uicontrol">Advertiser screen</li>
</ul></td>
<td class="entry" headers="ID-00000773__entry__186">This setting
controls the default currency for any new child objects you create
(i.e., you set it once on the Advertiser and all Insertion Orders and
Line Items inherit that currency).
<ul>
<li>Only used for buying or selling inventory if you don't set a
different currency on the Insertion Order or Line Item.</li>
<li>Only used in reporting if you don't set a different currency on the
Insertion Order or Line Item.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__184"><strong>Insertion
Order (IO)</strong></td>
<td class="entry"
headers="ID-00000773__entry__185"><strong>Default:</strong> Inherits the
currency setting of the IO's Advertiser.
<p><strong>Settable?:</strong> User can set up IOs with any of the
supported transaction currencies when creating a new IO.</p>

Note: Once an IO is saved, the currency
cannot be changed as any changes will have budget implications. This
includes both active and inactive IOs. If you need to change the
currency of an existing IO, clone it and set the second IO to your
desired currency. Then set the original IO to inactive. However, the new
IO will not have any of the cloned IO's buying history.

<p><strong>Where set:</strong></p>
<ul>
<li>API: via the <code class="ph codeph">currency</code> field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
class="xref" target="_blank">Insertion Order Service</a></li>
<li>UI: via the Currency field of the
Insertion Order screen</li>
</ul></td>
<td class="entry" headers="ID-00000773__entry__186">The IO's currency
setting is only used to manage its budget, not to actually buy
inventory.
<ul>
<li>Only used for buying or selling inventory if you don't set a
different currency on the line item.</li>
<li>This is not logged for reporting.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__184"><strong>Line
Item</strong></td>
<td class="entry"
headers="ID-00000773__entry__185"><strong>Default:</strong> Inherits the
currency setting of the Line Item's Advertiser.

Note: If you are using IOs, the Line
Item's currency must match that of its parent IO.

<p><strong>Settable?:</strong> Can be set to any supported transaction
currencies (unless you are using IOs). Once a Line Item is saved, the
currency cannot be changed as any changes will have budget implications.
This includes active and inactive Line Items.</p>
<p><strong>Where set:</strong></p>
<ul>
<li>API: via the <code class="ph codeph">currency</code> field in the <a
href="https://docs.xandr.com/bundle/xandr-api/page/line-item-service.html"
class="xref" target="_blank">Line Item Service</a></li>
<li>UI: via the Currency field of the
Line Item screen</li>
</ul></td>
<td class="entry" headers="ID-00000773__entry__186"><ul>
<li><strong>This is the Transaction Currency if you are buying
inventory</strong></li>
<li>This currency and its USD exchange rate at the time of the auction
are logged when the auction occurs.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00000773__entry__184"><strong>Campaign</strong></td>
<td class="entry"
headers="ID-00000773__entry__185"><strong>Default:</strong> Inherits the
value of the Line Item level currency setting.
<p><strong>Settable?:</strong> User can't update.</p></td>
<td class="entry" headers="ID-00000773__entry__186"></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__184"><strong>SELL
SIDE</strong></td>
<td class="entry" headers="ID-00000773__entry__185"></td>
<td class="entry" headers="ID-00000773__entry__186"></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__184"><strong>Placement
Groups</strong></td>
<td class="entry"
headers="ID-00000773__entry__185"><strong>Default:</strong> Inherits the
value from the Network or Publisher setting.
<p><strong>Settable?:</strong> User can't update the currency for
Placement Groups (refer to the Publisher to view the currency).</p></td>
<td class="entry" headers="ID-00000773__entry__186"></td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00000773__entry__184"><strong>Placements</strong></td>
<td class="entry"
headers="ID-00000773__entry__185"><strong>Default:</strong> Inherits the
value from the Network or Publisher setting.
<p><strong>Settable?:</strong> User can't update the currency for
placements (refer to the Publisher to view the currency).</p></td>
<td class="entry" headers="ID-00000773__entry__186"></td>
</tr>
</tbody>
</table>





## Start Transacting using Multiple Currencies

Once you've set the currency for your member and any objects (e.g.,
Insertion Orders, Line Items, Campaigns) for which you want to have a
different currency, you can start buying and selling inventory.

Buying

1.  Set your budget(s) at the Insertion Order and Line Item levels (in
    your Transaction Currency).
2.  Once your Line Items and Campaigns have been set to active and are
    within their flight dates/billing periods, the system will place
    bids in the currency you selected until your budget has been spent.

Selling

1.  When you set a Publisher to active and begin selling, buyers will
    begin submitting their bids for that Publisher's inventory. Although
    these bids may be submitted in multiple currencies (depending on
    each buyer's settings), Xandr will convert
    all bids received to USD in order to evaluate the auction using a
    single currency.
2.  To enforce any Publisher floors, Xandr
    converts the local currency floor price to USD, then compares the
    floor to the net bids (already converted to USD) to eliminate
    unwanted bids.
3.  The auction is run and all results are logged in USD. In addition,
    Xandr logs the Transaction Currency
    (Publisher currency) and the applicable exchange rate at the time of
    auction.

Conversions made during the auction

We convert all non-USD bids (e.g., if Line Item has been set to a
currency other than USD) into USD (Base Currency) so we can compare bids
in the same unit of measurement. All these converted bids are sent
through our auction logic and the winning bid is priced appropriately in
USD. Finally, after the auction is complete, we log all results in USD,
along with your Transaction Currency and the applicable exchange rate
that was used to initially convert the bid into USD.

When viewing your auction activity via reporting or log level data
feeds, you have the option to view monetary fields in either USD or the
Transaction Currency (labeled Buying Currency in reports). To display
reports in the Transaction Currency(ies), we convert the USD values to
the Transaction Currency using the rates logged for each auction. This
provides you with the most accurate local currency values which you can
then use for forecasting and billing reconciliation.





## Reporting and Analytics

Once an auction has been completed, you can review the details related
to it in your Transaction Currency using reporting, log level data or
within specific locations in the UI (e.g., Quick Stats, Grids, etc.).

Reports

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000773__entry__217" class="entry">Report Name</th>
<th id="ID-00000773__entry__218" class="entry">What it contains</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__217"><strong>Buying
Billing Report</strong></td>
<td class="entry" headers="ID-00000773__entry__218"><ul>
<li>Monetary fields are displayed in local currency by default.</li>
<li>"Buying Currency" is a default dimension. All monetary fields are
displayed in the Transaction Currency (Line Item currency) logged at
auction time.</li>
<li>Deselecting "Buying Currency" as a dimension will display all
monetary fields in USD.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__217"><strong>Selling
Billing Report</strong></td>
<td class="entry" headers="ID-00000773__entry__218"><ul>
<li>Monetary fields are displayed in local currency by default.</li>
<li>"Selling Currency" is a default dimension. All monetary fields are
displayed in the Transaction Currency (Publisher currency) logged at
auction time.</li>
<li>Deselecting "Selling Currency" as a dimension will display all
monetary fields in USD.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__217"><strong>Network
Analytics Report</strong></td>
<td class="entry" headers="ID-00000773__entry__218"><ul>
<li>Monetary fields are displayed in USD by default.</li>
<li>Selecting "Buying Currency" as a dimension will display all monetary
fields in the Transaction Currency (Line Item currency) logged at
auction time.</li>
<li>Selecting "Selling Currency" as a dimension will display all
monetary fields in the Transaction Currency (Publisher currency) logged
at auction time.</li>
</ul></td>
</tr>
</tbody>
</table>

UI/Analytics

Line Item and Campaign revenue metrics can be displayed in Transaction
Currency, however all other grids and monetary metrics are displayed in
USD only. Be sure to note which currency your data is being displayed in
and if it's not in your Transaction Currency, use the reports (listed
above) to view auction details in the your Transaction Currency.





## When Media Cost and Related Fees are Converted for use in Billing

The conversion of media cost and fees to the billing currency will be
based on either daily conversion rates or a month-end conversion rate.
To determine which will be used and which fees will be affected, refer
to the table below.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000773__entry__225" class="entry">Daily conversions
(depends)</th>
<th id="ID-00000773__entry__226" class="entry">Month-end conversion
(depends)</th>
<th id="ID-00000773__entry__227" class="entry">Month-end conversion
(always)</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" headers="ID-00000773__entry__225"><strong>When
Used?</strong> If the Transaction Currency (currency logged at auction
time) <em>is the same as</em> the Billing Currency.
<p><strong>How Applied?</strong> When these criteria are met, we convert
from USD to the Billing Currency using the rates logged for each
auction. This provides our clients with the most accurate local currency
billing and reconciles with our reporting and data feeds which support
local currency.</p></td>
<td class="entry" headers="ID-00000773__entry__226"><strong>When
Used?</strong> If the Transaction Currency (currency logged at auction
time) <em>is different from</em> the Billing Currency.
<p><strong>How Applied?</strong> We calculate the fee in USD and convert
from USD to the desired Billing Currency using the month end rate. You
can access this rate by asking our API Currency Service for the rate on
the last day of a given month.</p></td>
<td class="entry" headers="ID-00000773__entry__227"><strong>When
Used?</strong> Always (only for the fees listed in this column)
<p><strong>How Applied?</strong> We calculate the fee in USD and convert
from USD to the desired billing currency using the month end rate. You
can access this rate by asking our API Currency Service for the rate on
the last day of a given month.</p></td>
</tr>
<tr class="even row">
<td class="entry" headers="ID-00000773__entry__225"><strong>Which
Fees/charges?</strong>
<ul>
<li>Buy side costs and charges
<ul>
<li>Media Cost</li>
<li>BASC Deductions</li>
<li>BASC Fees</li>
<li>Direct Clear Fees</li>
<li>Creative Overage Fees</li>
<li>Data Costs</li>
<li>Sell side revenue and charges
<ul>
<li>Seller Revenue</li>
<li>SASC Deduction</li>
<li>SASC Fee</li>
</ul></li>
<li>Managed Ad Serving Fee</li>
<li>Buyer Serving Fee</li>
<li>Seller Serving Fee</li>
<li>Imp Tracker Fee</li>
<li>Click Tracker Fee</li>
</ul></li>
</ul></td>
<td class="entry" headers="ID-00000773__entry__226"><strong>Which
Fees/charges?</strong><br />
&#10;<ul>
<li>Buy side costs and charges
<ul>
<li>Media Cost
<ul>
<li>BASC Deductions</li>
<li>BASC Fees</li>
<li>Direct Clear Fees</li>
<li>Creative Overage Fees</li>
<li>Data Costs</li>
<li>Sell side revenue and charges
<ul>
<li>Seller Revenue</li>
<li>SASC Deduction</li>
<li>SASC Fee</li>
</ul></li>
</ul></li>
<li>Managed Ad Serving Fee</li>
<li>Buyer Serving Fee</li>
<li>Seller Serving Fee</li>
<li>Imp Tracker Fee</li>
<li>Click Tracker Fee</li>
</ul></li>
</ul></td>
<td class="entry" headers="ID-00000773__entry__227"><strong>Which
Fees/charges?</strong>
<ul>
<li>Creative Audit Fee</li>
<li>Priority Creative Audit Fee</li>
<li>Log Level Data Fee</li>
<li>Seller Revshare Min</li>
<li>Other Mins</li>
<li>Onboarding Fee</li>
<li>Xandr Service Fee</li>
<li>Other Flat Fees</li>
<li>Other CPM Fees</li>
</ul></td>
</tr>
</tbody>
</table>






