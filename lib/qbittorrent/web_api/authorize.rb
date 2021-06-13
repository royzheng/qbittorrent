module QBittorrent
  module WebApi
    module Authroize
      def login
        response = api_client.post(prepare_url('/auth/login'), form: {
                                     username: username,
                                     password: password
                                   })
        raise QBittorrent::Error, 'Authroize faild' unless response.headers['set-cookie']

        @cookies = response.headers['set-cookie'].split(';')[0]
      end

      def application_version
        send_request(false) do
          api_client.get(prepare_url('/app/version'))
        end
      end

      def api_version
        send_request(false) do
          api_client.get(prepare_url('/app/webapiVersion'))
        end
      end
    end
  end
end
