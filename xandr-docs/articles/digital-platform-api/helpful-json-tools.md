---
Title : Helpful JSON Tools
Description : These are tricks we use when using the APIs.
---


# Helpful JSON Tools



These are tricks we use when using the APIs.



##  jq

`jq`\` is a lightweight and flexible command line JSON parser. It
supports colored terminal output, and filtering for JSON documents

\`

``` pre
# API Call
$ curb -H 'Authorization: xxx' 'https://api.appnexus.com/segment' | jq '.response.segments[] | {id, short_name}'
 
# API Response Example
{
  "id": 1,
  "short_name": "cookie_birthday"
}
{
  "id": 123,
  "short_name": "creative_macro_test_seg"
}
{
  "id": 456,
  "short_name": "In-Market Users"
}
```

JQ can be downloaded and installed
from: <a href="https://stedolan.github.io/jq/" class="xref"
target="_blank">https://stedolan.github.io/jq/</a>





## json_reformat

\``json_reformat`\` formats your output nicely without reordering the
fields, and is easily installed via most standard Linux Distros

``` pre
 $ curl -b cookies -c cookies 'https://api.appnexus.com/creative' | json_reformat  
```

  
If it doesn't work for you, try `yum install yajl`. If you are using a
mac and do not have yum, you can use macports to install
`json_reformat`. Make sure you have xcode and macports downloaded and
installed and then run `sudo port install yajl`. If you get an error
message, follow the instructions given.





## Verify a JSON

This is a nice JSON verifier.
<a href="https://www.jsonlint.com/" class="xref"
target="_blank">https://www.jsonlint.com/</a>





## JSONView

From Firefox: Normally when encountering a JSON document (content type
"application/json"), Firefox simply prompts you to download the file.
With the JSONView extension, JSON documents are shown in the browser
similar to how XML documents are shown. The document is formatted,
highlighted, and arrays and objects can be collapsed. Even if the JSON
document contains errors, JSONView will still show the raw text.

- <a href="https://addons.mozilla.org/en-US/firefox/addon/10869/"
  class="xref"
  target="_blank">https://addons.mozilla.org/en-US/firefox/addon/10869/</a>
- <a
  href="https://chrome.google.com/extensions/detail/chklaanhfefbnpoihckbnefhakgolnmc"
  class="xref"
  target="_blank">https://chrome.google.com/extensions/detail/chklaanhfefbnpoihckbnefhakgolnmc</a>






