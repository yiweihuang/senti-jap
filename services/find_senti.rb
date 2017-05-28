require 'http'

# Returns an authenticated user, or nil
class FindSenti
  def self.call(sentence:)
    response = HTTP.post("#{ENV['API_HOST']}/sentence/?",
                         json: {sentence: sentence["location"]})
    response.code == 200 ? response.parse : nil
  end
end
