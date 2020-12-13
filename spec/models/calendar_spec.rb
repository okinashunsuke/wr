require 'rails_helper'
RSpec.describe Calendar, type: :model do
  before do
    @calendar = FactoryBot.build(:calendar)
  end
  describe 'カレンダー新規登録' do
    context 'カレンダー登録がうまくいくとき' do
      it "construction_id,user_id,const_type,company ,n_o_p,dayが存在すれば登録できる" do
        expect(@calendar).to be_valid
      end
    end
    context '現場登録がうまくいかないとき' do
      it "construction_idが空だと登録できない" do
        @calendar.construction_id = ""
        @calendar.valid?
        expect(@calendar.errors.full_messages).to include("Construction can't be blank")
      end
      it "user_idが空だと登録できない" do
        @calendar.user_id = ""
        @calendar.valid?
        expect(@calendar.errors.full_messages).to include("User can't be blank")
      end
      it "const_typeが空だと登録できない" do
        @calendar.const_type = ""
        @calendar.valid?
        expect(@calendar.errors.full_messages).to include("Const type can't be blank")
      end
      it "companyが空だと登録できない" do
        @calendar.company  = ""
        @calendar.valid?
        expect(@calendar.errors.full_messages).to include("Company can't be blank")
      end
      it "n_o_p,が空だと登録できない" do
        @calendar.n_o_p, = ""
        @calendar.valid?
        expect(@calendar.errors.full_messages).to include("N o p can't be blank")
      end
      it "dayが空だと登録できない" do
        @calendar.day = ""
        @calendar.valid?
        expect(@calendar.errors.full_messages).to include("Day can't be blank")
      end
    end
  end
end


