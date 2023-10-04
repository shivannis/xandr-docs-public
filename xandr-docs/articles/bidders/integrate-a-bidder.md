---
Title : Integrate a Bidder
Description : This page describes how to integrate a bidder with Xandr. It begins with
---


# Integrate a Bidder



This page describes how to integrate a bidder with Xandr. It begins with
an overview of the different "layers" of the integration, and ends with
a worked example (using actual API calls) of a simple integration that
will get you up and running quickly in our testing environment. It also
provides links to more detailed information elsewhere on our wiki.



## System Overview

<div id="integrate-a-bidder__note-8defc813-d279-42b6-968b-a761b3fd4420"


Note: Bidding Protocol

Xandr currently supports the OpenRTB 2.4 bidding protocol. For more info
check out our <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidding-protocol.html"
class="xref" target="_blank">Bidding Protocol</a> page.



<div id="integrate-a-bidder__p-b9356d9e-ea88-4be7-9017-bc0e1d61e1c1"
>

At a high level, there are two "layers" of the system we need to be
concerned with during bidder setup:

- Real-Time Layer (RTB): This is the heart of the action, where your
  bidder will participate in the real-time auction.
  - Our server receives a bid request from a webpage (or SSP partner),
    and format it to prepare to send to our bidders.
  - Using the settings in the bidder instance (and your bidder object),
    we send the request along to your servers.
    - The endpoint the request hits depends on the request type.
      <figure class="fig fignone">
      <p><img src="images/rtb-png.png" class="image" width="700"
      height="300" /></p>
      </figure>
- Configuration Layer (API): This is where you will configure your
  bidder's "business logic" so it can bid on impressions; in other
  words, filtering out unwanted impressions, setting up users, adding
  the creatives your members want to serve, etc.
  <figure class="fig fignone">
  <p><img src="images/config-layer.png" class="image" width="700"
  height="300" /></p>
  </figure>







## A Note on Object Hierarchy



Note:

It is important to understand how our platform objects relate to one
another. Below is an outline of our object hierarchy.

Bidders, Members, Seats



- Bidders are the highest object in our buy side hierarchy. It
  represents your entity's presence on our platform.
- Below them are members. The relationship used to be one-to-many, with
  a bidder possibly having several member breakouts.
  - This is no longer the case. It is now one-to-one, as we no longer
    support additional member breakouts.
  - You will be integrated with a single member, which we refer to as
    your 'Default Member'.
- Members are considered entities that have contractual agreements to
  buy (or sell) through the impression bus (for more details, see the <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/member-service.html"
  class="xref" target="_blank">Member Service</a>).
  - Creatives are associated with your default member, not your bidder.
- The bidders themselves are not members, but rather they are the
  technology providers for members.
  - The bidder is where you set up a connection with Xandr (such as what
    kind of requests to receive, to which endpoint, etc.).
  - The member is where you set up campaign-related objects such as
    creatives.
  - The bidder is integrated into our UI. The impression bus connects
    bidders with various sources of inventory, including aggregators, ad
    exchanges, and network resold inventory.
- Seats are your internal entities which you can use to bid in our
  auctions, and purchase impressions with their corresponding internal
  id.
- The diagram below illustrates this hierarchy
  - With the previous member breakouts, we held a mapping of which of a
    bidder's seats corresponded to which breakout member. This allowed
    bidders to bid with their internal ids 100% of the time.
  - Since you will be integrating with only one member, and with buyer
    seat bidding, you will only have the one default member, and do not
    have to worry about the seat-member mapping.
    <figure class="fig fignone">
    <p><img src="images/hierarchy.png" class="image" width="700"
    height="300" /></p>
    </figure>



Users



- Traditionally, bidders can act on behalf of themselves, or they can
  have several 3rd-party members.
- Members must have at least one user, regardless of whether the member
  acts on behalf of a third party (for more details, see the <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/user-service.html"
  class="xref" target="_blank">User Service</a>).
  - Members can have many users.
- The bidder, as a technology provider, also has at least one user.
- The users for bidders adjust the bidder profile, add bidder instances,
  etc.
- Member users upload creatives for that member, etc.
- Even if the bidder is the same corporation as a member, and the bidder
  only acts on behalf of itself, the bidder is logically distinct from
  the member in the same fashion.
  <figure class="fig fignone">
  <p><img src="images/users.png" class="image" width="700"
  height="300" /></p>
  </figure>









## How to Set Up Your Bidder

In this section we'll walk through the entire process of setting up a
bidder on the platform. We'll begin by making the API calls necessary to
hook up the pipes.



Tip: APIs.

Most client testing is done in our production APIs. We also have a
testing environment API which allows for testing of your object creation
and updating workflows.

Most of the examples calls below are done in the production API
environment.







## Authenticate with the API

Before we can do anything else, we have to log in. Below is an example
of the authentication json you can use. The authentication process for
our production and testing environment is the same. The only difference
is the endpoint.



Tip: For more detailed information
about authenticating via our API, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/authentication-service.html"
class="xref" target="_blank">Authentication Service</a>.

**Example Authentication Json**



``` pre
$ cat auth.json
        
        {
        "auth":
        {
        "username" : "rloveland",
        "password" : "AppNexus1!"
        }
        }
      
```

Post to the production api to authenticate:

**Example Auth Call in Production API**

``` pre
$ export IB="https://api.adnxs.com";
$ curl -b cookies -c cookies -X POST -d @auth.json $IB/auth
        
{ response": { "status": "OK", ... } }
        
      
```

Similarly, post to the test environment to authenticate:

**Example Auth Call in Testing API**

``` pre
$ export IB_TESTING="https://api-test.adnxs.com";
$ curl -b cookies -c cookies -X POST -d @auth.json $IB_TESTING/auth
        
{ response": { "status": "OK", ... } }
      
```





## View your Bidder Object

The bidder object represents your bidder in our system. As such, it has
a lot of fields that you can use to configure how your bidder interacts
with our platform. Think of it as the central "hook" on which you'll
hang much of the rest of your configuration. A bidder object should
already have been created for you by your Xandr representative.



Tip: In the example below, we make a
`GET` call to view the bidder object, but we don't explain any of its
details. For more detailed information about the bidder object, see the
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
class="xref" target="_blank">Bidder Service</a>.



**Expand for Call Example**

``` pre
$ export IB="https://api.adnxs.com";
$ curl -b cookies $IB/bidder/123

{
  "response": {
    "bidder": {
      "active": true,
      "always_send_owned_segments": true,
      "audit_notify_uri": null,
      "bid_percent": 100,
      "bid_uri": "/xandr/bid",
      "child_profiles": null,
      "click_uri": null,
      "daily_budget": null,
      "daily_budget_imps": null,
      "default_currency": "USD",
      "default_member": {
        "id": 9876,
        "name": "Example Bidder's Default Member Name"
      },
      "dongle": null,
      "exclude_unowned": false,
      "id": 123,
      "last_activity": "2021-02-03 19:47:25",
      "lifetime_budget": null,
      "lifetime_budget_imps": null,
      "max_allowed_profiles": 5,
      "max_seats": 10000,
      "name": "ExampleBidder",
      "notify_full_auction": false,
      "notify_uri": null,
      "num_conns": 3,
      "object_limit_notify_email": null,
      "parent_profile_id": null,
      "pixel_uri": null,
      "protocol_id": 10,
      "protocol_name": "openrtb2",
      "ready_uri": "/status/ready",
      "send_class_2": true,
      "send_class_3": true,
      "send_owned_blacklist": false,
      "send_public_deals": false,
      "send_unaudited": true,
      "setuid_function": null,
      "short_name": "examplebidder",
      "supports_deal_buyers": "seats",
      "userdata_entity_id": null,
      "userdata_javascript": null,
      "vendor_id": null
    },
    "count": 1,
    "dbg": {
      "output_term": "bidder",
      "version": "1.0.5",
      "warnings": [
        
      ]
    },
    "num_elements": 100,
    "start_element": 0,
    "status": "OK"
  }
}     
```





## Bidder Object Configurations

**For the following fields of the "Bidder" object, IP Address/Hostname
should not be included preceding the path.**



IP Address <u>will</u> be configured separately on the "Bidder Instance"
object(s) in the next step of the integration process.

<table
id="integrate-a-bidder__table-21c30a80-4f00-4e2f-aaa3-a96f4cbbf8d5"
class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry"><strong>Field</strong></td>
<td class="entry"><strong>Required</strong></td>
<td class="entry"><strong>Description</strong></td>
</tr>
<tr class="even row">
<td class="entry"><strong>bid_uri</strong></td>
<td class="entry"></td>
<td class="entry">the path/filename that specifies the destination for
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Bid Requests</a> (e.g. "/bidder")</td>
</tr>
<tr class="odd row">
<td class="entry"><strong>ready_uri</strong></td>
<td class="entry"></td>
<td class="entry">the path/filename that specifies the destination for
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/ready-request.html"
class="xref" target="_blank">Ready Requests</a> (e.g. "/ready")</td>
</tr>
<tr class="even row">
<td class="entry"><strong>notify_uri</strong></td>
<td class="entry"></td>
<td class="entry">the path/filename that specifies the destination for
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/notify-request.html"
class="xref" target="_blank">Notify Requests</a> (e.g. "/notify")</td>
</tr>
<tr class="odd row">
<td class="entry"><strong>pixel_uri</strong></td>
<td class="entry"><strong>optional</strong></td>
<td class="entry">the path/filename that specifies the destination</td>
</tr>
<tr class="even row">
<td class="entry"><strong>click_uri</strong></td>
<td class="entry"><strong>optional</strong></td>
<td class="entry">the path/filename that specifies the destination for
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/click-request.html"
class="xref" target="_blank">Click Requests</a></td>
</tr>
<tr class="odd row">
<td class="entry"><strong>audit_notify_uri</strong></td>
<td class="entry"><strong>optional</strong></td>
<td class="entry">the path/filename that specifies the destination for
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/audit-notify-request.html"
class="xref" target="_blank">Audit Notify Requests</a> (For example, "<a
href="https://examplebidder.com/audit_notify_endpoint" class="xref"
target="_blank">https://examplebidder.com/audit_notify_endpoint</a>")</td>
</tr>
</tbody>
</table>







## View your Member Object

You need to have at least one member that buys through your bidder. You
should have had a member created for you by your Xandr representative as
part of the onboarding process. The member is where you will configure
much of the "business logic" such as user segments, creatives, etc.



Tip: In the example below, we make a
`GET` call to view the member object, but we don't explain any of its
details. Some of the fields which are displayed to you may be
deprecated. For more detailed information about the member object,
including which fields are currently supporting, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/member-service.html"
class="xref" target="_blank">Member Service</a>.



**Expand for Call Example**

``` pre
$ export IB="https://api.adnxs.com";
$ curl -b $IB/member/1234

{
  "response": {
    "count": 1,
    "dbg": {
      "output_term": "member",
      "version": "1.18.1651",
      "warnings": [
        
      ]
    },
    "member": {
      "account_owner_user": {
        "first_name": "Peter",
        "id": 123456,
        "last_name": "Driver"
      },
      "active": true,
      "active_contract": null,
      "age_segment_id": null,
      "agent_id": null,
      "allow_ad_profile_override": true,
      "allow_priority_audit": false,
      "audit_notify_email": null,
      "bidder_id": 1234,
      "billing_address_1": null,
      "billing_address_2": null,
      "billing_city": null,
      "billing_country": null,
      "billing_name": "ExampleMemberName",
      "billing_postal_code": null,
      "billing_region": null,
      "buyer_clearing_fee_pct": null,
      "buyer_credit_limit": 2500,
      "code": null,
      "contact_email": null,
      "contact_info": null,
      "contracts": null,
      "curation_deductions_allowed": false,
      "daily_imps_self_audited": null,
      "daily_imps_unaudited": null,
      "daily_imps_verified": null,
      "deal_visibility_profile_id": null,
      "default_accept_data_provider_usersync": true,
      "default_accept_demand_partner_usersync": true,
      "default_accept_supply_partner_usersync": true,
      "default_ad_profile_id": null,
      "default_buyer_group_id": null,
      "default_content_retrieval_timeout_ms": 0,
      "default_creatives": null,
      "default_enable_for_mediation": false,
      "default_external_audit": false,
      "default_tag_id": null,
      "description": null,
      "developer_id": null,
      "domain_blacklist_email": null,
      "dongle": null,
      "email_code": null,
      "enable_click_and_imp_trackers": false,
      "enable_facebook": false,
      "expose_eap_ecp_placement_settings": false,
      "gender_segment_id": null,
      "id": 1234,
      "is_iash_compliant": false,
      "last_activity": "2020-03-19 06:00:39",
      "max_hosted_video_size": null,
      "native_custom_keys": null,
      "platform_exposure": "public",
      "plugins_enabled": false,
      "pops_enabled_UI": false,
      "price_buckets": null,
      "prioritize_margin": false,
      "reporting_decimal_type": "decimal",
      "seller_member_groups": null,
      "seller_revshare_pct": null,
      "serving_domain": null,
      "sherlock_notify_email": null,
      "short_name": null,
      "tax_region_id": null,
      "thirdparty_pixels": null,
      "timezone": "EST5EDT",
      "vendor_id": null,
      "visibility_profile_id": null,
      "xd_coop": false
    },
    "num_elements": 100,
    "start_element": 0,
    "status": "OK"
  }
}
```





## Create a Bidder Profile



In this step, we'll go through the options in the bidder profile that
helps shape the traffic you receive. The bidder profile can be updated
using both the API and our <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-platform-user-interface.html"
class="xref" target="_blank">bidder UI.</a> The main documentation for
these are found here:

- API: <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/enhanced-bidder-profiles.html"
  class="xref" target="_blank">Enhanced Bidder Profiles</a>
- Bidder UI: <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/creating-a-new-bidder-profile.html"
  class="xref" target="_blank">Creating a New Bidder Profile</a> –
- Our bidder UI provides many other services, such as metrics and
  reporting. These can be found here:
  - Metrics: <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/metrics-screen.html"
    class="xref" target="_blank">Metrics Screen</a>
  - Creatives: <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/creatives-screen.html"
    class="xref" target="_blank">Creatives Screen</a>
  - Reporting: <a
    href="https://docs.xandr.com/bundle/xandr-bidders/page/reporting-screen.html"
    class="xref" target="_blank">Reporting Screen</a>



In the example below, the targeting breaks down like this:

- Include only our <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/exchange-service.html"
  class="xref" target="_blank">Direct Exchange</a> members
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/country-service.html"
  class="xref" target="_blank">Accept US based traffic only</a>
- Banner traffic, of all sizes
- Web traffic
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/unknown-users.html"
  class="xref" target="_blank">Allow for unknown users</a>



**Bidder Profile Example Json**

``` pre
$ cat create-bidder-profile-json

{
  "bidder_profile": {
    "active": true,
    "bidder_id": 1234,
    "description": "Example Bidder Profile",
    "targeting": {
      "ad_types": {
        "audio": {
          "action": "exclude"
        },
        "banner": {
          "action": "include",
          "sizes": [
            
          ]
        },
        "native": {
          "action": "exclude"
        },
        "video": {
          "action": "exclude"
        }
      },
      "countries": {
        "action": "include",
        "targets": [
          {
            "active": true,
            "code": "US",
            "id": 233,
            "name": "United States"
          }
        ]
      },
      "exchanges": {
        "action": "exclude",
        "targets": [
          {
            "id": 2,
            "name": "Connect"
          },
          {
            "id": 3,
            "name": "Network"
          }
        ]
      },
      "supply_types": {
        "action": "include",
        "targets": [
          "web"
        ]
      }
    },
    "unknown_users_action": "include"
  }
}
```







## Testing Profile

- Your Xandr Integration Engineer will help you to set up a bidder
  profile for testing.
- This profile will block all platform traffic except for that which is
  sent from our testing publisher
- Traffic from our testing member will allow you to simulate the bid
  stream, without having to worry about spend.





## Add a Test Creative

<div id="integrate-a-bidder__p-092cf467-2929-4909-aa5c-2c653cc36c34"
>

In this step, we'll add a creative. After we upload this creative, you
will need to set up your bidder to respond to a <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
class="xref" target="_blank">Bid Request</a> with a properly formatted
<a
href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
class="xref" target="_blank">Bid Response</a>. The bid response should
include this creative, either in the "crid" field, corresponding to your
internal id for the creative, or the "adid", which is the Xandr id for
the creative. This will test that your integration is working as
expected.



Tip: For more detailed information
about the many types of creative configurations, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
class="xref" target="_blank">Creative Service</a>.

For some tips on getting your creative set up, see our <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/quick-start-creative-buying-guide.html"
class="xref" target="_blank">Quick Start Creative Buying Guide</a>.







- This example shows a (very) old fashioned car design using the content
  field of the creative object. It uses our standard banner raw-html
  template.
- For more information on using the Client Testing environment to test
  the uploading of creatives, see <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/integrate-a-bidder.html#IntegrateaBidder-UsingtheClientTestingenvironment"
  class="xref" target="_blank">Using the Client Testing environment</a>
  below.



<div id="integrate-a-bidder__note-1e934dcb-6ca1-4308-a453-bfdcd113f8f3"


Note: Statuses

The "allow_audit and "allow_ssl_audit" fields have each been set to
true.

The "allow_audit" field submits the creative for our platform human
audit.

The "allow_ssl_audit" submits the creative for our automated scan to
determine if the creative can serve on secure inventory.





**Example Creative Json**

``` pre
$ cat add-creative.json
{
  "creative": {
    "width": 682,
    "height": 488,
    "landing_page_url": "https://en.wikipedia.org/wiki/Car",
    "content": "document.write('<a href=\\\"https://en.wikipedia.org/wiki/Car\\\" target=\\\"_blank\\\">\\r\\n <img src=\\\"https://upload.wikimedia.org/wikipedia/commons/3/3e/SteamMachineOfVerbiestIn1678.jpg\\\" />\\r\\n</a>')",
    "content_secure": "document.write('<a href=\\\"https://en.wikipedia.org/wiki/Car\\\" target=\\\"_blank\\\">\\r\\n <img src=\\\"https://upload.wikimedia.org/wikipedia/commons/3/3e/SteamMachineOfVerbiestIn1678.jpg\\\" />\\r\\n</a>')",
    "template": {
      "id": 6
    },
    "original_content": "<a href=\"https://en.wikipedia.org/wiki/Car\" target=\"_blank\">\r\n <img src=\"https://upload.wikimedia.org/wikipedia/commons/3/3e/SteamMachineOfVerbiestIn1678.jpg\" />\r\n</a>",
    "original_content_secure": "<a href=\"https://en.wikipedia.org/wiki/Car\" target=\"_blank\">\r\n <img src=\"https://upload.wikimedia.org/wikipedia/commons/3/3e/SteamMachineOfVerbiestIn1678.jpg\" />\r\n</a>",
    "click_action": "click-to-web",
    "click_target": "https://en.wikipedia.org/wiki/Car",
    "click_url": "https://en.wikipedia.org/wiki/Car",
    "allow_ssl_audit": true,
    "allow_audit": true
  }
}
```



<div id="integrate-a-bidder__p-7f7b7dcc-4ee2-4c0c-9fdc-429c77c249e4"
>

**Example Creative Upload**

``` pre
$ export IB="https://api.adnxs.com";
$ curl -b cookies -X POST -d @add-creative.json $IB/creative/1234
{
    "response": {
        "count": 1,
        "creative": {
            "active": true,
            "added_by_bidder": null,
            "adservers": null,
            "adx_audit": null,
            "allow_audit": true,
            "allow_ssl_audit": true,
            "audit_feedback": null,
            "audit_status": "pending",
            "backup_upload_status": nul
            "brand": {
                "category_id": 0,
                "id": 1,
                "name": "Unknown"
            },
            "brand_id": 1,
            "campaign": null,
            "categories": null,
            "click_action": "click-to-web",
            "click_target": "https://en.wikipedia.org/wiki/Car",
            "click_url": "https://en.wikipedia.org/wiki/Car",
            "code": null,
            "code2": null,
            "content": "document.write('<a href=\\\"https://en.wikipedia.org/wiki/Car\\\" target=\\\"_blank\\\">\\r\\n <img src=\\\"https://upload.wikimedia.org/wikipedia/commons/3/3e/SteamMachineOfVerbiestIn1678.jpg\\\" />\\r\\n</a>')",
            "content_secure": "document.write('<a href=\\\"https://en.wikipedia.org/wiki/Car\\\" target=\\\"_blank\\\">\\r\\n <img src=\\\"https://upload.wikimedia.org/wikipedia/commons/3/3e/SteamMachineOfVerbiestIn1678.jpg\\\" />\\r\\n</a>')",
            "content_source": "standard",
            "created_on": "2021-02-05 21:56:47",
            "custom_request_template": null,
            "description": null,
            "facebook_audit_feedback": null,
            "facebook_audit_status": null,
            "file_name": null,
            "flash_backup_url": null,
            "flash_backup_url_secure": null,
            "flash_click_variable": null,
            "height": 488,
            "id": 271833576,
            "ios_ssl_audit": null,
            "is_blanking": null,
            "is_expired": false,
            "is_hosted": false,
            "is_prohibited": false,
            "is_rotating": null,
            "is_self_audited": false,
            "is_suspicious": false,
            "landing_page_url": "https://en.wikipedia.org/wiki/Car",
            "language": {
                "id": 1,
                "name": "English"
            },
            "last_activity": "2021-02-05 21:56:47",
            "last_checked": null,
            "media_assets": null,
            "media_url": null,
            "media_url_secure": null,
            "member_id": 1234,
            "mobile": null,
            "native_attribute": null,
            "no_adservers": false,
            "not_found": 0,
            "original_content": "<a href=\"https://en.wikipedia.org/wiki/Car\" target=\"_blank\">\r\n <img src=\"https://upload.wikimedia.org/wikipedia/commons/3/3e/SteamMachineOfVerbiestIn1678.jpg\" />\r\n</a>",
            "original_content_secure": "<a href=\"https://en.wikipedia.org/wiki/Car\" target=\"_blank\">\r\n <img src=\"https://upload.wikimedia.org/wikipedia/commons/3/3e/SteamMachineOfVerbiestIn1678.jpg\" />\r\n</a>",
            "passed_sherlock_audit": true,
            "pixels": null,
            "placement": null,
            "political": null,
            "segments": null,
            "size_in_bytes": 0,
            "sla": "0",
            "sla_eta": "2021-02-08 15:58:47",
            "ssl_status": "pending",
            "status": {
                "hosted_assets_association_complete": null,
                "user_ready": true
            },
            "suspicious_activity_timestamp": null,
            "technical_attributes": [
                {
                    "id": 1,
                    "name": "Image"
                }
            ],
            "template": {
                "id": 6
            },
            "text_description": null,
            "text_display_url": null,
            "text_title": null,
            "thirdparty_campaign_id": null,
            "thirdparty_creative_id": null,
            "thirdparty_page": null,
            "thirdparty_pixels": null,
            "thirdparty_viewability_providers": null,
            "vendors": null,
            "video_attribute": null,
            "width": 682
        },
        "dbg": {
            "output_term": "creative",
            "version": "1.18",
            "warnings": []
        },
        "id": "271833576",
        "num_elements": 100,
        "start_element": 0,
        "status": "OK"
    }
}
```







## Add a Bidder Instance

<div id="integrate-a-bidder__p-10746c31-e50e-4916-af86-4365cc19b7f7"
>

The bidder instance object represents a particular bidder server running
in the data center. This information stored in this object determines
where we send traffic. In this example, we set the data center ID to
(NYM).



Warning: This step assumes that you
already have a bidder up and running that can respond to bid requests,
ready requests, etc., as detailed in the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/integrate-a-bidder.html#IntegrateaBidder-SystemOverview"
class="xref" target="_blank">System Overview</a>.





Tip: For more information about
configuring a bidder instance, see the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-instance-service.html"
class="xref" target="_blank">Bidder Instance Service</a>







id="p-e5f3601a-6595-4027-9635-616d6c552ecb"\>In this example we set an
IP address and port to which traffic should be sent.

- We also support the use of hostnames.
  - When present, hostnames take precedent.
  - Our bidder-instance service requires an IP address to be present on
    upload. If you would like to use a hostname, a dummy IP can put
    placed in the object upload.
- The full path we will send traffic to is
  - https://\[hostname or IP\]:\[port\]\[bidder.bid_uri\]

    <div id="integrate-a-bidder__p-4b72dc7a-4110-4b0e-a28c-b1e7058d7c76"
    >

    - The bidder.bid_uri is set in your bidder object.
    - This path should be unique per bidder

    
- It is also highly recommended that you place a queries per second
  (QPS) limit on the bidder instance to ensure your servers are not
  inundated with traffic.
- We highly recommend keeping the bidder instance inactive until you are
  ready to receive traffic in order to avoid accidental spend.



**Example Bidder Instance Object**

``` pre
$ cat create-bidder-instance.json
{
    "instance": {
        "bidder_id": 123,
        "active": true,
        "datacenter_id": 6,
        "ip_address": "10.3.64.215",
        "port": 80
        "qps_limit": 10000,
    }
}
```

<div id="integrate-a-bidder__p-6f42c8c5-bcfb-457b-bcf3-2fc7e00db28d"
>

**Output**

``` pre
$ export IB="https://api.adnxs.com";
$ curl -b cookies -X POST -d @create-bidder-instance.json $IB/bidder-instance/123
{
  "response": {
    "status": "OK",
    "count": 1,
    "start_element": null,
    "num_elements": null,
    "id": 1543,
    "instance": {
      "id": 1543,
      "bidder_id": 123,
      "active": true,
      "datacenter_id": 6,
      "ip_address": "10.3.64.215",
      "port": 80,
      "hostname": null,
      "qps_limit": 10000,
      "dns_interval": null,
      "min_conns": 1,
      "max_conns": null,
      "receive_type_id": 0
    },
    "count": 1,
    "dbg": {
      "output_term": "bidder",
      "version": "1.0.5",
      "warnings": [
        
      ]
    },
    "num_elements": 100,
    "start_element": 0,
    "status": "OK"
  }
}
```







## Bid Response

- The bid response should be formatted correctly in order for your
  bidder to submit bids properly. The required fields can be found <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
  class="xref" target="_blank">here</a>.
  <div id="integrate-a-bidder__note-9963cac1-c413-4281-9f68-ca6b376a64c4"
  

  Note: Since you are integrating with
  buyer seat id, the seatbid.seat field should be your own internal ids.

  
- If you require an example of a bid request to use, your Xandr
  representative should be able to provide you with one. The supported
  bid request fields with examples can be found <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
  class="xref" target="_blank">here</a>.

**User Sync**

- In order to inform your bidding activity, we have methods for syncing
  your internal user ids with Xandr's.
- For our bidder partners, the norm is to use /getuid. More information
  on this service can be found here: <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/synchronize-your-user-ids.html"
  class="xref" target="_blank">Synchronize Your User IDs</a>





## Test the Integration



**Ready Requests**

- In order to receive bid requests from our servers, your bidder must
  first respond correctly to our ready requests.
- Ready requests are sent to https://\[hostname or
  IP\]:\[port\]\[bidder.ready_uri\]
  - The bidder.ready_uri is set in your bidder object.
- Your response must contain "1" somewhere in the body.
- Further Details can be found <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/ready-request.html"
  class="xref" target="_blank">here</a>.





**Bid Stream Testing**

- Your Xandr Integration Engineer will help you test the bid stream.
- This will likely involve sending you bid requests from a testing
  publisher page.
- Ideally you will respond to these requests, win our auction, and have
  your creative served to the test page
- From there you can proceed to
  - Test any macros or trackers to make sure they work as expected.
  - Check that discrepancies are within acceptable ranges.







## Creative Registration Process

<div id="integrate-a-bidder__note_yql_m1m_tyb"


Note: We recommend you log the Xandr
creative IDs on your system.



- Creative pre-registration is a requirement for display, video, and
  native creatives
  - You must be able to readily upload creatives to our systems and
    submit them to our audit process
- Review our <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-standards-and-auditing.html"
  class="xref" target="_blank">Creative Standards and Auditing</a>.
  Sellers require creatives to pass our audit policies in order to serve
  on their inventory.
- The registration process involves building API services to
  - Add the creative objects
  - Check for Status updates:
    - audit_status: this field indicates if the creative has passed the
      human audit that confirms the creative renders and clicks
      properly.
    - ssl_status: this field indicates if the creative has passed our
      automates SSL scanner.
    - is_prohibited: this field indicates if the creative has violated
      one of our policies.
  - Adjusts the creatives to correct any issues, as needed, based on the
    status fields
- You can use our client testing environment to test your upload
  workflows
  - Creatives submitted to our client testing environment are not
    audited. Please coordinate with your Xandr Integrations Engineer to
    test your creatives.
- Your creative submission workflows can be worked on in parallel with
  bid stream testing.

If you are still not seeing the bid requests you expect, double-check
your configuration against the instructions on this page. Contact your
Xandr representative if the problem persists.





## Using the Client Testing Environment

The Client Testing environment provides a version of the Impbus and
Impbus API that you can use to test your workflows and API
implementations. The Client Testing environment's codebase and data are
now updated every month. This means your testing environment will never
be more than 30 days (and often less) behind the version of Xandr code
that is running in Production. In addition, all Production data will
also automatically be copied over to the Client Testing environment
(including your member accounts and credentials) each month. This will
allow far more robust testing against the latest features.

<div id="integrate-a-bidder__p-85e95fc4-a187-447f-b436-00a408562a08"
>

For reference, here are the endpoints for the Production and Client
Testing environments.

<table
id="integrate-a-bidder__table-3910bd3a-65f3-47d7-99c2-318c4660a381"
class="table">
<tbody class="tbody">
<tr class="odd row">
<td class="entry">Product</td>
<td class="entry">Product endpoint</td>
<td class="entry">Client Testing endpoint</td>
</tr>
<tr class="even row">
<td class="entry">Impbus</td>
<td class="entry"><a href="http://ib-test.adnxs.com/" class="xref"
target="_blank">https://ib.adnxs.com</a></td>
<td class="entry"><a href="http://ib-test.adnxs.com/" class="xref"
target="_blank">https://ib-test.adnxs.com</a></td>
</tr>
<tr class="odd row">
<td class="entry">Impbus API</td>
<td class="entry"><a href="http://api.adnxs.com/" class="xref"
target="_blank">https://api.adnxs.com</a></td>
<td class="entry"><a href="http://api-test.adnxs.com/" class="xref"
target="_blank">https://api-test.adnxs.com</a></td>
</tr>
</tbody>
</table>







## Example Updates

**Bidder Object ready_uri and bid_uri**

<div id="integrate-a-bidder__p-6333dc3c-9e5e-4158-b715-50b9e88c4095"
>

- Update these fields to ensure our ready requests and bid requests,
  respectively, are sent to the right endpoints.





**Example Bidder Update**

``` pre
$ cat update-uris.json
{
    "bidder": {
        "ready_uri": "/example_ready_endpoint",
        "bid_uri": "/example_bid_endpoint"

    }
}
```



<div id="integrate-a-bidder__p-6e110b57-8249-4432-a4d6-4d4c50b6f659"
>

**Example Bidder Update Output**

``` pre
$ export IB="https://api.adnxs.com";
$ curl -b cookies -X PUT -d @update-uris.json $IB/bidder/1234?fields=active,bid_uri,id,ready_uri

{
    "response": {
        "bidder": {
            "active": true,
            "bid_uri": "/example_bid_endpoint",
            "id": 1234,
            "ready_uri": "/ready/",
        },
        "count": 1,
        "dbg": {
            "output_term": "bidder",
            "version": "1.0.5",
            "warnings": []
        },
        "id": "1234",
        "num_elements": 100,
        "start_element": 0,
        "status": "OK"
    }
} 
```



**Update member object audit notify email**

<div id="integrate-a-bidder__p-12a5c5f0-462a-4238-b32d-59f6b4ee3cab"
>

- Update these fields to ensure you receive notifications for creatives
  you upload to our system.





**Example Member Update**

``` pre
$ cat update-email.json
{
    "member": {
        "audit_notify_email": "your_email@email.com"

    }
}
```



<div id="integrate-a-bidder__p-88b4dca8-a16c-46ee-afbd-8a87ca7dd5ba"
>

**Example Member Update Output**

``` pre
$ export IB="https://api.adnxs.com";
$ curl -b cookies -X PUT -d @update-email.json $IB/member/5678?fields=active,audit_notify_email,id

{
    "response": {
        "member": {
            "active": true,
            "audit_notify_email": "your_email@email.com",
            "id": 5678,
        },
        "count": 1,
        "dbg": {
            "output_term": "member",
            "version": "1.0.5",
            "warnings": []
        },
        "id": "5678",
        "num_elements": 100,
        "start_element": 0,
        "status": "OK"
    }
} 
```





<div id="integrate-a-bidder__section_qbx_5zq_dtb"
>

## Related Topics

- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-instance-service.html"
  class="xref" target="_blank">Bidder Instance Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/enhanced-bidder-profiles.html"
  class="xref" target="_blank">Bidder Profile Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/creative-service.html"
  class="xref" target="_blank">Creative Service</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/outgoing-bid-request-to-bidders.html"
  class="xref" target="_blank">Bid Request Specification</a>
- <a
  href="https://docs.xandr.com/bundle/xandr-bidders/page/incoming-bid-response-from-bidders.html"
  class="xref" target="_blank">Bid Response Specification</a>






