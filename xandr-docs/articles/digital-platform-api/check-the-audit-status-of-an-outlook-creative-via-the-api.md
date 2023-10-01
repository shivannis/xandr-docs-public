---
Title : Check the Audit Status of an Outlook Creative via the API
Description : Once you've added an Outlook creative, you can make a GET call to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
---


# Check the Audit Status of an Outlook Creative via the API



Once you've added an Outlook creative, you can make a GET call to the <a
href="https://docs.xandr.com/bundle/xandr-api/page/creative-service.html"
class="xref" target="_blank">Creative Service</a> to check where the
creative is in Xandr's secure platform and
Microsoft audits. For each audit, there are three possible statuses your
creative can have: 

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000011c2__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-000011c2__entry__2"
class="entry colsep-1 rowsep-1">Statuses</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-000011c2__entry__1"><pre
class="pre codeblock"><code>ssl_audit</code></pre></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011c2__entry__2">The
eligibility of the creative to serve on secure inventory. Possible
values:
<ul>
<li>"pending" - The creative is being SSL audited by <span
class="ph">Xandr.</li>
<li>"approved" - The creative has passed the SSL audit and is eligible
to serve on secure inventory.</li>
<li>"failed" - The creative has been rejected for SSL audit and is not
eligible to serve on secure inventory.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-000011c2__entry__1"><pre
class="pre codeblock"><code>msft_audit_status</code></pre></td>
<td class="entry colsep-1 rowsep-1" headers="ID-000011c2__entry__2">The
eligibility of the creative to search on Microsoft inventory. Possible
values:
<ul>
<li>"pending" - The creative is being audited for Microsoft Creative
Acceptance Policy by Xandr.</li>
<li>"approved" - The creative has passed Microsoft CAP audit and is
eligible to serve on Microsoft Advertising Exchange.</li>
<li>"rejected" - The creative has been rejected for Microsoft CAP audit
and is not eligible to serve on Microsoft Advertising Exchange . </li>
</ul></td>
</tr>
</tbody>
</table>



Tip: If an Outlook creative fails the
Xandr SSL or Microsoft audit, you can re-submit
it for audit (once you've fixed the downstream non-secure content) by
changing `ssl_status` to "pending".



<div id="ID-000011c2__section_g3k_tt4_rwb" >

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/buying-microsoft-outlook-com-inventory.html"
  class="xref" target="_blank">Buying Microsoft Outlook.com Inventory</a>
- <a href="create-an-outlook-campaign-via-the-api.html"
  class="xref">Create an Outlook Campaign via the API</a> 






