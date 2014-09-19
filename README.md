Sinatra-API-Tutorial
====

In this tutorial I will try to show a very basic example of how two Sinatra apps can interact via an API using JSON. 
- The PrimeChecker validates a number for being a prime number or not and returns a JSON accordingly. 
- The NumberService returns a hash that contains the tested number as well as whether the tested number is a prime number or not. 
- To validate the number on being a prime or not the NumberService makes a request to the PrimeChecker.

I'm assuming you have worked with Sinatra before. If not you might want to familiarize yourself with the framework [here].

[here]:http://www.sinatrarb.com/documentation.html
[HTTParty]:https://rubygems.org/gems/httparty

Feel free to send pull requests for the readme or questions about this.

What could be added
----
- Integration tests for both apps interacting
- Step by step explanation
- Variable ports?

Gems
---
- [HTTParty]

How to run servers
---
```sh
cd NumberService
bundle exec ruby ./lib/number_service.rb -p 5000
```

```sh
cd PrimeChecker
bundle exec ruby ./lib/prime_checker.rb -p 5001
```

How to run test
---

```sh
cd NumberService
bundle exec rspec ./spec/number_service_spec.rb 
```

```sh
cd PrimeChecker
bundle exec rspec ./spec/prime_checker_spec.rb 
```

How to use
---
```sh
curl localhost:5000/10
#'10' could be any number you want!
```
