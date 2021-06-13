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

      def send_request(api_path)
        api_url = "#{host}/api/v2#{api_path}"
        login unless cookies
        response = yield(api_url)
        raise QBittorrent::Error, "Response faild #{response.status.code}" unless response.status.success?

        QBittorrent::WebApi::Response.new(true, response)
      rescue QBittorrent::Error => e
        QBittorrent::WebApi::Response.new(false, e.response, e.message)
      rescue StandardError => e
        QBittorrent::WebApi::Response.new(false, response, e.message)
      end
    end
  end
end
