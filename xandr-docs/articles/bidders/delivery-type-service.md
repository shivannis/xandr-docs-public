---
title: Microsoft Bidders - Delivery Type Service
description: The article introduces a delivery type service in the Xandr system, enabling users to utilize the read-only Delivery Type Service. This service allows users to view registered video content delivery types, with the option to add video content fields to line item or deal line item targeting.
ms.date: 10/28/2023
---

# Delivery type service

Use the read-only Delivery Type Service to see what video content delivery types are registered in the Xandr system. Video content fields can be added to line item or deal line item targeting.

## REST API

| HTTP Method | Endpoint | Description |
|--|--|--|
| GET | `https://api.adnxs.com/video-delivery-type` | To view all defined delivery types. |
| GET | `https://api.adnxs.com/video-delivery-type?id=<id value>` | To view a defined delivery type. |

## JSON fields

| Field | Type | Description |
|--|--|--|
|  |  |  |
| `id` | int | The Xandr referential ID associated with the delivery type. |
| `name` | string | The video taxonomy referential value.<br>**Required On**: POST/PUT |
| `last_modified` | timestamp | The time of last modification. |

## Example

**To retrieve all defined delivery types**

```
curl -b cookies -c cookies "https://api.adnxs.com/video-delivery-type"
{
  "response": {
    "status": "OK",
    "start_element": 0,
    "num_elements": 100,
    "video-delivery-types": [
      {
        "id": 1,
        "name": "Live",
        "last_modified": "2020-09-21 13:59:43"
      },
      {
        "id": 2,
        "name": "VOD",
        "last_modified": "2020-09-21 13:59:43"
      }
    ],
    "count": 2,
    "dbg_info": {
      "warnings": [],
      "version": "1.0.194",
      "output_term": "video-delivery-types"
    }
  }
  }
```

## Related topics

- [Profile Service](../digital-platform-api/profile-service.md)
- [API Best Practices](../digital-platform-api/api-best-practices.md)
- [API Semantics](../digital-platform-api/api-semantics.md)