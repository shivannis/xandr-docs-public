---
Title : Set Up a Combined Segment and Conversion Pixel
Description : Do you have an advertiser that only accepts one conversion event per
user or only one conversion event per user every X minutes/hours/days?
If so, you should be using segment targeting to exclude converters and
increase ROI. You can create a combined Segment and Conversion pixel, so
---


# Set Up a Combined Segment and Conversion Pixel



Do you have an advertiser that only accepts one conversion event per
user or only one conversion event per user every X minutes/hours/days?
If so, you should be using segment targeting to exclude converters and
increase ROI. You can create a combined Segment and Conversion pixel, so
you only have to give your advertiser a single pixel to put on their
conversion page.

Scenario

Let's say you want to run a remarketing campaign where I only show
impressions to users that are in my "Auto Intenders" segment. In this
use case, your advertiser only allows one conversion per user.

Solution

There are two possible approaches. Once a user has converted, you can
either:

1.  Add them to a "Converters" segment and exclude that segment in your
    targeting.
2.  Remove them from the "Auto Intenders" segment that you're targeting.

Generally, it is recommended that you use the first approach for a
couple of reasons:

1.  If you're constantly adding new users to your "Auto Intenders"
    segment, you could end up re-adding a converted user.
2.  If multiple advertisers are using your "Auto Intenders" segment, you
    end up removing users that didn't convert for every advertiser and
    delete valuable data.

Setup

For this scenario, you need to create the following:

- Auto Intenders Segment Pixel
- Converters Segment Pixel with no expiration
  - If your advertiser allowed conversions every X minutes/hours/days,
    you would simply set that as my expiration window on your Converters
    segment pixel
  - Conversion Pixel

When you
<a href="export-conversion-pixels.html" class="xref">export conversion
pixels</a>, you can use the Advanced
Options section to create a combined Segment and Conversion
Pixel. The pixel tag that Microsoft Monetize
generates looks like the following:

<img
src="../images/set-up-a-combined-segment-and-conversion-pixel/combined-pixel.jpg"
class="image" />

The above pixel tag will record conversion events as well as add the
converting user to segment ID 45962.

The final step is to set <a href="segment-targeting.html" class="xref"
title="You can target users within segments by using Boolean expressions. Users get added to segments after they&#39;ve viewed or clicked a particular creative.">segment
targeting</a> in your line item or campaign so
that the "Auto Intenders" segment is included and the "Converters"
segments is excluded.

Related Topics

- <a href="export-conversion-pixels.html" class="xref">Export Conversion
  Pixels</a>
- <a href="conversion-pixels-advanced.html" class="xref">Conversion Pixels
  Advanced</a>




