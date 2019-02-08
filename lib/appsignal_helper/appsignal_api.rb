module AppsignalHelper
  class AppsignalApi
    def errors_samples
      JSON.parse(client.get("/api/#{ENV['APP_ID']}/samples/errors.json?token=#{ENV['APPSIGNAL_API_TOKEN']}").body)
    end

    def samples(exception: nil, since: nil, limit: nil, action: nil)
      JSON.parse(client.get("/api/#{ENV['APP_ID']}/samples.json?token=#{ENV['APPSIGNAL_API_TOKEN']}&exception=#{exception}&since=#{since}&limit=#{limit}&action_id=#{action}").body)
    end

    def show(id)
      JSON.parse(client.get("/api/#{ENV['APP_ID']}/samples/#{id}.json?token=#{ENV['APPSIGNAL_API_TOKEN']}").body)
    end

    private

    def client
      Faraday.new(ENV['APPSIGNAL_URL']) do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to $stdout
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    end
  end
end
