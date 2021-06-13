module QBittorrent
  module WebApi
    module Torrent
      def add_torrent(url_or_file_path, **options)
        send_request('/torrents/add') do |api_url|
          url_or_file_path.gsub!(/^\s+|\s+$/, '')
          if %r{^http://|https://|magnet://}i =~ url_or_file_path
            options.merge!(urls: url_or_file_path)
          else
            options.merge!(torrents: HTTP::FormData::File.new(url_or_file_path))
          end
          api_client.post(api_url, form: options)
        end
      end
    end
  end
end
