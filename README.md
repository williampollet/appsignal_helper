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
  exception: 'ActionController::ActionControllerError',
  limit: 400,
  action: 'PledgesController-hash-create',
  since: 1537374524,
)

p helper.retrieve_parameters.uniq
```
