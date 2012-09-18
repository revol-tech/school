class PagesController < ApplicationController
  def index
    @menu=Menu.all
    @submenu=Submenu.all
    @banner=Banner.all
    @subbanner=Subbanner.all
    @noticeboard=Noticeboard.all
    @welcomenote=Welcomenote.all
    @news=News.all
    @flashnews=Flashnews.all

  end

  def home
  end

  def aboutus
    @menu=Menu.all
    @submenu=Submenu.all
  end

  def news
    @menu=Menu.all
    @submenu=Submenu.all
    @news=News.all
  end
  
  def programfaculty
    @menu=Menu.all
    @submenu=Submenu.all
  end
  
  def contactus
    @menu=Menu.all
    @submenu=Submenu.all
  end

  def findingus
  end

  def gallery
    @menu=Menu.all
    @submenu=Submenu.all
  end
  
  def lifedcma
  end

  def feedback
    @menu=Menu.all
    @submenu=Submenu.all
  end

  def admission
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
  def lifedcma
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
   def termconditions
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
  def emailsignup
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
   def termdate
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
  def webaccessibility
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
  def collegerule
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
  def moodle
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
  def advice
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
  def sendtofriend
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
   def vaccancy
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
  def calendar
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
   def staffstudentmail
      @menu=Menu.all
      @submenu=Submenu.all
  end
  
  def sitemap
      @menu=Menu.all
      @submenu=Submenu.all
  end
end
