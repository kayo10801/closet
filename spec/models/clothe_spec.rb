require 'rails_helper'

RSpec.describe Clothe, type: :model do
  before do
    @clothe = FactoryBot.build(:clothe)
end
describe '洋服を登録できないとき' do
  it 'seasonが空では登録できない' do
    @clothe.season = ''
    @clothe.valid?
    expect(@clothe.errors.full_messages).to include "Season can't be blank"
  end
  it 'colorが空では登録できない' do
    @clothe.color = ''
    @clothe.valid?
    expect(@clothe.errors.full_messages).to include "Color can't be blank"
  end
  it 'imageが空では登録できない' do
    @clothe.image= nil
    @clothe.valid?
    expect(@clothe.errors.full_messages).to include "Image can't be blank"
  end
end
end