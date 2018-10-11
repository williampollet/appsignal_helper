helper = ApiHelper.new(
  exception: 'Streaker::Box::Error',
  limit: 100,
  action: 'Project::TrackWorker-hash-perform',
)

p helper.retrieve_parameters
