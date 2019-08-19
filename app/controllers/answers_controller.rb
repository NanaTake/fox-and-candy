class AnswersController < ApplicationController
  def index
  end

  def new
    # theme_num = Random.rand(1 .. 30)
    num = [*1..30].sample
    @theme = Theme.find_by_id num
    nums = [*1..30].sample(3)
    @item_1 = Item.find_by_id nums[0]
    @item_2 = Item.find_by_id nums[1]
    @item_3 = Item.find_by_id nums[2]
    # binding.pry
  end

  def create
  end
end
