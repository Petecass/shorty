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
    context '#generate_short_url' do
      let(:url) { build(:url) }
      it 'saves a short_url after create' do
        url.save
        url.reload
        expect(url.short_url).to be_present
      end
    end

    context '#sanitize' do
      it 'adds http:// to the start of the original url' do
        url = build(:url, full_url: 'blah.com')
        url.save
        url.reload
        expect(url.full_url).to eq 'http://blah.com'
      end

      it 'does not strip https:// if present' do
        url = build(:url, full_url: 'https://blah.com')
        url.save
        url.reload
        expect(url.full_url).to eq 'https://blah.com'
      end
    end
  end
end
