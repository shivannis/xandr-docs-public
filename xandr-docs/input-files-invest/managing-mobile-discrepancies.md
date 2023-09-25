---
Title : Managing Mobile Discrepancies
Description : There are a few factors that can play a role in causing more
discrepancies on mobile devices than in display advertising:
- Rapid user navigation away from loading ads (also known as "drop
offs"), which could be more common on mobile devices due to
touch-screen interfaces, swiping
- Varying degrees of support for rich media creatives by different
combinations of mobile ad SDKs, operating systems, and devices
- Limited connectivity and bandwidth constraints that can affect how
rich media creatives are loaded by apps, and how conversions are
attributed
How We Count Mobile Impressions
For mobile impressions our ad server will wait longer to count an
impression than it would for a standard display impression. This applies
---


# Managing Mobile Discrepancies



There are a few factors that can play a role in causing more
discrepancies on mobile devices than in display advertising:

- Rapid user navigation away from loading ads (also known as "drop
  offs"), which could be more common on mobile devices due to
  touch-screen interfaces, swiping
- Varying degrees of support for rich media creatives by different
  combinations of mobile ad SDKs, operating systems, and devices
- Limited connectivity and bandwidth constraints that can affect how
  rich media creatives are loaded by apps, and how conversions are
  attributed

How We Count Mobile Impressions

For mobile impressions our ad server will wait longer to count an
impression than it would for a standard display impression. This applies
to all mobile creatives across all inventory types. This means that
mobile apps using advertising SDKs such as the <a
href="mobile-sdk/xandr-mobile-sdks.md"
class="xref" target="_blank">Mobile SDKs</a> can pre-fetch rich media
creatives before they need to be shown to the user. This pre-fetching by
the SDK is performed due to the connection bandwidth and battery
constraints that mobile devices operate under.

For example, a mobile game developer may wish to show advertisements
between stages of a game app. The creative may be fetched from the ad
server several minutes before actually being shown to a user when they
complete a game level. Because our ad server waits several minutes to
count the impression, the user finishes the game, views the creative,
and Xandr then logs the impression as expected,
thus avoiding any discrepancy issues.

Related Topics

- <a href="welcome-to-mobile.md" class="xref">Welcome to Mobile</a>
- <a href="mobile-buying-faq.md" class="xref">Mobile Buying FAQ</a>




