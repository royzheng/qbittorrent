module QBittorrent
  module WebApi
    class Response
      attr_accessor :is_success, :response, :message, :data

      def initialize(is_success, response, message = nil)
        @is_success = is_success
        @response = response
        @message = message
        @data = begin
          JSON.parse(response.to_s)
        rescue StandardError => _e
          response.to_s
        end
      end

      def success?
        is_success
      end
    end
  end
end
