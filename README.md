# QbittorrentClient

A Qbittorrent Web API Client, only support [WebUI API (qBittorrent 4.1+)](<https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)>).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'qbittorrent'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install qbittorrent

# Usage

```
client = QBittorrent::Api.new("http://localhost:8080", "admin", "password")
```

## Authentication

### **[Login](<https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)>)**

```
client.login
```

### **[Logout](<https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#logout>)**

```
client.logout
```

## Application

### **[Get application version](<https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#get-application-version>)**

```
client.application_version
```

### **[Get API version](<https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#get-api-version>)**

```
client.api_version
```

### **[Get build info](<https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#get-build-info>)**

```
client.build_info
```

### **[Get application preferences](<https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#get-application-preferences>)**

```
client.preferences
```

### **[Set application preferences](https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#set-application-preferences)**
```
client.set_preferences(options)
```

### **[Shutdown application](<https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#shutdown-application>)**

```
client.shutdown
```

### **[Get default save path](<https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#get-default-save-path>)**

```
client.default_save_path
```

### **[Add new torrent](<https://github.com/qbittorrent/qBittorrent/wiki/WebUI-API-(qBittorrent-4.1)#add-new-torrent>)**

```
client.add_torrent(urls_of_file_path, options)
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
