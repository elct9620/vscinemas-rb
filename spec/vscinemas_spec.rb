# frozen_string_literal: true

RSpec.describe VSCinemas do
  it 'has a version number' do
    expect(VSCinemas::VERSION).not_to be nil
  end

  describe '.movies' do
    subject { described_class.movies }

    it { is_expected.to be_a(VSCinemas::MovieList) }
  end
end
