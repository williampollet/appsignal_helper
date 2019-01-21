## How to retrieve parameters from an appsignal exception ?

open a terminal with `$ irb`

then

```rb
require './loader.rb'

helper = ApiHelper.new(
  exception: 'MyController::MyControllerError', # exception code on appsignal
  limit: 10, # number of occurence to fetch
  action: 'MyController-hash-create', # action that raised the error
  since: 1537374524, # fetch since
)

p helper.retrieve_parameters.uniq
```
