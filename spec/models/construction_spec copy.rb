require 'rails_helper'
RSpec.describe Construction, type: :model do
  before do
    @construction = FactoryBot.build(:construction)
  end

  describe '現場新規登録' do
    context '現場登録がうまくいくとき' do
      it "name,place,price,schedule,doingが存在すれば登録できる" do
        expect(@construction).to be_valid
      end
    end

    context '現場登録がうまくいかないとき' do
      it "nameが空だと登録できない" do
        @construction.name = ""
        @construction.valid?
        expect(@construction.errors.full_messages).to include("Name can't be blank")
      end
      it "placeが空だと登録できない" do
        @construction.place = ""
        @construction.valid?
        expect(@construction.errors.full_messages).to include("Place can't be blank")
      end
      it "priceが空だと登録できない" do
        @construction.price = ""
        @construction.valid?
        expect(@construction.errors.full_messages).to include("Price can't be blank")
      end
      it "scheduleが空だと登録できない" do
        @construction.schedule = ""
        @construction.valid?
        expect(@construction.errors.full_messages).to include("Schedule can't be blank")
      end
      it "doingが空だと登録できない" do
        @construction.doing = ""
        @construction.valid?
        expect(@construction.errors.full_messages).to include("Doing can't be blank")
      end
    end
  end
end


