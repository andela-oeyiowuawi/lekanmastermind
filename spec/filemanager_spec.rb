require 'spec_helper'
describe Lekanmastermind::FileHandler do
  subject(:file_handle) {Lekanmastermind::FileHandler.new}
  context '#writer' do
    let(:name) {'Lekan'}
    let(:guess) {'ioyb'}
    let(:time) {120}
    let(:chance) {5}
    let(:player_result) {Lekanmastermind::StorePlayerResult.new(name, guess, time, chance)}
    it "should save to yaml" do
      YAML.stub(:writer).with('whatever.yaml').and_return(YAML.dump(player_result))
      expect(file_handle.writer(name, guess,time, chance)).to eq(97) # number of bytes that write method returns
    end
  end
=begin
  context '#top_ten' do
    let(:yaml_text) {}
      it 'should load the scores file' do
        YAML.stub(:top_ten).with('whatever.yml').and_return(YAML.load_stream(yaml_text))
        expect(file_handle.top_ten).to eq(nil)
      end
    end
=end
end
