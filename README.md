**Zipcode Micro-Service**
----
  A micro-service designed to be used with [Community Compose](https://github.com/zachholcomb/community_compose).
  
  Retrieves zipcodes within a 10 mile radius of the zipcode sent with the request. 

* **URL**

  `/:zip`* 

* **Method:**
  
  `GET` 

* **Success Response:**
  
```
{
  "zip_codes": [
    {
      "zip_code":"08026",
      "distance":9.731,
      "city":"Gibbsboro",
      "state":"NJ"
    }
  ]
}

```

* **Sample Call:**

  `get 'http://localhost:9292/80223'`
 
* **Setup:**
 - Fork and clone this repo
 - Run `bundle install`
 - Run `rackup` to start the server
