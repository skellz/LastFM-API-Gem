require 'spec_helper'

describe LAstRubyFm::Artist do 
  context 'searching' do 
    it 'returns a list of relevant artists' do 
      artist_name= 'Stone Templar Pilots'
      results = LAstRubyFm::Artist.search(artist_name)
      expect(results.size).to_not eql(0)
      expect(results[0].name).to eql(artist_name)
      expect(results[0]).to be_kind_of(LAstRubyFm::Artist)
    end
  end
end
