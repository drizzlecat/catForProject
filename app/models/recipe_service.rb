class RecipeService < ApplicationRecord
    API_URL = "http://your.api.url"
    KEY = "your_api_key"
  
    def self.fetch_recipe(id)
      uri = URI("#{API_URL}/#{id}?key=#{KEY}")
      response = Net::HTTP.get(uri)
      JSON.parse(response) # Adjust according to the actual API response structure
    end
  
    def self.search(query)
      uri = URI("#{API_URL}?search=#{query}&key=#{KEY}")
      response = Net::HTTP.get(uri)
      JSON.parse(response) # Adjust according to the actual API response structure
    end
end
