require './loader.rb'

helper = ApiHelper.new(
  exception: 'ActionController::ActionControllerError',
  limit: 400,
  action: 'PledgesController-hash-create',
  since: 1537374524,
)

p helper.retrieve_parameters.uniq
