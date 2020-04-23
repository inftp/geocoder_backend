# GeocoderBackend

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## Example
### Query
```js
{
  locations(address: "VIC") {
      address
      lat
      lng
  }
}
```

### Response
```json
{
    "data": {
        "locations": [
            {
                "address": "1009 Burwood Hwy, Ferntree Gully VIC Australia 3156",
                "lat": -37.88858,
                "lng": 145.28906
            },
            {
                "address": "1669 Burwood Hwy, Belgrave VIC Australia 3160",
                "lat": -37.90902,
                "lng": 145.35428
            }
        ]
    }
}
```
