---
Title : Video Guidance
Description : This page includes guidance on running video inventory through Prebid
ms.date: 10/28/2023
Server Premium (PSP).
---


# Video Guidance



This page includes guidance on running video inventory through Prebid
Server Premium (PSP).



## Instream



- Include the Xandr PSP `cache.url` object in
  the config settings as shown in the following example:

  ``` pre
  pbjs.setConfig({
     "cache":{
        "url":"https://ib.adnxs.com/prebid/cache"
     },
     "debug":true,
     "enableSendAllBids":true,
     "s2sConfig":{
        "accountId":9325,
        "bidders":[
           "appnexus"
        ],
        "defaultVendor":"appnexuspsp"
     }
  });                        
                          
  ```

- To ensure that the relevant cache key-values are returned, include the
  `extPrebid.cache.bids[{}]` object within the `s2sConfig` as shown in
  the following example:

  ``` pre
  extPrebid = ([
     {
        "cache":{
           "bids":[
              {
                 "bidder":"appnexus",
                 "params":{
                    "placementId":1234567
                 }
              }
           ]
        },
        "targeting":{
           "includebidderkeys":true,
           "includewinners":true
        }
     }
  ])                       
                          
  ```







## Outstream



- To ensure that the ad request is made for `Prebid.js s2s` (with PSP),
  include the renderer object within the adUnit definition as shown in
  the following example:

  ``` pre
  var adUnits = ([
     {
        "code":"video1",
        "//first_comment":"This renderer would apply to all prebid creatives.",
        "renderer":{
           "url":"https://acdn.adnxs.com/video/outstream/ANOutstreamVideo.js",
           "render":"function (bid)",
           "ANOutstreamVideo.renderAd":{
              "targetId":"bid.adUnitCode",
              "adResponse":"bid.adResponse"
           }
        },
        "mediaTypes":{
           "video":{
              "context":"outstream",
              "playerSize":[
                 640,
                 480
              ],
              "mimes":[
                 "video/mp4"
              ],
              "protocols":[
                 1,
                 2,
                 3,
                 4,
                 5,
                 6,
                 7,
                 8
              ],
              "playbackmethod":[
                 2
              ],
              "skip":0,
              "playback_method":[
                 "auto_play_sound_on"
              ]
           }
        },
        "bids":[
           {
              "bidder":"appnexus",
              "params":{
                 "placementId":1234567,
                 "//first_comment":"Your placement ID."
              }
           }
        ]
     }
  ])                        
                          
  ```

- Xandr response includes `prebid.type=video`,
  but if the user sets additional key-value targeting for Prebid, as
  shown in the below example, then the `hb_format=video` key-value will
  be sent to Google Ad Manager (GAM) and can be targeted accordingly.

  ``` pre
  {
     "targetingControls":{
        "addTargetingKeys":[
           "SOURCE",
           "ADOMAIN",
           "FORMAT"
        ]
     }
  }                        
                          
  ```

- To leverage passing contextual key-values into the auction, be sure to
  upgrade to `Prebid.js` version 6.14.0 or higher, and define
  adUnit-level keywords accordingly. To ensure that the ad request is
  made properly for `Prebid.js s2s` (with PSP), pass adUnit-level
  keywords to Xandr by including the keywords
  object within the adUnit definition as shown in the following example:

  ``` pre
  var adUnits = ([
     {
        "code":"div-1",
        "mediaTypes":{
           "banner":{
              "sizes":[
                 {
                    "height":600,
                    "width":160
                 }
              ]
           }
        },
        "bids":[
           {
              "bidder":"appnexus",
              "params":{
                 "placementId":21230286,
                 "keywords":{
                    "test-key":[
                       "test-value"
                    ]
                 }
              }
           }
        ]
     }
  ])
  ```

- For more information, see <a
  href="https://docs.prebid.org/features/firstPartyData.md#supplying-adunit-specific-data"
  class="xref" target="_blank">Ad Unit specific data</a> and <a
  href="https://docs.prebid.org/dev-docs/bidders/appnexus.md#appnexus-auction-keywords"
  class="xref" target="_blank">auction-level keywords</a>.








