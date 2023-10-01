---
Title : Custom Model Parser Service
Description : The Custom Model Parser service lets you check the validity of decision
trees written in our <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
---


# Custom Model Parser Service



The Custom Model Parser service lets you check the validity of decision
trees written in our <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
class="xref" target="_blank">Bonsai Language</a>. You should use this
service to identify and resolve any Bonsai syntax or feature errors
before using the <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-service.html"
class="xref" target="_blank">Custom Model Service</a> to upload trees
for use in campaigns.

This page walks you through the validation process. For background
information on the purpose of custom models, see <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-models.html"
class="xref" target="_blank">Custom Models</a>. 



## Step 1. Base64-encode your Bonsai decision tree

Once you have written your decision tree in our Bonsai Language,
base64-encode it.

``` pre
$ cat decision_tree.txt 
 
# This tree determines a bid price as follows:
# 1. If the user is in California, and the hour is between 12pm and 14pm there, bid $1.50.
# 2. If the user is in New York, and the hour is between 1am and 3am there, bid $0.10.
# 3. Otherwise, bid $0.50.
 
if every region = "US:CA", user_hour range (12,14):
        1.5
elif every region = "US:NY", user_hour range (1,3):
        0.1
else:
        0.5
$ cat decision_tree.txt |base64
 
IyBUaGlzIHRyZWUgZGV0ZXJtaW5lcyBhIGJpZCBwcmljZSBhcyBmb2xsb3dzOgojIDEuIElmIHRoZSB1c2VyIGlzIGluIENhbGlmb3JuaWEsIGFuZCB0aGUgaG91ciBpcyBiZXR3ZWVuIDEycG0gYW5kIDE0cG0gdGhlcmUsIGJpZCAkMS41MC4KIyAyLiBJZiB0aGUgdXNlciBpcyBpbiBOZXcgWW9yaywgYW5kIHRoZSBob3VyIGlzIGJldHdlZW4gMWFtIGFuZCAzYW0gdGhlcmUsIGJpZCAkMC4xMC4KIyAzLiBPdGhlcndpc2UsIGJpZCAkMC41MC4KCmlmIGV2ZXJ5IHJlZ2lvbiA9ICJVUzpDQSIsIHVzZXJfaG91ciByYW5nZSAoMTIsMTQpOgoJMS41CmVsaWYgZXZlcnkgcmVnaW9uID0gIlVTOk5ZIiwgdXNlcl9ob3VyIHJhbmdlICgxLDMpOgoJMC4xCmVsc2U6CgkwLjU=
```





## Step 2. Create a JSON file containing your encoded tree

Create a JSON file as shown below. The main object must contain
a `custom-model-parser` object with the encoded tree as a string in
the `model_text` field.

``` pre
$ cat check_tree.json 
 
{
    "custom-model-parser": {
                "model_text": "IyBUaGlzIHRyZWUgZGV0ZXJtaW5lcyBhIGJpZCBwcmljZSBhcyBmb2xsb3dzOgojIDEuIElmIHRoZSB1c2VyIGlzIGluIENhbGlmb3JuaWEsIGFuZCB0aGUgaG91ciBpcyBiZXR3ZWVuIDEycG0gYW5kIDE0cG0gdGhlcmUsIGJpZCAkMS41MC4KIyAyLiBJZiB0aGUgdXNlciBpcyBpbiBOZXcgWW9yaywgYW5kIHRoZSBob3VyIGlzIGJldHdlZW4gMWFtIGFuZCAzYW0gdGhlcmUsIGJpZCAkMC4xMC4KIyAzLiBPdGhlcndpc2UsIGJpZCAkMC41MC4KCmlmIGV2ZXJ5IHJlZ2lvbiA9ICJVUzpDQSIsIHVzZXJfaG91ciByYW5nZSAoMTIsMTQpOgoJMS41CmVsaWYgZXZlcnkgcmVnaW9uID0gIlVTOk5ZIiwgdXNlcl9ob3VyIHJhbmdlICgxLDMpOgoJMC4xCmVsc2U6CgkwLjU"
    }
}
```





## Step 3. `POST` the file to the Custom Model Parser Service

Make a `POST` call to the Custom Model Parser Service as shown below.

``` pre
$ curl -b cookies -c cookies -X POST -d @check_tree.json 'https://api.appnexus.com/custom-model-parser'
```





## Step 4. Check the response 

- <a href="custom-model-parser-service.html#ID-00000c4d__tree_is_valid"
  class="xref">Tree is valid</a>
- <a
  href="custom-model-parser-service.html#ID-00000c4d__tree_is_not_valid"
  class="xref">Tree is not valid</a>

**Tree is valid**

If your Bonsai decision tree is valid, the `custom-model-parser` object
in the response will contain the following fields:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000c4d__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000c4d__entry__2"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000c4d__entry__1"><code
class="ph codeph">model_text</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000c4d__entry__2">Your
decision tree.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000c4d__entry__1"><code class="ph codeph">size</code></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000c4d__entry__2">The
size of your decision tree, in bytes.
<p><strong>Size Limit</strong>: Your tree must be smaller than 3 MB,
or 3,145,728 bytes. If it is larger than that, you will not be able to
add your tree using the <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-service.html"
class="xref" target="_blank">Custom Model Service</a>.</p></td>
</tr>
</tbody>
</table>



Note: The custom-model-parser endpoint
used to return the Lisp storage format of a decision tree under the
"`model_text`" field. We are deprecating this internal representation,
as it was only an intermediate step and is not used anywhere on the
platform. The field will now always contain the value "`<removed>`". The
"`size`" field on the response will continue to be filled accurately and
you should keep relying on it to know if your model is too large for
upload.

``` pre
{
    "response": {
        "service": "custom-model-parser",
        "method": "post",
        "custom-model-parser": {
            "model_text": "(if (and (region = 3922) (user_hour range 12 14)) 1.5 (if (and (region = 3950) (user_hour range 1 3)) 0.1 0.5))",
            "size": 111
        }
    }
    }
```



**Tree is not valid**

If your Bonsai decision tree is not valid, the `error` field in the
response will identify the issue. An error can result from either
invalid Bonsai syntax or invalid usage of Bonsai features. See <a
href="custom-model-parser-service.html#ID-00000c4d__error_messages_custom_model_parser_service"
class="xref">Error Messages</a> below for more details.

``` pre
{
    "response": {
        "error_id": "SYNTAX",
        "error": "ERROR: User hour expected on line 6 at column 49; user_hour must be between 0 and 23; found 24",
        "error_description": null,
        "service": "custom-model-parser",
        "method": "post",
        "error_code": "INVALID_SYNTAX"
    }
}
```



<div id="ID-00000c4d__error_messages_custom_model_parser_service"
>

## Error Messages

- <a href="custom-model-parser-service.html#ID-00000c4d__syntax_errors"
  class="xref">Syntax Errors</a>
- <a href="custom-model-parser-service.html#ID-00000c4d__feature_errors"
  class="xref">Feature Errors</a>

**Syntax Errors**

- Illegal character found:

  ``` pre
  ERROR: Illegal character <character> found on line <line> at column <column>
  ```

- Second root node found:

  ``` pre
  ERROR: End of file expected; <token> found.
  ```

- Numeric operator used with non-numeric type:

  ``` pre
  ERROR: Numeric operator <operator> invalid with non-numeric type <type> at line <line> at column <column>.
  ```

- Incorrect number of elements in a list (like having 3 elements in a
  range expression):

  ``` pre
  ERROR: Invalid number of elements in list at line <line> at column <column>. Required number of elements is <required number>, <number> elements found
  ```

**Feature Errors**

There are two types of features: Features we validate against the DB,
and features whose values must be certain numeric values. Validating
against the DB, the error message seen for an invalid value is:

``` pre
ERROR: <description> expected on line <line> at column <column>; found <value found>.
```

Validating numeric values, the error message seen for an invalid value
is:

``` pre
ERROR: <description> expected on line <line> at column <column>; <numeric restriction>
```

Features, descriptions, numeric restrictions are as follows:

- `country`: Country string
- `region`: Region string
- `city`: City string
- `supply_type`: Supply type
- `domain`: URL string
- `browser`: Browser string
- `carrier`: Carrier string
- `os_family`: OS family string
- `placement`: Valid placement id
- `size`: Size string
- `placement_group`: Valid placement group id
- `publisher`: Valid publisher id
- `mobile_app`: Valid mobile app id
- `cookie_age`: Cookie age in minutes
- `user_hour`: User hour must be between 0 and 23
- `user_day`: User day must be between 0 and 6
- `OBJECT[ID].lifetime_frequency`: Here the object is `advertiser`,
  `line_item`, or `campaign` (representing split), and ID is the object
  ID. The life frequency must be a positive integer. In this scenario,
  object is `advertiser`.
- `OBJECT[ID].day_freq`: Here the object is `advertiser`, `line_item`,
  or `campaign` (representing split), and ID is the object ID. The day
  frequency must be a positive integer. In this scenario, object is
  `advertiser`.
- `advertiser_recency`: Advertiser recency must be positive integer or
  -1
- `device_type`: Device type string
- `estimated_iab_viewthrough_rate`: IAB viewthrough rate must be a
  number between 0 and 1





## Related Topics





- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-models.html"
  class="xref" target="_blank">Custom Models</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/custom-model-service.html"
  class="xref" target="_blank">Custom Model Service</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/the-bonsai-language.html"
  class="xref" target="_blank">Bonsai Language</a>
- <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/bonsai-language-features.html"
  class="xref" target="_blank">Bonsai Language Features</a>





<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="custom-model-api-reference.html" class="link">Custom Model API
Reference</a>






