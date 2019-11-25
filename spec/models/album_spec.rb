require 'rails_helper'

RSpec.describe Album, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:director) }

    it { should have_many(:likes) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:artist_id) }

    it { should validate_presence_of(:title) }
      
    end
end
