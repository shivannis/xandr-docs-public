---
Title : Set Up Cross-Device Attribution
Description : To attribute conversions across a multi-device consumer journey, you
ms.date: 10/28/2023
need to ensure your line item is correctly set up, including conversion
pixels and segment targeting.
---


# Set Up Cross-Device Attribution



To attribute conversions across a multi-device consumer journey, you
need to ensure your line item is correctly set up, including conversion
pixels and segment targeting.



Set up a conversion pixel to track
<a href="conversion-attribution.md" class="xref">Conversion
Attribution</a>.





In order to track conversions across devices and view associated
metrics, please set the Augmented Line Item in the following way:





1.  Have Cross
    Device enabled in Basic
    Settings.
2.  Implement first/third party audience segment
    targeting in Audience
    Segments. (Recommended for a CTV campaign. Optional for other
    campaigns).
3.  In the
    Optimization section, select
    the pixels you want to track conversions against using the
    Conversion Tracking option.
4.  You can then run the **Analytics Report**
    and/or the **Device Analytics** report to get the number of
    conversions/details on the conversion device. (See
    <a href="cross-device-reporting.md" class="xref"
    title="Reporting on cross-device targeting and measurement is available in the NetworkAnalytics report, the Device Analytics report, and the Data Usage report, as well as on the Analytics tab for the augmented line item.">Cross-Device
    Reporting</a>). The cross-device related metrics in these reports
    are as follows:
    

    - **Advertiser Analytics** - The report has two metrics:
      - Post View Conversions Cross Device
      - Post Click Conversions Cross Device
    - **Device Analytics** - The report also has two metrics:
      - Conversion Device Make
      - Conversion Device Type

    
5.  **Recommended**: Set the limits in the
    Frequency Capping section to
    ensure that, now that consumers can see your ads on multiple
    devices, they do not see more impressions than you intend.





Related Topics

- <a href="create-an-augmented-line-item-ali.md" class="xref"
  title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">Create
  an Augmented Line Item</a>
- <a href="working-with-conversion-pixels.md" class="xref">Working with
  Conversion Pixels</a>
- <a href="segment-targeting.md" class="xref"
  title="You can target users within segments by using Boolean expressions. Users get added to segments after they&#39;ve viewed or clicked a particular creative.">Segment
  Targeting</a>
- <a href="frequency-and-recency-caps.md" class="xref"
  title="From the Audience &amp; Location Targeting section, you can apply frequency and recency caps to your line item to prevent overexposure by limiting how many (frequency) and how often (recency) creatives are shown to a user. You can use the Creative Frequency and Recency Report to view how often and how frequently users are viewing a specific advertiser&#39;s creatives.">Frequency
  and Recency Caps</a>






