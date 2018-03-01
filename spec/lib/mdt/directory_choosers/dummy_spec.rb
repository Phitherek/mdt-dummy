require_relative '../../../../lib/mdt/directory_choosers/dummy'

RSpec.describe MDT::DirectoryChoosers::Dummy do
  it 'should have the "dummy" key defined' do
    expect { MDT::DirectoryChoosers::Dummy.key }.not_to raise_error
    expect(MDT::DirectoryChoosers::Dummy.key).to eq 'dummy'
  end

  it 'should have only "dummy" in defined subkeys' do
    expect { MDT::DirectoryChoosers::Dummy.subkeys }.not_to raise_error
    expect(MDT::DirectoryChoosers::Dummy.subkeys).to eq ['dummy']
  end

  it 'should have mkdir command that returns 0' do
    dc = MDT::DirectoryChoosers::Dummy.new
    expect { dc.mkdir('dummy') }.not_to raise_error
    expect(dc.mkdir('dummy')).to eq 0
  end

  it 'should have cd command that returns 0' do
    dc = MDT::DirectoryChoosers::Dummy.new
    expect { dc.cd('dummy') }.not_to raise_error
    expect(dc.cd('dummy')).to eq 0
  end

  it 'should have rm command that returns 0' do
    dc = MDT::DirectoryChoosers::Dummy.new
    expect { dc.rm('dummy') }.not_to raise_error
    expect(dc.rm('dummy')).to eq 0
  end
end