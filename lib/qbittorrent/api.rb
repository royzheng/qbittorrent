require 'http'
require 'logger'
require 'qbittorrent/web_api/core'
require 'qbittorrent/web_api/authorize'
require 'qbittorrent/web_api/torrent'

module QBittorrent
  class Api
    include QBittorrent::WebApi::Core
    include QBittorrent::WebApi::Authroize
    include QBittorrent::WebApi::Torrent

    attr_accessor :host, :username, :password, :cookies, :logger, :global_options

    def initialize(host, username, password, logger = nil, **global_options)
      @host = host.delete_suffix('/')
      @username = username
      @password = password
      @logger = logger ? Logger.new(logger) : nil
      @global_options = global_options
    end
  end
end
