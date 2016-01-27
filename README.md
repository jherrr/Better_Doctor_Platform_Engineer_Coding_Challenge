##  Jeffrey Her - BetterDoctor Platform Engineer Coding Challenge

1. This project provides a simple Rails API
that proxies the BetterDoctor API. It has a
 single endpoint:

/api/v1/doctors/search?name=

2. Search for a doctor by name from BetterDoctor's
API. Results are cached. An API call will only be
made to BetterDoctor's servers only if the query is
not found within the cache. Results expire after 30 minutes.

3. MemoryStore was used as the cache type in Rails.
Though this type of cache has a drawback in that cached
memory cannot be shared between processes, it has the
advantage of being easy to use and set up.

4. Rails 4.2.4 and Ruby 2.2 were used.
