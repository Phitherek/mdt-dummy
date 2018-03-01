require_relative '../../../../lib/mdt/command_modifiers/dummy'

RSpec.describe MDT::CommandModifiers::Dummy do
  it 'should have the "dummy" key defined' do
    expect { MDT::CommandModifiers::Dummy.key }.not_to raise_error
    expect(MDT::CommandModifiers::Dummy.key).to eq 'dummy'
  end

  it 'should have only "dummy" in defined subkeys' do
    expect { MDT::CommandModifiers::Dummy.subkeys }.not_to raise_error
    expect(MDT::CommandModifiers::Dummy.subkeys).to eq ['dummy']
  end

  it 'should have prepend method that returns passed command unmodified' do
    modifier = MDT::CommandModifiers::Dummy.new
    expect { modifier.prepend('dummy', 'test') }.not_to raise_error
    expect(modifier.prepend('dummy', 'test')).to eq 'test'
  end
end