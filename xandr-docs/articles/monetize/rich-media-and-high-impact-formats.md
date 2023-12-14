---
Title : Rich Media and High Impact Formats
Description : At times, Xandr clients want to transact larger
ms.date: 10/28/2023
ad formats in addition to standard
<a href="http://www.iab.net/guidelines/508676/508767/displayguidelines"
---


# Rich Media and High Impact Formats



At times, Xandr clients want to transact larger
ad formats in addition to standard
<a href="http://www.iab.net/guidelines/508676/508767/displayguidelines"
class="xref" target="_blank">IAB ad formats</a>. These are usually sold
at higher CPM rates and have higher CTRs. This article gives an overview
of some basic Rich Media formats that you can transact on
Xandr and also offers further information on app
providers that specialize in Rich Media and High Impact formats, some of
which are also known as "rising stars".

Different Formats

Billboard / Masthead / Bellyband

If you plan to sell billboard placements (typical size combinations
include 800x250, 970x250 or 900x250), it is important to consider buyer
demand on these sizes, which can be limited in some geographical areas.
To optimize your fill-rate, we recommend offering multiple sizes on the
same placement. This can be done by using `promo_sizes`, an additional
parameter in the URL of a placement call which can be associated with
size combinations as values, for example `promo_sizes=900x250`.

One challenge arises when the content on the website needs to be
adjusted, for example when no billboard placement is resold by buyers.
The easiest solution is to have managed campaigns serve on these
placements in order to fill the space or serve a house ad. However, if
you want to monetize the placement by offering a smaller size, such as a
728x90 placement, the space above the page needs to be reduced from
800x250 to avoid a visual gap. To do this, you can serve a default that
contains a few lines of JavaScript in order to reduce the size of the
placement or a default placement that only contains the smaller size.

![Billboard](media/billboard-masthead-bellyband.png)


Halfpage Ad / Large Skyscraper

The Halfpage ad, typically 300x600 pixels, can be implemented in a
similar fashion as described above. Depending on the setup of the
website, the size of the placement may not need to be adjusted in order
to improve visual appearance of the website.

![halfpage](halfpage-skyscraper.png)


Who Can Buy Rich Media Available on promo_sizes?

All buyers can buy `promo_sizes`, but the highest price determines which
size wins the auction and is being served. Please confirm whether
external DSPs can listen to `promo_sizes` before expecting their demand.

Related Topic

- <a href="using-promo-sizes.md" class="xref">Using Promo Sizes</a>




