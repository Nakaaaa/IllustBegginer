class HomeController < ApplicationController
  def top
    @illusts = Image.where(comment_flg: false).order(updated_at: :desc).limit(10)
  end
end
