---
Title : Registration Form Service
Description : The Registration Form Service allows you to upload the registration
forms required by certain states for political advertising purchased by
independent expenditure committees. Creatives won't serve in New Jersey
---


# Registration Form Service



The Registration Form Service allows you to upload the registration
forms required by certain states for political advertising purchased by
independent expenditure committees. Creatives won't serve in New Jersey
or New York State until the form is uploaded and associated with the
appropriate insertion order.

<div id="registration-form-service__note_wdm_snc_xwb"


Note:

- `PUT `and `DELETE `are not supported for this service. Instead of
  modifying an existing form, you must upload a new form and then
  associate the new form with the insertion order.
- You must record the `file-location` specified in the response to the
  uploaded form so that you can associate the form with the appropriate
  insertion order. There is no way to retrieve this information later.
  If you did not record the file location and still need to associate
  the form with an insertion order, you will need to upload a new form.





## REST API



<table
id="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1"
class="entry align-left colsep-1 rowsep-1">HTTP Method</th>
<th
id="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"
class="entry align-left colsep-1 rowsep-1">Endpoint</th>
<th
id="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">POST</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><p><a
href="https://api.appnexus.com/registration-form/upload" class="xref"
target="_blank">https://api.appnexus.com/registration-form/upload</a> -F
uploadFile=@&lt;local_path/local_file_name.pdf&gt;</p>
<p>where <code class="ph codeph">local_path/local_file_name.pdf</code>
is the path and name of the file to be uploaded.</p>
<p>If you do not have access to your local file path because you are
calling the API from a browser, you will need to create a FormData
object with the variable name <code class="ph codeph">uploadFile</code>
and upload that.</p>

If you're using JavaScript to create a FormData object, for example, the
code should look something like this:
<pre id="registration-form-service__codeblock_cpq_p4c_xwb"
class="pre codeblock"><code> savePoliticalFormFile: async (uploadFile) =&gt; {
    const formData = new FormData();
    formData.append(&#39;uploadFile&#39;, uploadFile);
    const response = await 
httpPostMultiPart(`${API_URL}/registration-forms/upload`, formData);
    return response[&#39;location&#39;];
  },</code></pre>
</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">Upload
a new registration form.</td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/registration-form?member_id=MEMBER_ID"
class="xref"
target="_blank">https://api.appnexus.com/registration-form?member_id=MEMBER_ID</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3">View
all registration forms for a member.</td>
</tr>
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__1">GET</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__2"><a
href="https://api.appnexus.com/registration-form?file_path=FILE_PATH/FILE_NAME.PDF"
class="xref"
target="_blank">https://api.appnexus.com/registration-form?file_path=FILE_PATH/FILE_NAME.PDF</a></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-0c8f77fc-8abc-474f-a141-c80903bb86d8__entry__3"><p>View
a registration form.</p>
<p>To view a registration form, you must know the location to which the
file was uploaded. Simply enter the URL in a browser or perform a GET on
the URL.</p></td>
</tr>
</tbody>
</table>







## JSON Fields



<table
id="registration-form-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc"
class="table frame-all" style="width:100%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead class="thead">
<tr class="header row">
<th
id="registration-form-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"
class="entry align-left colsep-1 rowsep-1">Field</th>
<th
id="registration-form-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2"
class="entry align-left colsep-1 rowsep-1">Type</th>
<th
id="registration-form-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"
class="entry align-left colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">member_id</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3"><p>The
ID of the member.</p>
<p><strong>Required On</strong>: <code
class="ph codeph">POST</code></p></td>
</tr>
<tr class="even row">
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__1"><code
class="ph codeph">file_path</code></td>
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__2">int</td>
<td class="entry align-left colsep-1 rowsep-1"
headers="registration-form-service__table-e90721c3-a6f1-4920-a65e-2583a1f3a2dc__entry__3">The
location to which the file is uploaded. This is returned in the response
and cannot be specified when uploading the file.</td>
</tr>
</tbody>
</table>





<div id="registration-form-service__section_odm_t4c_xwb"
>

## Examples



**Upload a registration form and associate the form with an insertion
order**

``` pre
# Upload the registration form
# In this example, NYS_Registration_Form_My_Favorite_Candidate.pdf is the New York State disclosure form for the ad purchase by the independent expenditure committee.
 
curl -b cookies -X POST https://api.appnexus.com/registration-form/upload -F uploadFile=@/users/myname/NYS_Registration_Form_My_Favorite_Candidate.pdf>
 
# The response includes the following:
 
{
    "file-path": "https://cleversafe03.appnexus.net/s3/political-ads-forms/p/958/20191010/fd241b14-1620-4e16-99d7-d57b19078649/A01055Registration20180907111141.PDF"
}
 
# Associate the form with an insertion order
# In this example, the insertion order used for political advertisements is 5432.
 
cat io-registration-form.json
{
 
  "insertion-order": {
    "registration-forms": [
      {
        "file-path": "https://cleversafe03.appnexus.net/s3/political-ads-forms/p/958/20191010/fd241b14-1620-4e16-99d7-d57b19078649/A01055Registration20180907111141.PDF"
      }
    ]
  }
}
 
curl -b cookies -X PUT https://api.appnexus.com/insertion-order?id=5432 
```





**View an uploaded form**

``` pre
GET https://api.appnexus.com/registration-form?file_path=https://cleversafe03.appnexus.net/s3/political-ads-
forms/p/958/20191010/fd241b14-1620-4e16-99d7-d57b19078649/A01055Registration20180907111141.PDF
```





<div id="registration-form-service__section_i5z_1qc_xwb"
>

## Related Topics



- <a
  href="https://docs.xandr.com/bundle/xandr-api/page/insertion-order-service.html"
  class="xref" target="_blank">Insertion Order Service</a>








