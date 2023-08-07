# CXP Test Case

<div class="body">

This is a test DITA file to cover new CXP test-cases.

<div class="section">

## Paragraph with Output Class Tag

Output class H2

Paragraph under H2.

Output class H3

Paragraph under H3.

Output class H4

Paragraph under H4.

</div>

<div id="test-dita-file-1__section_lhh_4tk_sxb" class="section">

## Simple Table with Code, Paragraph, OL and UL

<div class="p">

<div class="tablenoborder">

<table id="test-dita-file-1__table_fzb_vtk_sxb" class="table"
data-cellpadding="4" data-cellspacing="0" data-summary=""
data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" style="text-align:left;">
<tr class="header row">
<th id="d1360e110" class="entry cellrowborder"
style="vertical-align: top">Column1</th>
<th id="d1360e113" class="entry cellrowborder"
style="vertical-align: top">Column2</th>
<th id="d1360e116" class="entry cellrowborder"
style="vertical-align: top">Column3</th>
<th id="d1360e119" class="entry cellrowborder"
style="vertical-align: top">Column4</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e110 "><code class="ph codeph">codeph example</code></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e113 ">a sentence with inline <code
class="ph codeph">codeph</code> example</td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e116 "><pre class="pre codeblock"><code>codeline1,
codeline2,
codeline3</code></pre></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e119 "><p>Sample paragraph with</p>
<div class="p">
<pre class="pre codeblock"><code>codeline1,
codeline2,
codeline3</code></pre>
</div></td>
</tr>
<tr class="even row">
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e110 "><p>Sample paragraph</p>
<p><code class="ph codeph">with codeph example</code></p></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e113 "><p>Multiple paragraph in a cell</p>
<p>Multiple paragraph in a cell</p></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e116 "><pre class="pre codeblock"><code>codeline1,
codeline2,
codeline3</code></pre>
<p>Code block above paragraph</p></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e119 "><p>Separate Note and separate paragraph in a
cell</p>
<div class="note">
<span class="notetitle">Note:</span> A sample note
</div></td>
</tr>
<tr class="odd row">
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e110 "><div class="p">
Note inside the paragraph.
<div class="note">
<span class="notetitle">Note:</span> Here note is inside paragraph
</div>
</div></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e113 "><div class="note">
<span class="notetitle">Note:</span> Only a note inside cell
</div></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e116 "><div class="note">
<span class="notetitle">Note:</span> A note above a paragraph
</div>
<p>This is paragraph.</p></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e119 "><p>Paragraph outside a OL:</p>
<ol>
<li>LI 1</li>
<li>LI 2</li>
<li>LI 3</li>
</ol></td>
</tr>
<tr class="even row">
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e110 "><div class="p">
OL inside a paragraph:
<ol>
<li>LI1</li>
<li>LI2</li>
<li>LI3</li>
</ol>
</div></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e113 "><ol>
<li>LI1</li>
<li>LI2</li>
<li>LI3</li>
</ol></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e116 "><ul>
<li>LI 1</li>
<li>LI 2</li>
<li>LI 3</li>
</ul></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e119 "><p>Paragraph outside a UL:</p>
<ul>
<li>LI1</li>
<li>LI2</li>
<li>LI3</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e110 "><div class="p">
UL in a paragraph:
<ul>
<li>LI1</li>
<li>LI2</li>
<li>LI3</li>
</ul>
</div></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e113 "><ol>
<li>This is an expample:
<ul>
<li>LI1</li>
<li>LI2</li>
</ul></li>
<li>This is an expample:
<ol type="a">
<li>LI1</li>
<li>LI2</li>
</ol></li>
</ol></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e116 "><ol>
<li>This is an expample:
<ol type="a">
<li>This is an expample:</li>
<li>This is an expample:</li>
</ol></li>
</ol></td>
<td class="entry cellrowborder" style="vertical-align: top"
headers="d1360e119 "><ul>
<li>This is an expample:
<ul>
<li>This is an expample:</li>
<li>This is an expample:</li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="section">

## Test case for wintitle and menucascade

<div id="test-dita-file-1__tc-id-023-a" class="p">

This is a test paragraph for menucascade

- Go to <span class="keyword wintitle">Test Screen</span>
- Select <span class="ph menucascade"><span class="ph uicontrol">Step
  1</span> \> <span class="ph uicontrol">Step 2</span> \>
  <span class="ph uicontrol">Step 3</span></span>
- Click <span class="ph uicontrol">Ok</span>

</div>

</div>

</div>
