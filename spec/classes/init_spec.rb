require 'spec_helper'
describe 'tautulli' do
  context 'with default values for all parameters' do
    it { should contain_class('tautulli') }
  end
end
