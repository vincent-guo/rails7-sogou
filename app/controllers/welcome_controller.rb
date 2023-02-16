class WelcomeController < ApplicationController
  def home
  end

  def wechat
  end

  def search
    @keyword = params[:keyword]
    @banned = Blacklist.new.is_banned?(@keyword)

    query = WebPage.where('note ILIKE ?', "%#{@keyword}%")

    @pages = query.page(params[:page]).per(5)
    @total = query.count
  end
end
