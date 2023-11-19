---
Title : Rich Media - FAQ
<b>Note:</b> For more information about rich
media, see <a
href="expandables-and-rich-media.md"
ms.date : 10/28/2023
---


# Rich Media - FAQ






<b>Note:</b> For more information about rich
media, see <a
href="expandables-and-rich-media.md"
class="xref" target="_blank">Expandables and Rich Media</a>.






## Expandables

**How do I know if an impression supports an expandable creative?**

There will be two fields in the bid request to indicate the availability
of expandables on an impression.

<table id="rich-media-faq__table_zhh_4x5_4wb" class="table">
<thead class="thead">
<tr class="header row">
<th id="rich-media-faq__table_zhh_4x5_4wb__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="rich-media-faq__table_zhh_4x5_4wb__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
<th id="rich-media-faq__table_zhh_4x5_4wb__entry__3"
class="entry colsep-1 rowsep-1">Notes</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="rich-media-faq__table_zhh_4x5_4wb__entry__1"><code
class="ph codeph">allowed_types</code></td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-faq__table_zhh_4x5_4wb__entry__2">Array of media
type ids</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-faq__table_zhh_4x5_4wb__entry__3">This field is
optional. If it appears, creatives of the specified media types may
serve on this impression.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="rich-media-faq__table_zhh_4x5_4wb__entry__1"><code
class="ph codeph">allowed_subtypes</code></td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-faq__table_zhh_4x5_4wb__entry__2">Array of media
subtype ids</td>
<td class="entry colsep-1 rowsep-1"
headers="rich-media-faq__table_zhh_4x5_4wb__entry__3">This field is
optional. If it appears, creatives of the specified media subtypes may
serve on this impression.</td>
</tr>
</tbody>
</table>






