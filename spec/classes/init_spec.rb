require 'spec_helper'
describe 'tautulli' do
  context 'with default values for all parameters' do
    it { is_expected.to contain_class('tautulli') }
  end
end
