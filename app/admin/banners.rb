ActiveAdmin.register Banner do


    form(:html => { :multipart => true }) do |f|
      f.inputs "Details" do
        f.input :title
        f.input :image, :as => :file
      end

      f.buttons
    end

  controller do
    def new()
      @banner=Banner.new
    end


      def create

        uploader = ImageUploader.new
        uploader.store!(params[:banner][:image])
        @banner = Banner.new()
        @banner.title = params[:banner][:title]
        @banner.image = uploader.to_s
        @banner.save!
        redirect_to admin_banners_path
      end
      def update
         @banner = Banner.find(params[:id])
        uploader = ImageUploader.new
        uploader.store!(params[:banner][:image])
        @banner.title = params[:banner][:title]
        @banner.image = uploader.to_s
        @banner.save!
        redirect_to admin_banners_path
      end
  end
end
