class ApiHelper
  def initialize(exception: nil, limit: nil, since: nil, action: nil)
    @exception = exception
    @limit = limit
    @since = since
    @action = action
  end

  def retrieve_parameters
    samples_ids.each_with_object([]) do |id, object|
      object << JSON.parse(sample(id)["params"])
    end.flatten
  end

  private

  attr_reader :exception, :limit, :since, :action

  def samples_ids
    samples["log_entries"].map{|s| s["id"]}
  end

  def samples
    AppsignalApi.new.samples(exception: exception, limit: limit, since: since, action: action)
  end

  def sample(id)
    AppsignalApi.new.show(id)
  end
end
