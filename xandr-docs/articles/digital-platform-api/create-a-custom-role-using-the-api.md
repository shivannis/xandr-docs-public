---
Title : Create a Custom Role using the API
Description : A role is a set of permissions that is assigned to a user. In addition
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# Create a Custom Role using the API



A role is a set of permissions that is assigned to a user. In addition
to the platform roles such as **Network Admin**, you can also create
custom roles, that have just the set of permissions you want.

The way the API grants user permissions is by granting a user access to
*resources*.

This page shows you how to create a custom role using the API.



## Step 1. Determine the role resources

When designing a custom role, first you have to determine what resources
the role will have access to. For example, a role could have access to
resource ID 157, `"UI API Ad Profile Create"`, which will allow users in
that role to create <a
href="ad-profile-service.md"
class="xref" target="_blank">ad profiles</a>.

To see the list of resources in the system that a member's users could
potentially have access to, see <a
href="view-system-resources-using-the-api.md"
class="xref" target="_blank">View System Resources using the API</a>.

In this example, our custom role will have access to the following
resources:

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000015ff__entry__1" class="entry colsep-1 rowsep-1">ID</th>
<th id="ID-000015ff__entry__2" class="entry colsep-1 rowsep-1">Role</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015ff__entry__1">1</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000015ff__entry__2">API
Yield Auction Tier Create</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000015ff__entry__1">2</td>
<td class="entry colsep-1 rowsep-1" headers="ID-000015ff__entry__2">API
Payment Rule Read</td>
</tr>
</tbody>
</table>





## Step 2. Create role JSON

To give our new role access to these resources, we'll need to upload a
JSON object like the one below. Note that the `name` and the list of
`resources` are required. Here's a "first draft" of the role JSON, which
we'll need to add to in the next step.

``` pre
{
   "access-member-role" : {
      "description" : "Auction Tiers and Payment Rules Only",
      "resources" : [
         {
            "id" : 1
         },
         {
            "id" : 2
         }
      ],
      "name" : "[test] auction-tier-payment-rule"
   }
}
```





## Step 3. Find out resource dependencies

A given resource often has dependencies on other, more general
resources. To give your custom role access to all of the system
resources it needs, you must specify and add all of the dependencies
manually.

To make this easier, there is an API service you can use to find the
dependencies you need. Make a `GET` call to the **Access Resource
Dependency List Service** service as shown below. You must include the
`resource_id` query string parameter.

``` pre
$ curl -b /Users/username/.x-api-client/usor-env-cookies -X GET \
'https://api.appnexus.com/access-resource-dependency-list?resource_id=1'
```

You'll get back a list of resource IDs in the `children` field. You'll
need to add these IDs to your role JSON. Note that these dependencies
may have their own dependencies.

``` pre
{
   "response" : {
      "access-resource-dependency-list" : [
         {
            "children" : [
               153,
               163,
               171
            ],
            "resource_id" : 1,
            "parents" : [
               146
            ],
            "dependencies" : [
               153,
               163,
               171
            ]
         }
      ],
      "count" : 1,
      "start_element" : 0,
      "status" : "OK",
      "num_elements" : 0
   }
}
```



<b>Tip:</b>

Getting more information about a resource

If you want more information about any of a resource's dependencies,
take a look at it using the instructions in <a
href="view-system-resources-using-the-api.md"
class="xref" target="_blank">View System Resources using the API</a>.







## Step 4. Update role JSON with resource dependencies (if needed)

If your custom role's resources have any dependencies, add them to the
role JSON. It should look like the sample below.

``` pre
{
   "access-member-role" : {
      "name" : "[test] auction-tier-payment-rule",
      "resources" : [
         {
            "id" : 1
         },
         {
            "id" : 2
         },
         {
            "id" : 153
         },
         {
            "id" : 163
         },
         {
            "id" : 171
         }
      ],
      "description" : "Auction Tiers and Payment Rules Only"
   }
}
```




## Step 5. `POST` role JSON

`POST` the role JSON to the **Access Member Role Service**.

``` pre
$ curl  -b cookies -X POST -d '@create-custom-role.json' \
'https://api.appnexus.com/access-member-role?member_id=1282'
```

If all goes according to plan, you'll see a response like the one below.
If you forgot to specify a resource's complete list of dependencies,
you'll get back an error with the resource IDs of the dependencies you
need.

``` pre
{
   "response" : {
      "access-member-role" : [
         {
            "id" : 113,
            "last_modified" : "2016-04-04 21:05:48",
            "resources" : [
               {
                  "name" : "hbapi-ym-auction-tier-post",
                  "id" : 1
               },
               {
                  "id" : 2,
                  "name" : "hbapi-payment-rule-get"
               },
               {
                  "id" : 153,
                  "name" : "hbapi-ym-auction-tier-get"
               },
               {
                  "id" : 163,
                  "name" : "hbapi-ym-profile-get"
               },
               {
                  "name" : "hbapi-publisher-get",
                  "id" : 171
               }
            ],
            "description" : "Auction Tiers and Payment Rules Only",
            "member_id" : 1282,
            "name" : "[test] auction-tier-payment-rule"
         }
      ],
      "start_element" : 0,
      "status" : "OK",
      "count" : 1,
      "num_elements" : 1
   }
}
```




## Related Topics

- <a href="working-with-roles-using-the-api.md" class="xref">Working
  with Roles using the API</a>
- <a href="add-a-user-to-a-role-using-the-api.md" class="xref">Add a
  User to a Role using the API</a>
- <a href="view-system-resources-using-the-api.md" class="xref">View
  System Resources using the API</a>






