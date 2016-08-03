require 'rails_helper'

RSpec.describe Location, type: :model do
  before(:each) do
    @location = FactoryGirl.build :location
  end

  it "can be instantiated" do
    expect(@location).to be_a Location
  end

  it "can be assigned the name of an arcade" do
    @location.name = "16-Bit Bar"
    expect(@location.name).to eq("16-Bit Bar")
  end

  it "can be created using a factory" do
    expect(@location.name).to eq("Pizza Works")
  end
end
