---
Title : Native Assembly Object Placeholders
Description : You can add a variety of standard and custom data and image object
ms.date: 10/28/2023
placeholders to the HTML text box
within the Renderer tab for your
native assemblies.
---


# Native Assembly Object Placeholders



You can add a variety of standard and custom data and image object
placeholders to the HTML text box
within the Renderer tab for your
native assemblies.


Here's a list of available standard and custom data and image object
placeholders:




## Standard Data Object Placeholders

<table id="ID-00001673__table_sr2_pgx_llb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001673__table_sr2_pgx_llb__entry__1"
class="entry">Placeholder</th>
<th id="ID-00001673__table_sr2_pgx_llb__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%title%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Title that will appear when the native creative is
rendered.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%body%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Short description that will provide details about the native
creative.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%sponsoredBy%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Brand name that will be associated with the native
creative.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%cta%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Encourages the user to take the necessary action after
viewing the native creative (e.g. signing for the mailing
list).</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%clickUrl%]</td>
<td class="entry" headers="ID-00001673__table_sr2_pgx_llb__entry__2">URL
to the website that the user will be redirected to when they click the
native creative.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%displayUrl%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Public URL that will be visible to the user when the native
creative is rendered.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%clickFallbackUrl%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2">Backup URL if the
main click URL is not supported.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%price%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Price for product / app / in-app purchase. The appropriate
localized currency symbol should be included.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%salePrice%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2">Sale
price that can be used together with the price to indicate a discounted
price compared to a regular price. The appropriate localized currency
symbol should be included.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%rating%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Rating of the product being offered to the user. For example,
an app's rating in an app store from 0-5.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%likes%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Number of social ratings or "likes" for the product being
offered to the user.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%downloads%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Number downloads/installs of this product.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%phone%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Phone number that will be visible to the user when the native
creative is rendered. The phone number should be formatted according to
your locality. For example, your phone number would be formatted as such
if you are based in the United States: 800-555-5555.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%address%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Address that will be visible to the user when the native
creative is rendered.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__1">[%desc2%]</td>
<td class="entry"
headers="ID-00001673__table_sr2_pgx_llb__entry__2"><span
class="ph">Detailed version of the native creative's body
text.</td>
</tr>
</tbody>
</table>

Example HTML - Title \[%title%\]

``` pre
<p class='native-title'>[%title%]</p>
            <div class='native-body'>
            <a href='[%clickUrl%]' target='_blank'>Click Here</a>
            
            [%impressionTrackers%]
            [%javascriptTrackers%]
            [%clickTrackers%] 
```

A placeholder has been added (**`[%title%]`** on the first line). You
can add **`[%title%]`** to represent where you want to add the Native
view, which is located on the left side of the
Setup and
Renderer tabs. In the Native view, you
can replace **`[%title%]`** with the default "10 Breakfast Foods That
Everyone Needs In Their Diet" title or the title from the winning
creative.

Example HTML - Call-to-action \[%cta%\]

``` pre
<p class='native-title'>[%title%]</p>
            <div class='native-body'>
            <a href='[%clickUrl%]' target='_blank'>[%cta%]</a>
            
            [%impressionTrackers%]
            [%javascriptTrackers%]
            [%clickTrackers%] 
```

A placeholder has been added (**`[%cta%]`** on the third line). You can
add **`[%cta%]`** to represent where you want to add the Native view,
which is located on the left side of the
Setup and
Renderer tabs. In the Native view, you
can replace **`[%cta%]`** with **Click Here**.




## Standard Image Object Placeholders

All of the standard image object placeholders have a URL, width, and
height property, so please add the appropriate property after "image.".
For example, **`[%image.url%]`**, **`[%image.width%]`**, and
**`[%image.height%]`**.

<table id="ID-00001673__table_tr2_pgx_llb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001673__table_tr2_pgx_llb__entry__1"
class="entry">Placeholder</th>
<th id="ID-00001673__table_tr2_pgx_llb__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_tr2_pgx_llb__entry__1">[%image%]</td>
<td class="entry"
headers="ID-00001673__table_tr2_pgx_llb__entry__2"><span
class="ph">Primary image that will appear when the native creative is
rendered.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_tr2_pgx_llb__entry__1">[%icon%]</td>
<td class="entry"
headers="ID-00001673__table_tr2_pgx_llb__entry__2"><span
class="ph">Primary icon that will appear when the native creative is
rendered.</td>
</tr>
</tbody>
</table>

Example CSS - Image URL \[%image.url%\]

``` pre
.native-title {
            color: grey;
            }
            .native-body {
            background: url([%image.url%]);
            width: 300px;
            height:350px;
            } 
```




## Custom Data Object Placeholders

Please note that there are five placeholders for each of these custom
data object placeholders.

<table id="ID-00001673__table_ur2_pgx_llb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001673__table_ur2_pgx_llb__entry__1"
class="entry">Placeholder</th>
<th id="ID-00001673__table_ur2_pgx_llb__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_ur2_pgx_llb__entry__1">[%customTitle1%] -
[%customTitle5%]</td>
<td class="entry"
headers="ID-00001673__table_ur2_pgx_llb__entry__2"><span
class="ph">Additional titles that will appear when the native creative
is rendered.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_ur2_pgx_llb__entry__1">[%customBody1%] -
[%customBody5%]</td>
<td class="entry"
headers="ID-00001673__table_ur2_pgx_llb__entry__2"><span
class="ph">Additional body text that will appear when the native
creative is rendered.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_ur2_pgx_llb__entry__1">[%customCTAtext1%] -
[%customCTAtext5%]</td>
<td class="entry"
headers="ID-00001673__table_ur2_pgx_llb__entry__2"><span
class="ph">Additional calls to action that will encourage the user to
take the necessary action after viewing the native creative (e.g.,
signing for the mailing list).</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_ur2_pgx_llb__entry__1">[%customSocialUrl1%]
- [%customSocialUrl5%]</td>
<td class="entry"
headers="ID-00001673__table_ur2_pgx_llb__entry__2">URLs
that will take the user to the corresponding social media
platforms.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_ur2_pgx_llb__entry__1">[%customDisplayUrl1%]
- [%customDisplayUrl5%]</td>
<td class="entry"
headers="ID-00001673__table_ur2_pgx_llb__entry__2"><span
class="ph">Additional public URLs that may be visible and/or
automatically redirect the user to a web page that is connected to the
landing page's domain.</td>
</tr>
</tbody>
</table>




## Custom Image Object Placeholders

Please note that there are five placeholders for each of these custom
image object placeholders. All of the custom image object placeholders
have a URL, width, and height property, so please add the appropriate
property after "customImage#.". For example, **`[%customImage1.url%]`**,
**`[%customImage1.width%]`**, and **`[%customImage1.height%]`**.

<table id="ID-00001673__table_vr2_pgx_llb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001673__table_vr2_pgx_llb__entry__1"
class="entry">Placeholder</th>
<th id="ID-00001673__table_vr2_pgx_llb__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_vr2_pgx_llb__entry__1">[%customImage1%] -
[%customImage5%]</td>
<td class="entry"
headers="ID-00001673__table_vr2_pgx_llb__entry__2"><span
class="ph">Additional images that will appear when the native creative
is rendered.</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_vr2_pgx_llb__entry__1">[%customIcon1%] -
[%customIcon5%]</td>
<td class="entry"
headers="ID-00001673__table_vr2_pgx_llb__entry__2"><span
class="ph">Additional icons that will appear when the native creative is
rendered.</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_vr2_pgx_llb__entry__1">[%customSocialIcon1%]
- [%customSocialIcon5%]</td>
<td class="entry"
headers="ID-00001673__table_vr2_pgx_llb__entry__2"><span
class="ph">Corresponding social media icons that will appear when native
creative is rendered.</td>
</tr>
</tbody>
</table>




## Tracker Object Placeholders

<table id="ID-00001673__table_wr2_pgx_llb" class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00001673__table_wr2_pgx_llb__entry__1"
class="entry">Placeholder</th>
<th id="ID-00001673__table_wr2_pgx_llb__entry__2"
class="entry">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_wr2_pgx_llb__entry__1">[%impressionTrackers%]</td>
<td class="entry"
headers="ID-00001673__table_wr2_pgx_llb__entry__2">Adding this to the
HTML code will fire impression trackers when the creative is
rendered</td>
</tr>
<tr class="even row">
<td class="entry"
headers="ID-00001673__table_wr2_pgx_llb__entry__1">[%javascriptTrackers%]</td>
<td class="entry"
headers="ID-00001673__table_wr2_pgx_llb__entry__2">Adding this to the
HTML code will fire Javascript trackers when the creative is
rendered</td>
</tr>
<tr class="odd row">
<td class="entry"
headers="ID-00001673__table_wr2_pgx_llb__entry__1">[%clickTrackers%]</td>
<td class="entry"
headers="ID-00001673__table_wr2_pgx_llb__entry__2">Adding this to the
HTML code will make all &lt;a&gt; tags in the renderer fire click
trackers when clicked</td>
</tr>
</tbody>
</table>



<b>Note:</b> The trackers won't be fired in
the Native Preview. If you are looking to make every element of the
native assembly (e.g., title, image, and call-to-action button) a link
to the landing page, please add the following to your Javascript:

``` pre
const container = document.getElementById(targetId);
               container.addEventListener('click', () => {
               window.open(nativeObj.clickUrl, '_blank');
               });
```



Example HTML \[%click_trackers%\]

``` pre
<a href='[%clickUrl%]' target='_blank'>
            <p class='native-title'>[%title%]</p>
            <div class='native-body'>
            [%cta%]
            
            </a>
            [%impressionTrackers%]
            [%javascriptTrackers%]
            [%clickTrackers%] 
```




## Related Topics

- <a href="configuring-a-native-assembly.md" class="xref"
  title="Monetize Ad Server and third-party ad server publishers can configure native assemblies by selecting various creative asset specifications directly from the UI or creating custom HTML, CSS, and Javascript. You must associate all native assemblies to a placement in order for them to go live.">Configuring
  a Native Assembly</a>






