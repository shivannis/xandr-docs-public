---
Title : App Targeting
Description : Note: This form of targeting is only
available to Standard Line Items. For an overview of which targeting
---


# App Targeting





Note: This form of targeting is only
available to Standard Line Items. For an overview of which targeting
options are available to Standard versus Augmented Line items, see
<a href="buy-side-targeting.html" class="xref">Buy-Side Targeting</a>.



When your campaign is set to serve on mobile app inventory (see
<a href="supply-type-targeting.html"
class="xref">supply-type-targeting.html</a>), you can narrow your
targeting to include or exclude predefined app lists or specific apps.



Note: App targeting applies only to
mobile app impressions, and these settings will not be considered for
web and mobile web impressions. To not serve on web and mobile web
impressions, switch the **Web Placements** and **Mobile Web Placements**
toggle **OFF**. See <a href="supply-type-targeting.html"
class="xref">supply-type-targeting.html</a> for more information.



Target predefined app lists

1.  In the Targeting section, click
    Edit next to **Inventory**.
2.  On the App Lists tab, include or
    exclude relevant lists. Note that it is not possible to include some
    app lists and exclude others; all targeted app lists must be either
    included or excluded. .
    

    Note: There is an OR relationship,
    not an AND relationship, between included app lists and included
    individual apps.

    
3.  Click Add.

Target specific mobile apps

1.  In the Targeting section, click
    Edit next to **Inventory**.
2.  On the Specific Apps tab, target
    up to 25 specific app IDs as follows:
    1.  Enter the app IDs in list separated by lines or commas.
    2.  Click Add Apps.
    3.  Choose whether to Include or
        Exclude the app IDs. Note that
        it is not possible to include some apps and exclude others; all
        targeted apps must be either included or excluded.
        

        Note: There is an OR
        relationship, not an AND relationship, between included domain
        lists and included individual domains.

        
3.  Click Add.

How to find app IDs

To find the ID for an Android or IOS app, locate the app's detail
webpage by searching for the app in the relevant online store (e.g.,
iTunes or Google Play).

iTunes Apps

To find the ID for an IOS app, locate the app's detail webpage by
searching for the app in the iTunes store. Then, locate the series of
numbers after `/id` in the URL. For example, Lyft's iTunes app detail
page is <a
href="https://itunes.apple.com/us/app/lyft-taxi-app-alternative/id529379082?mt=8"
class="xref"
target="_blank">https://itunes.apple.com/us/app/lyft-taxi-app-alternative/id529379082?mt=8</a>;
therefore, its app id is `529379082`.

Google Play Apps

To find the ID for an Android app, locate the app's detail webpage by
searching for the app in Google Play. Then, locate the text after `/id`
in the URL. For example, Lyft's Google Play app detail page is
<a href="https://play.google.com/store/apps/details?id=me.lyft.android"
class="xref"
target="_blank">https://play.google.com/store/apps/details?id=me.lyft.android</a>;
therefore, its app id is `me.lyft.android`.




