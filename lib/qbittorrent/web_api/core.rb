module QBittorrent
  module WebApi
    module Core
      private

      def api_client
        headers = {
          'Referer' => host
        }
        headers.merge!('Cookie' => cookies) if cookies
        http = HTTP.headers(headers)
        http = http.use(logging: { logger: logger }) if logger
        http = http.timeout(global_options[:timeout]) if global_options[:timeout]
        http
      end

      def prepare_url(path)
        "#{host}/api/v2#{path}"
      end

      def send_request(is_json)
        login unless cookies
        response = yield
        raise QBittorrent::Error, "Response faild #{response.status.code}" unless response.status.success?

        result = response.to_s
        result = JSON.parse(result) if is_json
        {
          status: true,
          data: result
        }
      rescue StandardError => e
        {
          status: false,
          data: e.message
        }
      end
    end
  end
end
