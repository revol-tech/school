class PagesController < ApplicationController
  def index
    @menu=Menu.all
    @banner=Banner.all
    @subbanner=Subbanner.all
    @noticeboard=Noticeboard.all
    @welcomenote=Welcomenote.all

  end

  def home
  end

  def aboutus
    @menu=Menu.all

  end

  def news
  end

  def findingus
  end

  def gallery
  end

  def feedback
  end

  def admission
  end
end
