require_relative '../../../../lib/mdt/fetchers/dummy'

RSpec.describe MDT::Fetchers::Dummy do
  it 'should have the "dummy" key defined' do
    expect { MDT::Fetchers::Dummy.key }.not_to raise_error
    expect(MDT::Fetchers::Dummy.key).to eq 'dummy'
  end

  it 'should have only "dummy" in defined subkeys' do
    expect { MDT::Fetchers::Dummy.subkeys }.not_to raise_error
    expect(MDT::Fetchers::Dummy.subkeys).to eq ['dummy']
  end

  it 'should have fetch command that returns 0' do
    fetcher = MDT::Fetchers::Dummy.new
    expect { fetcher.fetch('dummy') }.not_to raise_error
    expect(fetcher.fetch('dummy')).to eq 0
  end
end