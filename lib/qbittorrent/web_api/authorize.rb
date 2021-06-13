module QBittorrent
  module WebApi
    module Authroize
      def login
        response = api_client.post("#{host}/api/v2/auth/login", form: {
                                     username: username,
                                     password: password
                                   })
        raise QBittorrent::Error.new('Authroize faild', response) unless response.headers['set-cookie']

        @cookies = response.headers['set-cookie'].split(';')[0]
      end

      def logout
        response = api_client.post("#{host}/api/v2/auth/logout")
        @cookies = nil
        response
      end
    end
  end
end
