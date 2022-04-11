module QBittorrent
  module WebApi
    module Torrent
      def get_torrents(**options)
        send_request('/torrents/info') do |api_url|
          api_client.get(api_url, params: options)
        end
      end

      def add_torrents(url_or_file_path, **options)
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

      def delete_torrents(hashes, delete_files = false)
        send_request("/torrents/delete") do |api_url|
          api_client.post(api_url, form: {
            hashes: hashes,
            deleteFiles: delete_files
          })
        end
      end

      def reannounce(hashes = 'all')
        send_request("/torrents/reannounce") do |api_url|
          api_client.post(api_url, form: {
            hashes: hashes
          })
        end
      end
    end
  end
end
  