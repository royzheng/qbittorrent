module QBittorrent
  module WebApi
    module Torrent
      def add_torrent(url_or_file_path, **options)
        send_request(false) do
          url_or_file_path.gsub!(/^\s+|\s+$/, '')
          if %r{^http://|https://|magnet://}i =~ url_or_file_path
            options.merge!(urls: url_or_file_path)
          else
            options.merge!(torrents: HTTP::FormData::File.new(url_or_file_path))
          end
          api_client.post(prepare_url('/torrents/add'), form: options)
        end
      end
    end
  end
end
