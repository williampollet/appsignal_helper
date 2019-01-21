# AppSignal Helper

## Setup

You will need the following env vars:

```sh
export APPSIGNAL_URL=https://appsignal.com
export APPSIGNAL_API_TOKEN=…
export APP_ID=…
```

You can then start a console to play with the API:

```sh
bin/console
```

## Retrieve parameters from an AppSignal exception

```rb
helper = ApiHelper.new(
  exception: 'MyController::MyControllerError', # exception code on AppSignal
  limit: 10, # number of occurence to fetch
  action: 'MyController-hash-create', # action that raised the error
  since: 1537374524, # fetch since
)

p helper.retrieve_parameters.uniq
```
