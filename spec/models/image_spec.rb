require 'rails_helper'

RSpec.describe Image, type: :model do
  describe "#find_by" do
    subject { described_class }
    it { expect(subject.find_by(id: 25621009091)).to be_a(Image) }
  end
end
