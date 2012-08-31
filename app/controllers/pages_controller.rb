class PagesController < ApplicationController
  def index
    @menu=Menu.all
    @submenu=Submenu.all
    @banner=Banner.all
    @subbanner=Subbanner.all
    @noticeboard=Noticeboard.all
    @welcomenote=Welcomenote.all
    @news=News.all

  end

  def home
  end

  def aboutus
    @menu=Menu.all
    @submenu=Submenu.all
  end

  def news
  end
  
  def contactus
  end

  def findingus
  end

  def gallery
  end

  def feedback
    @menu=Menu.all
    @submenu=Submenu.all
  end

  def admission
      @menu=Menu.all
      @submenu=Submenu.all
      
  end
end
