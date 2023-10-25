---
Title : Integration Process
Description : lorem ipsum
---


# Integration Process



This document includes the necessary information for supply partners to
review, plan, and execute a new OpenRTB integration, or migrate from a
custom SSP protocol integration to
<a href="https://www.iab.com/guidelines/real-time-bidding-rtb-project/"
class="xref" target="_blank">OpenRTB standard</a>, in a self-paced
fashion.



Note: The Integration Process page is
for external supply partners only.





## Prerequisite Checklist



Note: If you do not already have a
customer support portal account, please visit
the <a href="https://help.xandr.com" class="xref" target="_blank">Login</a> page,
proceed as a Guest, and request a new user registration.



1.  Contact your account manager (or open a ticket with
    our support team) to confirm the following information:  
    - <a href="understanding-the-sell-side-object-hierarchy.html"
      class="xref">Member seat ID</a> and if not requested yet, new
      member seat creation and API login credentials for
      Xandr's API.
    - <a href="incoming-bid-request-from-ssps.html" class="xref">Endpoints
      for </a>incoming bid requests, and if not requested yet, new
      endpoint creation on Xandr.  
        
2.  Review the documentation outlined below and discuss any open
    questions:
    - <a
      href="https://docs.xandr.com/bundle/supply-partners/page/openrtb-specs.html"
      class="xref" target="_blank">OpenRTB Specs</a>
    - <a
      href="https://docs.xandr.com/bundle/supply-partners/page/faq---integration-process.html"
      class="xref" target="_blank">FAQ - Integration Process</a>
    - <a
      href="https://docs.xandr.com/bundle/supply-partners/page/understanding-the-sell-side-object-hierarchy.html"
      class="xref" target="_blank">Object Hierarchy</a>
    - <a
      href="https://docs.xandr.com/bundle/supply-partners/page/synchronize-your-inventory-structure.html"
      class="xref" target="_blank">Inventory Mapping</a>
    - <a
      href="https://docs.xandr.com/bundle/supply-partners/page/user-id-mapping.html"
      class="xref" target="_blank">User Sync</a>
    - <a href="https://docs.xandr.com/csh?context=89626949" class="xref"
      target="_blank">Ads.txt/App-Ads.txt</a>
    - <a
      href="https://docs.xandr.com/bundle/supply-partners/page/selling-deals-on-xandr.html"
      class="xref" target="_blank">Deals</a> (If applicable)



Note: Prerequisite checks are only
complete after the contract is signed and member ID is created. Prior to
that, only point `1a.` can be processed. However, until the contract is
countersigned, we'd still love to kick off the conversation with your
integration team so that you can get familiar with the process and get
your technical questions addressed right away!



- Engagement is expected to take 3-4 weeks.
- The client must fully review the Prerequisite Checklist (this
  document) - and gather all the information prior to following the
  steps below.





## Step 1: Self-guided API/UI training and creation of publisher and placement objects (Estimated time: 7 - 10 days)

- Review Xandr <a
  href="https://docs.xandr.com/bundle/supply-partners/page/understanding-the-sell-side-object-hierarchy.html"
  class="xref" target="_blank">Object Hierarchy</a> and API/UI
  documentation.
- Provision the objects that you will need for initial testing, either
  via  or
  the <a href="https://docs.xandr.com/bundle/xandr-api/page/welcome.html"
  class="xref" target="_blank">API</a>. See <a
  href="https://docs.xandr.com/bundle/supply-partners/page/api-documentation.html"
  class="xref" target="_blank">API Documentation</a> for more details. 
- Create sell-side objects to synchronize inventories (at least the ones
  are needed for initial functional testing) via UI/API
  - Review Xandr Object Hierarchy: Member →
    Publisher → Placement Group → Placement
  - Create a publisher and a placement for the test
    - Within each object, the code value must be populated with the
      external identifier the SSP will pass in the <a
      href="https://docs.xandr.com/bundle/supply-partners/page/incoming-bid-request-from-ssps.html"
      class="xref" target="_blank">bid request</a>. 
  - Related API documentation 
    - <a
      href="https://docs.xandr.com/bundle/xandr-api/page/member-service.html"
      class="xref" target="_blank">Member Service</a>
    - <a
      href="https://docs.xandr.com/bundle/xandr-api/page/publisher-service.html"
      class="xref" target="_blank">Publisher Service</a>
    - <a href="https://docs.xandr.com/bundle/xandr-api/page/site-service.html"
      class="xref" target="_blank">Placement Group Service (Site Service)</a>
    - <a
      href="https://docs.xandr.com/bundle/xandr-api/page/placement-service.html"
      class="xref" target="_blank">Placement Service</a>
- Setup a Default placement on the publisher and member level. (in case
  we cannot identify inventory from the bid request, the impression will
  be logged into that default placement.)
- Please use the `code` field to map your bid requests to your
  publishers and placements. For more details and examples, read the <a
  href="https://docs.xandr.com/bundle/supply-partners/page/faq---integration-process.html"
  class="xref" target="_blank">Integration FAQ</a>.  
    
  

  Note:
  In order to provide transparency to our buyers and improve our
  optimization, we require our partners to break out their inventory by
  publisher. For more information regarding our inventory structure
  standards please visit our wiki page <a
  href="https://docs.xandr.com/bundle/supply-partners/page/use-the-api-to-synchronize-your-inventory-structure.html"
  class="xref" target="_blank">Use the API to Synchronize Your Inventory
  Structure</a>.

  
- Use the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/publisher-service.html"
  class="xref" target="_blank">Publisher Service</a> to create
  publishers that are mapped to your inventory.



Note:

- The `code` field is required for all external sellers at both the
  publisher and placement levels and is highly recommended for all other
  sellers to ensure that your inventory is as granular as possible so
  that it can be investigated accurately for quality issues, and
  specifically for domain detectability. This step will help you to
  split your inventory into highly detectable and less detectable tags,
  allowing you to isolate the impacts of non-detectable domains on the
  rest of your inventory's viability.
-   
  In order to create or edit publishers in 
  or the
  <a href="https://docs.xandr.com/bundle/xandr-api/page/welcome.html"
  class="xref" target="_blank">API</a>, you have to declare the <a
  href="https://docs.xandr.com/bundle/supply-partners/page/inventory-relationship-faq.html"
  class="xref" target="_blank">Inventory Relationship</a>.  The
  requested information is basic business information about how the
  inventory is accessed and will be used to support
  Xandr's inventory quality efforts. For a
  complete list of fields and their usage requirements, please refer to
  the <a
  href="https://docs.xandr.com/bundle/xandr-api/page/publisher-service.html"
  class="xref" target="_blank">Publisher Service</a> documentation.



- User Sync Setup
  - Store the user mapping table between Xandr's
    and yours by using the GETUID service. (Learn details from <a
    href="https://docs.xandr.com/bundle/supply-partners/page/user-id-mapping.html"
    class="xref" target="_blank">User ID Mapping</a>）





## Step 2: OpenRTB bid request endpoint testing (Estimated time: 3 - 4 days) 

Xandr supports the <a
href="https://www.iab.com/wp-content/uploads/2016/03/OpenRTB-API-Specification-Version-2-4-FINAL.pdf"
class="xref" target="_blank">OpenRTB 2.4 protocol</a> for receiving all
media type impressions.  Please follow the OpenRTB 2.4 specification
from
<a href="https://www.iab.com/guidelines/real-time-bidding-rtb-project/"
class="xref" target="_blank">IAB</a>.

Use the endpoints below to send server-to-server OpenRTB bid requests to
Xandr:

- <a
  href="http://MEMBER_ALIAS-useast..com/openrtb2?member_id=MEMBER_ID&amp;test=1"
  class="xref"
  target="_blank">http://MEMBER_ALIAS-useast..com/openrtb2?member_id=MEMBER_ID&amp;test=1</a>
- <a
  href="http://MEMBER_ALIAS-uswest..com/openrtb2?member_id=MEMBER_ID&amp;test=1"
  class="xref"
  target="_blank">http://MEMBER_ALIAS-uswest..com/openrtb2?member_id=MEMBER_ID&amp;test=1</a>
- <a
  href="http://MEMBER_ALIAS-emea..com/openrtb2?member_id=MEMBER_ID&amp;test=1"
  class="xref"
  target="_blank">http://MEMBER_ALIAS-emea..com/openrtb2?member_id=MEMBER_ID&amp;test=1</a>
- <a
  href="http://MEMBER_ALIAS-apac..com/openrtb2?member_id=MEMBER_ID&amp;test=1"
  class="xref"
  target="_blank">http://MEMBER_ALIAS-apac..com/openrtb2?member_id=MEMBER_ID&amp;test=1</a>



Note: `MEMBER_ID` and `MEMBER_ALIAS`
should be substituted with your individual partner member ID and alias. 



  
Feel free to use the bid request examples from the page Incoming Bid
Request from SSPs and adjust the code fields accordingly to match your
publisher and placement inventory mapping. 

You must use the "test=1" query string parameter on your calls to
identify a test impression. It will not be logged in reporting.





##  Step 3: Manual Tests

- Provide a bid request sample to Xandr
- Setup a **test** placement on Xandr platform
  and make sure the inventory is mapped correctly
- Provide a sample creative that meets all the requirements of the test
  placement
- Setup Ad Quality rule that only allows Xandr
  Test Buyer to buy Impressions on the Test Placement.
- Remove "&test=1" from the endpoint query string when the test starts.
  

  Note:
  If you do not remove "&test=1", imps will **not** be logged on
  Xandr side)

  
- Fire the traffic manually from the test placement to confirm the
  receipt of a bid response, the creative served, and impressions logged
  on your side.
- Xandr will run a delivery test from a
  dedicated buy-side member seat and notify you of any discrepancies
  before scaling your inventory further.
- Xandr will validate your OpenRTB bid requests
  and notify you in case the format needs to be corrected.  





## Step 4: Programmatic Functional Test  (Live Traffic)

- Open up a small but substantial portion of traffic to
  Xandr on the established **endpoint** (at a
  minimum of several thousand imps per day).
  - Xandr will confirm the volume of traffic
    being sent in and verify that impressions are flowing in through our
    reporting and they align with your internal reporting. 
- Run the test for a day or so and compare numbers to ensure the
  discrepancy between your reporting and Xandr
  reporting is acceptable.





## Step 5: Go Live

- Map all your inventories on Xandr platform
  before going live with 100% traffic.   
- After finishing the inventory mapping, please ramp up traffic and
  remove filters that may be imposed during testing such as country
  pre-targeting, device pre-targeting and bid volume throttling.





## Step 6: Completion/Follow Up (Estimated time: 2 - 3 days)

We encourage a gradual traffic ramp-up where distinct portions of your
inventory are being sent to Xandr. General
recommendation is to start with a small chunk of traffic (100-200 QPS).

Notify your Xandr contact about the completion
of the self-paced integration/migration; your contact will initiate the
final OpenRTB requirement validation tests and provide you with final
results and feedback. 






