# Simple User Authentication

Sometimes when learning to manage authentication in your front-end application, you need a simple way to test that. This app can be used for that.

## Base URL

The base URL for this project is:

```
https://user-auth-test.herokuapp.com
```

## Register Endpoint

**URL:** `/register`

- Type: `POST`
- Required Body: A JSON object containing the following:
  - `email`
  - `password`
  - `full_name`
  - `message`
  
 **Returns**
 
```json
{
    "success": "true",
    "email": "<EMAIL>"
}
```

## Login Endpoint

**URL:** `/login`

- Type: `POST`
- Required Body: A JSON object containing the following:
  - `email`
  - `password`
  
 **Returns**
 
```json
{
    "success": "true",
    "email": "<EMAIL>",
    "auth_token": "<TOKEN>"
}
```


## Dashboard Endpoint

**URL:** `/dashboard`

- Type: `GET`
- Required Body: *Nothing*
- Required Headers: 
  - Key: `X-AUTH-TOKEN`
  - Value: *Token provided from /login request*
  
 **Returns**
 
```json
{
    "success": "true",
    "email": "<EMAIL>",
    "full_name": "<FULL_NAME>",
    "message": "<MESSAGE>"
}
```