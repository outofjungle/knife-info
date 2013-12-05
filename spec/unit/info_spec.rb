require File.expand_path('../../spec_helper', __FILE__)

describe KnifeInfo::Info do

  let(:username) do
    'user'
  end

  let(:url) do
    'https://test.chef.org/organizations/org'
  end

  before :each do
    @knife = Chef::Knife::Info.new
    Chef::Knife.stub(:locate_config_file).and_return("/home/#{username}")
    @knife.stub(:server_url).and_return(url)
    @knife.stub(:username).and_return(username)
  end

  context 'with short=true' do
    before :each do
      @knife.config[:short] = true
    end

    it 'should print info in oneline' do
      @knife.ui.should_receive(:msg).with('user@test/org')
      @knife.run
    end

    it 'should print info without username if env user match' do
      ENV['USER'] = 'user'
      @knife.ui.should_receive(:msg).with('test/org')
      @knife.run
    end
  end
end
