---
Title : Managing Public and Private (Custom) Segments
Description : ## Introduction
ms.custom : data-providers
ms.date : 10/28/2023
The Data Marketplace supports both public and private segments. This
---


# Managing Public and Private (Custom) Segments





## Introduction

The Data Marketplace supports both public and private segments. This
means that any segment – whether public or private – used through the
data marketplace will be cleared and reported on by
Xandr. Both the data provider and data buyer
benefit from the operational savings of our clearing house and the
detailed reporting of data usage. The purpose of this page is to provide
best practices depending on the types of data you provide through the
marketplace.





## Public Segments

**Definition**

Public segments are segments that are immediately available to all data
buyers in the Data Marketplace. These segments typically represent a
data provider's standard offering.



<b>Important:</b>

For data providers to be visible to buyers, they must have at least one
segment publicly mapped to their taxonomy.







## Create a new public segment

1.  Create a new segment object using the <a
    href="xandr-api/segment-service.md"
    class="xref" target="_blank">Segment Service</a> API

    **Creating a segment object**

    ``` pre
    "$ cat segment"{
       "segment":{
          "member_id":25,
          "short_name":"remarketing - netflix user",
          "code":"netflix08"
       }
    }"$ curl -b cookies -c cookies -d @segment""https://api.adnxs.com/segment/958"                        
                            
    ```

2.  Upload data into the new segment using <a
    href="xandr-bidders/uploading-segment-data-using-bss.md"
    class="xref" target="_blank">Batch Server-side Segmentation</a>.

3.  Set the segment as **"is_public = true"** and activate the segment
    on the Data Marketplace using
    the <a href="segment-billing-category-service.md" class="xref">Segment
    Billing Category Service</a> API

    **Map the segment to a pricing category and set segment to public**

    ``` pre
    "$ cat create_segment_mapping"{
       "segment-billing-category":{
          "active":true,
          "data_provider_id":1,
          "data_category_id":1001,
          "segment_id":111111,
          "is_public":true
       }
    }"$ curl -b cookies -c cookies -X POST -d @create_segment_mapping""https://api.appnexus.com/segment-billing-category?member_id=958"                            
                            
    ```



<b>Note:</b> Xandr
will automatically share this segment to all Data Marketplace buyers.







## Private (Custom) Segments

**Definition**

Private segments are segments that require explicit sharing by the data
provider to the data buyer. Private segments are typically custom
segments built for a specific data buyer and are not meant to be seen by
any other buyer. Any segment that should not be available to all Data
Marketplace buyers should be set as a private segment.



<b>Important:</b>

**Before sharing a private segment with a buyer, verify that buyers have
added your company in the Data Marketplace as described in the Add Data
Provider section of
<a href="data-buyer-workflow-changes.md" class="xref">Data Buyer
Workflow Changes</a>. Sharing segments with non-activated buyers will
result in un-tracked and un-billed data usage. See
<a href="data-buyer-provider-service.md" class="xref">Data Buyer
Provider Service</a>.**





<b>Tip:</b>

Remember that private segments need to be shared manually to your data
buyers. As shown in step 3 of "Create a new private segment", you'll
need to use our Member Data Sharing API service to share segment IDs to
specific Xandrmembers.







## Create a new private segment

1.  Create a new segment object using the <a
    href="xandr-api/segment-service.md"
    class="xref" target="_blank">Segment Service</a> API.

    **Creating a segment object**

    ``` pre
     "$ cat segment"{
       "segment":{
          "member_id":25,
          "short_name":"remarketing - netflix user",
          "code":"netflix08"
       }
    }"$ curl -b cookies -c cookies -d @segment""https://api.adnxs.com/segment/958"                 
    ```

2.  Set the segment as **"is_public = false"** and activate the segment
    on the Data Marketplace using
    the <a href="segment-billing-category-service.md" class="xref">Segment
    Billing Category Service</a> API. 

    **Map the segment to a pricing category and set segment to public**

    ``` pre
    "$ cat create_segment_mapping"{
       "segment-billing-category":{
          "active":true,
          "data_provider_id":1,
          "data_category_id":1001,
          "segment_id":111111,
          "is_public":false
       }
    }"$ curl -b cookies -c cookies -X POST -d @create_segment_mapping""https://api.&lt;ph keyref=\"legacy-product-lc\"/>.com/segment-billing-category?member_id=958"
    ```

3.  Share private segments with the buyers that should see the segment.

    **Share private segments to specific buyers**

    ``` pre
    "$ cat data_share_single"{
       "member_data_sharing":{
          "buyer_member_id":105,
          "segment_exposure":"list",
          "segments":[
             {
                "id":121175
             },
             {
                "id":121176
             },
             {
                "id":121177
             },
             {
                "id":121178
             }
          ]
       }
    }"$ curl -b cookies -c cookies -X POST -d @data_share_single""https://api.&lt;ph keyref=\"legacy-product-bidders-lc\"/>.com/member-data-sharing?data_member_id=958"               
    ```





## Change a public segment to private

1.  Modify the segment to "private" using
    the <a href="segment-billing-category-service.md" class="xref">Segment
    Billing Category Service</a> API

    **Map the segment to a pricing category and set segment to public**

    ``` pre
    "$ cat create_segment_mapping"{
       "segment-billing-category":{
          "active":true,
          "data_provider_id":1,
          "data_category_id":1001,
          "segment_id":111111,
          "is_public":false
       }
    }"$ curl -b cookies -c cookies -X PUT -d @create_segment_mapping""https://api.appnexus.com/segment-billing-category?member_id=958&amp;id=77777"
    ```

    

    <b>Note:</b> Xandr will stop sharing this
    segment to all new Data Marketplace buyers. Data Marketplace buyers
    that already have access to this segment will continue to have
    access to the segment.

    

2.  Unshare existing sharing records via the
    <a href="member-data-sharing-service.md" class="xref">Member Data
    Sharing Service</a> API .





## Change a private segment to public

1.  Modify the segment to "private" using the
    <a href="segment-billing-category-service.md" class="xref">Segment
    Billing Category Service</a> API.

    **Map the segment to a pricing category and set segment to public**

    ``` pre
    "$ cat create_segment_mapping"{
       "segment-billing-category":{
          "active":true,
          "data_provider_id":1,
          "data_category_id":1001,
          "segment_id":111111,
          "is_public":true
       }
    }"$ curl -b cookies -c cookies -X PUT -d @create_segment_mapping""https://api.appnexus.com/segment-billing-category?member_id=958&amp;id=77777"
    ```



<b>Note:</b> Xandr
will automatically share this segment to all Data Marketplace buyers.








