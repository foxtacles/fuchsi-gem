require "uri"
require "net/http"

class Fuchsi
  def self.get(url)
    params = {'url' => url}
    Net::HTTP.post_form(URI.parse('http://fuch.si/'), params).body
  end
end

