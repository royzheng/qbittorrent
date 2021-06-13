# QbittorrentClient

A Qbittorrent Web API Client, only support qBittorrent v4.1+.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'qbittorrent'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install qbittorrent

## Usage

<a href="https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)" target="_blank">WebUI API (qBittorrent 4.1+)</a>
```
client = QBittorrent::Api.new("http://localhost:8080", "admin", "password")
client.login
```

| API | method | Status |
|:--|:--| :--|
|<a href="https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#login" target="_blank">Login</a> | login | :white_check_mark: |
|<a href="https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#get-application-version" target="_blank">Get application version</a>| get_application_version | :white_check_mark: |
|<a href="https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#get-api-version" target="_blank">Get API version</a> | get_api_version | :white_check_mark: |
|<a href="https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#add-new-torrent" target="_blank">Add new torrent</a> | add_torrent | :white_check_mark: |



## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
