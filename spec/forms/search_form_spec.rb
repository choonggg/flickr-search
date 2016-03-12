require 'rails_helper'

RSpec.describe SearchForm, type: :form do
  let(:search_params) do
    {
      search: 'batman'
    }
  end
  subject(:form) { described_class.new(search_params) }
  describe "#results" do
    it { expect(form.results).not_to be_empty }
  end
end
