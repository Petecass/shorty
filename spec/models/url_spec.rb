require 'rails_helper'

RSpec.describe Url, type: :model do
  it 'has a valid factory' do
    expect(build(:url)).to be_valid
  end

  describe 'ActiveModel validations' do
    subject { build(:url) }
    it { is_expected.to validate_presence_of(:full_url) }
    it { is_expected.to validate_presence_of(:http_status) }
    it { is_expected.to validate_uniqueness_of(:short_url) }
  end

  describe 'Callbacks' do
    let(:url) { build(:url) }

    context '#generate_short_url' do
      it 'saves a short_url after create' do
        url.save
        url.reload
        expect(url.short_url).to be_present
      end
    end
  end
end
