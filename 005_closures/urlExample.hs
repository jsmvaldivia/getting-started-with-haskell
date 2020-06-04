getRequestUrl host apiKey resource id = host ++
                                     "/" ++
                                     resource ++
                                     "/" ++
                                     id ++
                                     "?token=" ++
                                     apiKey
-- host builder
hostBuilder host = (\apiKey resource id -> getRequestUrl host apiKey resource id)
----example
exampleUrlBuilder = hostBuilder "http://example.com"

--exampleUrlBuilder "1337hAsk311" "book" "123"

-- api builder
apiBuilder hostBuilder apiKey = (\resource id -> hostBuilder apiKey resource id)
---- example
exampleLeetHaskellBuilder = apiBuilder exampleUrlBuilder "1337hAsk311"