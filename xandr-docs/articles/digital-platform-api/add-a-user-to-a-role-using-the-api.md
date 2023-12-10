---
Title : Add a User to a Role using the API
Description : This page has instructions for adding a user to a role.
ms.date: 10/28/2023
ms.custom: digital-platform-api
---


# Add a User to a Role using the API



This page has instructions for adding a user to a role.

For general information about roles, see <a
href="working-with-roles-using-the-api.md"
class="xref" target="_blank">Working with Roles using the API</a>.

For instructions on creating your own roles, see <a
href="create-a-custom-role-using-the-api.md"
class="xref" target="_blank">Create a Custom Role using the API</a>.



## Step 1. Create user role JSON

In this example we'll add a user to the role with role ID 35. Here's the
JSON we need -- note that the `user_id` and `role_id` are required:

``` pre
$ cat add-user-role.json
{
   "access-member-user-role" : [
      {
         "user_id" : 1234,
         "role_id" : 35
      }
   ]
}
```




## Step 2. POST user role JSON to the User Role API

Now `POST` the user role JSON to the **Access Member User Role Service**
to make the update:

``` pre
$ curl -b cookies -X POST -d '@add-user-role.json' "https://api.appnexus.com/access-member-user-role?user_id=1234&member_id=1282" 
{
   "response" : {
      "count" : 1,
      "num_elements" : 1,
      "status" : "OK",
      "access-member-user-role" : [
         {
            "user_id" : 1234,
            "id" : 142,
            "role_id" : 35,
            "platform_role" : false
         }
      ],
      "start_element" : 0
   }
}
      
```

Now we can take a look at the user's assigned role. Because this is a
custom role, `"platform_role"` is `false`.

``` pre
{
   "response" : {
      "status" : "OK",
      "access-member-user-role" : [
         {
            "user_id" : 1234,
            "role_id" : 35,
            "platform_role" : false,
            "id" : 142
         }
      ],
      "count" : 1,
      "num_elements" : 1,
      "start_element" : 0
   }
}
      
```

  
You can also assign multiple roles to a single user:

``` pre
$ cat add-multiple-user-roles.json
{
   "access-member-user-role" : [
      {
         "user_id" : 1234,
         "role_id" : 35
      },
      {
         "user_id" : 1234,
         "role_id" : 12
      },
      {
         "user_id" : 1234,
         "role_id" : 41
      }
   ]
}
```




## Related Topics

- <a href="working-with-roles-using-the-api.md" class="xref">Working
  with Roles using the API</a>
- <a href="create-a-custom-role-using-the-api.md" class="xref">Create a
  Custom Role using the API</a>
- <a href="view-system-resources-using-the-api.md" class="xref">View
  System Resources using the API</a>






