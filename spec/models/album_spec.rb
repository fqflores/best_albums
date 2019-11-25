require 'rails_helper'

RSpec.describe Album, type: :model do
  
    describe "Direct Associations" do

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:artist_id) }

    it { should validate_presence_of(:title) }
      
    end
end
