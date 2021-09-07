class SearchService < ApiService
  def self.search(nation)
    response = ApiService.get_data('https://last-airbender-api.herokuapp.com/api/v1/characters').get do |f|
      f.params['affiliation'] = nation
      f.params['perPage'] = 25
    end

    ApiService.get_json(response)
  end
end
