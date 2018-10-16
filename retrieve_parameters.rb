helper = ApiHelper.new(
  exception: 'NoMethodError',
  limit: 1000,
  action: 'ProjectsController-hash-show',
  since: 1537401600,
)

p helper.retrieve_parameters
