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
href="https://docs.xandr.com/bundle/xandr-api/page/profile-service.html#ProfileService-DeviceTypeTargets"
class="xref" target="_blank">Profile Object</a> associated to the line
item, as well as to the Device Type dimension in <a
href="https://docs.xandr.com/bundle/invest_invest-standard/page/topics/device-analytics-report.html"
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

  to restrict the device types you are targeting, uncheck any device
  types you wish to exclude.
  <div id="ID-00004ad8__p-f7f16480-a437-4618-9e9c-0b1fa74608f7"
  >

  <div id="ID-00004ad8__note-854ba3e1-5f79-4d07-8932-ad5d8d38cba1"
  

  Note:
  - **Connected Audio** is only available in Invest.
  - When targeting devices models
    Targeting
    \> System \>
    Device Model with
    Make = **Apple**, you should
    include the following device models to avoid under-delivery. For
    Example: **iPad (300)** and **iPhone (301)**.

  

  

Related Topic

- <a href="buy-side-targeting.html" class="xref">Buy-Side Targeting</a>
- <a href="create-an-insertion-order.html" class="xref">Create an
  Insertion Order</a>
- <a href="create-a-curated-deal-line-item.html" class="xref">Create a
  Curated Deal Line Item</a>
- <a href="object-hierarchy.html" class="xref">Object Hierarchy</a>




