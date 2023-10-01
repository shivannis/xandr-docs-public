---
Title : View System Resources using the API
Description : The way the API grants user permissions is by granting access to
*resources*. A resource describes a set of capabilities for a user. For
---


# View System Resources using the API



The way the API grants user permissions is by granting access to
*resources*. A resource describes a set of capabilities for a user. For
example, resource ID 157 is `"UI API Ad Profile Create"`, which allows
the user with access to that resource to create an ad profile using the
API.

This page describes how to view the system resources that you may assign
to a role. This is usually because you want to <a
href="https://docs.xandr.com/bundle/xandr-api/page/create-a-custom-role-using-the-api.html"
class="xref" target="_blank">Create a Custom Role using the API</a>.

To see what system resources a member can assign to user roles, make a
`GET` call to the service. Be sure to include the `member_id` in the
query string.

``` pre
$ curl -bc 'https://api.appnexus.com/access-resource?member_id=1282'
```

The output is an array of system resource objects. Examine it to see
what system resources the member has access to and could assign to a
role. Each resource looks like this:

``` pre
{
        "id": 157,
        "name": "hbapi-ad-profile-post",
        "description": "UI API Ad Profile Create",
        "system": "hbapi",
        "service": "/ad-profile",
        "action": "POST",
        "field": "",
        "resource_type": "api",
        "last_modified": "2016-03-28 18:00:08",
        "display_eligible": false
}
```

<div id="ID-0000167d__section_gbr_rvs_twb" >

## Related Topics

<a
href="https://docs.xandr.com/bundle/xandr-api/page/working-with-roles-using-the-api.html"
class="xref" target="_blank">Working with Roles using the API</a>

<a
href="https://docs.xandr.com/bundle/xandr-api/page/create-a-custom-role-using-the-api.html"
class="xref" target="_blank">Create a Custom Role using the API</a>

<a
href="https://docs.xandr.com/bundle/xandr-api/page/add-a-user-to-a-role-using-the-api.html"
class="xref" target="_blank">Add a User to a Role using the API</a>






