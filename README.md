# How to retrieve parameters from an appsignal exception ?

open a terminal with `$ irb`

then

```rb
require './loader.rb'

helper = ApiHelper.new(
  exception: 'ActionController::ActionControllerError',
  limit: 10,
  action: 'MyController-hash-create',
  since: 1537374524,
)

p helper.retrieve_parameters.uniq
```
