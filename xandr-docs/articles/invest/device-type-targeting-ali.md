---
Title : Device Type Targeting
Description : To access device type targeting options, expand the
Targeting section of the line item
setup. By default, your line items will target the following physical
---


# Device Type Targeting



To access device type targeting options, expand the
Targeting section of the line item
setup. By default, your line items will target the following physical
device types, which correspond to `device_type_targets` in the <a
href="xandr-api/profile-service.md#ProfileService-DeviceTypeTargets"
class="xref" target="_blank">Profile Object</a> associated to the line
item, as well as to the Device Type dimension in <a
href="device-analytics-report.md"
class="xref" target="_blank">Device Analytics Reporting</a>.

- **Desktops**
  - corresponds to `pc` in the profile api service
  - corresponds to `desktops and laptops` in device analytics reporting
- **Tablets**
  - corresponds to `tablet` in the profile api service
  - corresponds to `tablets` in device analytics reporting
- **Mobile**
  - corresponds to `phone` in the profile api service
  - corresponds to `mobile phones` in device analytics reporting
- **CTV**
  - corresponds to `tv/gameconsole/stb` in the profile api service
  - corresponds to `tv/gameconsole/set top box` in device analytics
    reporting
- **Connected Audio** - only available if ad type is **Audio**
  - corresponds to `mediaplayer` in the profile api service
  - corresponds to `media players` in device analytics reporting

  see
  <a href="create-an-augmented-line-item-ali.md" class="xref"
  title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">Create
  an Augmented Line Item</a> to restrict the device types you are
  targeting, uncheck any device types you wish to exclude.
 

  <b>Note:</b>
  - **Connected Audio** is only available in Invest.
  - When targeting devices models
    Targeting
    \> System \>
    Device Model with
    Make = **Apple**, you should
    include the following device models to avoid under-delivery. For
    Example: **iPad (300)** and **iPhone (301)**.

  

  

Related Topic

- <a href="buy-side-targeting.md" class="xref">Buy-Side Targeting</a>
- <a href="create-an-insertion-order.md" class="xref">Create an
  Insertion Order</a>
- <a href="augmented-line-items-ali.md" class="xref">Augmented Line
  Items (ALI)</a>
- <a href="create-an-augmented-line-item-ali.md" class="xref"
  title="You create augmented line items (ALIs) to define your financial relationship with an advertiser, set up targeting for an advertising campaign, and schedule your advertisements to run.">Create
  an Augmented Line Item</a>
- <a href="object-hierarchy.md" class="xref">Object Hierarchy</a>
- <a href="basic-buy-side-setup-procedures.md" class="xref">Basic
  Buy-side Setup Procedures</a>




