require_relative '../../../../lib/mdt/commands/dummy'

RSpec.describe MDT::Commands::Dummy do
  it 'should have the "dummy" key defined' do
    expect { MDT::Commands::Dummy.key }.not_to raise_error
    expect(MDT::Commands::Dummy.key).to eq 'dummy'
  end

  it 'should have only "dummy" in defined subkeys' do
    expect { MDT::Commands::Dummy.subkeys }.not_to raise_error
    expect(MDT::Commands::Dummy.subkeys).to eq ['dummy']
  end

  it 'should have execute command that returns 0' do
    command = MDT::Commands::Dummy.new
    expect { command.execute('dummy') }.not_to raise_error
    expect(command.execute('dummy')).to eq 0
  end
end