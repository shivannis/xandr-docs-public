---
Title : Create a Third-Party Advertiser Pixel for Your Creatives
Description : You can create third-party creative pixels at the advertiser level and
then apply these pixels to some or all display creatives under that
advertiser.
---


# Create a Third-Party Advertiser Pixel for Your Creatives



You can create third-party creative pixels at the advertiser level and
then apply these pixels to some or all display creatives under that
advertiser.



1.  Navigate to the
    Advertiser Details
    screen.
2.  Select
    3rd Party Pixels from the
    Associated Objects
    menu.
    

    The Third-party Pixels screen
    will be displayed.

    
3.  Click New to
    create a new third-party pixel.
    

    The Create New Third-Party
    Pixel dialog displays.

    
4.  Enter a name for your pixel.
5.  Click the All
    Advertiser Creatives button to apply the pixel to all
    creatives at the advertiser level, or click the
    Individual Creatives button to
    apply the pixel to individual creatives.
6.  Click the Serve on
    Secure Inventory toggle if you want the pixel to serve on
    secure inventory.
7.  Select the appropriate format from the
    Type menu and enter the necessary
    information in the corresponding text boxes.
    

    If you decided to serve your pixel on secure inventory, you will be
    prompted to provide a secure link as well as a standard link. For a
    list of the creative macros that you may want to append to your
    pixel, see <a href="creative-macros.md" class="xref"
    title="You can insert creative macros into your creative third-party tags, impression trackers, landing page URLs, and third-party pixels for reporting and optimization purposes.">Creative
    Macros</a>. For example, if you wanted to append the `CACHEBUSTER`
    macro to a URL format pixel, you would add the macro to the URL as
    follows in the image field:
    `http://www.myurl.com`**`?key=${CACHEBUSTER}`**

    
8.  Select whether you want the pixel to also serve
    on Google Ad Manager inventory by doing the following:
    1.  Click the
        AdX toggle.
        

        To render the pixel on Google Ad Manager inventory, it must be
        in full compliance with Google Ad Manager creative policies. For
        more information, see
        <a href="creative-standards.md" class="xref"
        title="Xandr has foundational policies that all creative and inventory content must follow. Creatives that violate these policies will be removed from the platform, and will be ineligible for both real-time bidding (RTB) and in-network buying. Repeated violation of these policies may result in strikes against offending members.">Creative
        Standards</a>.

        
    2.  Click the AdX
        requires vendor to be declared to specify that your
        Google Ad Manager-approved pixel vendor must be declared.
    3.  Search and select the necessary vendors
        using the search field.
        

        For more information, see
        <a href="https://support.google.com/3pascertification/table/3191570"
        class="xref" target="_blank">Google's list of external vendors that
        require declaration</a>.

        
9.  Click
    Save.
    

    Once you have saved your pixel, it will have a pending audit status
    and is generally approved within 24 hours of submission. This will
    not cause the creative to be re-audited. If the pixel's status is
    active, then it will attain an approved audit status and begin
    serving on any creatives that it has been attached to. If the pixel
    is subsequently found to be associated with malicious activity, any
    creatives that it has been attached to will be suspended.

    



Related Topics

- <a href="working-with-creatives.md" class="xref"
  title="You can traffic a wide range of creative types, from banners to increasingly pervasive rich media types, through the Xandr platform. Only secure content is supported.">Working
  with Creatives</a>
- <a href="creative-standards.md" class="xref"
  title="Xandr has foundational policies that all creative and inventory content must follow. Creatives that violate these policies will be removed from the platform, and will be ineligible for both real-time bidding (RTB) and in-network buying. Repeated violation of these policies may result in strikes against offending members.">Creative
  Standards</a>
- <a href="working-with-advertisers.md" class="xref">Working with
  Advertisers</a>






