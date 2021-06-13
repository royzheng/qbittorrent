module QBittorrent
  module WebApi
    module App
      def application_version
        send_request('/app/version') do |api_url|
          api_client.get(api_url)
        end
      end

      def api_version
        send_request('/app/webapiVersion') do |api_url|
          api_client.get(api_url)
        end
      end

      def build_info
        send_request('/app/buildInfo') do |api_url|
          api_client.get(api_url)
        end
      end

      def preferences
        send_request('/app/preferences') do |api_url|
          api_client.get(api_url)
        end
      end

      def set_preferences(**options)
        send_request('/app/setPreferences') do |api_url|
          api_client.post(api_url, form: { json: options.to_json })
        end
      end

      def default_save_path
        send_request('/app/defaultSavePath') do |api_url|
          api_client.get(api_url)
        end
      end

      def shutdown
        send_request('/app/shutdown') do |api_url|
          api_client.post(api_url)
        end
      end
    end
  end
end
