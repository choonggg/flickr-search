require 'rails_helper'

RSpec.describe SearchController, type: :routing do
  it { expect(get '/').to route_to(controller: 'search', action: 'home')  }
  it { expect(get '/search').to route_to(controller: 'search', action: 'index')  }
  it { expect(get '/search/1').to route_to(controller: 'search', action: 'show', id: '1')  }
end
