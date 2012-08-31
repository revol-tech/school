ActiveAdmin.register News do
   form(:html => { :multipart => true }) do |f|
      f.inputs "Details" do
        f.input :headline
        f.input :detail
        f.input :image, :as => :file
      end

      f.buttons
    end

  controller do
    def new()
      @news=News.new
    end


      def create

        uploader = ImageUploader.new
        uploader.store!(params[:news][:image])
        @news = News.new()
        @news.headline = params[:news][:headline]
        @news.detail = params[:news][:detail]
        @news.image = uploader.to_s
        @news.save!
        redirect_to admin_news_index_path
      end
      def update
         @news = News.find(params[:id])
        uploader = ImageUploader.new
        uploader.store!(params[:news][:image])
        @news.headline = params[:news][:text]
        @news.detail = params[:news][:detail]
        @news.image = uploader.to_s
        @news.save!
        redirect_to admin_news_index_path
      end
  end
end
