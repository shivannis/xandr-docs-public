# Introduction to Mobile Advertising

<div class="body">

<div class="p">

<div id="ID-00000d4d__note_ox5_tqt_4wb" class="note tip">

<span class="tiptitle">Tip:</span> For an introduction to the main
concepts involved in online advertising, see
<a href="introduction-to-ad-serving.html" class="xref">Introduction to
Ad Serving</a>.

</div>

</div>

Since mobile devices have become one of the primary ways people access
the Internet, learning the basics of mobile buying is essential. The
documentation in this section is designed to provide you with an
understanding of how advertising works on mobile devices. If you're
interested in a more technical explanation,
<span class="ph">Xandr</span> also provides a public
<a href="mraid-and-mobile-video-tutorial.html" class="xref">MRAID and
Mobile Video Tutorial</a> intended for audiences who need to work with
our mobile offerings.

Mobile advertising is very similar to <a
href="online-advertising-and-ad-tech-glossary.html#ID-00000189__ID-0000039b"
class="xref">web display advertising</a>, with a few exceptions, which
we'll discuss below.

<div class="section">

## Types of Mobile Advertising

<div class="p">

There are two kinds of advertisements for mobile devices:

- **Mobile web ads** appear in mobile web browsers the same way they do
  in desktop web browsers. Frequently browser ads, like the <a
  href="online-advertising-and-ad-tech-glossary.html#ID-00000189__ID-000005bf"
  class="xref">publisher</a> websites that host them, are optimized
  especially for display on mobile devices. 
- **In-app ads** (sometimes called "mobile app install ads") appear
  inside mobile apps as the user uses the app.  You can measure in-app
  success by the usual metrics such as <a
  href="online-advertising-and-ad-tech-glossary.html#ID-00000189__ID-000002fb"
  class="xref">CPM</a> or <a
  href="online-advertising-and-ad-tech-glossary.html#ID-00000189__ID-000002e7"
  class="xref">CPA</a>, which measure cost per impression, view, or
  click. In-app success can also be measured by cost per install (CPI),
  sometimes also called "cost per download", a special type of
  acquisition unique to mobile devices. 

</div>

</div>

<div class="section">

## Mobile Identification and Targeting 

In mobile web advertising, users are typically targeted and success is
typically measured in the same way
as <a href="introduction-to-ad-serving.html" class="xref">web display
advertising</a>.  For in-app advertising, users are identified by their
mobile device IDs.  The device ID, as its name implies, identifies users
for all applications on the mobile device, unlike cookies, which are
specific to each website. Different operating systems use different
identifiers: IDFA (iOS), AAID (Android), and Windows Advertising ID
(Windows). These identifiers were created specifically to be used for
advertising and provide users the ability to opt out of identification
by resetting their identifiers.  Identifiers are also reset if the
operating system is reinstalled.

Note that the device ID cannot be linked to <a
href="online-advertising-and-ad-tech-glossary.html#ID-00000189__ID-0000055f"
class="xref">personally identifiable information (PII)</a>.

<div class="p">

In addition to the typical kinds of segment or browser targeting, mobile
devices can be targeted by:

- Device type
- Carrier
- Latitude and longitude
- Connection type
- Operating system

</div>

Latitude and longitude, in particular, allow for precisely targeted
advertising, such as advertisements from stores that are geographically
close to the device user.

</div>

<div class="section">

## Mobile Targeting Challenges

Currently, users cannot be reliably identified across multiple devices.
This affects targeting and <a
href="online-advertising-and-ad-tech-glossary.html#ID-00000189__ID-00000414"
class="xref">frequency capping</a>. For example, if you see an ad
multiple times from your Android phone and hit the frequency cap defined
by the campaign serving that ad, you shouldn't see that ad anymore. If
you switch to your iPad later in the evening for some bedtime reading,
you won't be identified as the same user by the campaign, and you may
see ads from that same campaign again. Frequency capping on mobile
devices works on a per-device basis; in other words, if you switch
devices, your frequency cap is reset.

As in web display advertising, it's difficult to identify users across
different browsers on the same device. If the user switches mobile
browsers, then frequency and recency will only apply on a per-browser
basis.

</div>

<div id="ID-00000d4d__section_mt4_pf4_4wb" class="section">

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/introduction-to-ad-serving.html"
  class="xref" target="_blank">Introduction to Ad Serving</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/ad-tags.html"
  class="xref" target="_blank">Ad Tags</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/creatives.html"
  class="xref" target="_blank">Creatives</a>
- <a
  href="https://docs.xandr.com/bundle/industry-reference/page/mraid-and-mobile-video-tutorial.html"
  class="xref" target="_blank">MRAID and Mobile Video Tutorial</a>

</div>

</div>

<div class="related-links">

<div class="linklist relinfo" lang="en-US">

**Related information**  

- <a href="introduction-to-ad-serving.html" class="link">Introduction to
  Ad Serving</a>
- <a href="ad-tags.html" class="link">Ad Tags</a>
- <a href="creatives.html" class="link">Creatives</a>
- <a href="mraid-and-mobile-video-tutorial.html" class="link">MRAID and
  Mobile Video Tutorial</a>

</div>

</div>
