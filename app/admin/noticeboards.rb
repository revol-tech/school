ActiveAdmin.register Noticeboard do
     form(:html => { :multipart => true }) do |f|
      f.inputs "Details" do
        f.input :text
        f.input :image, :as => :file
      end

      f.buttons
    end

  controller do
    def new()
      @noticeboard=Noticeboard.new
    end


      def create

        uploader = ImageUploader.new
        uploader.store!(params[:noticeboard][:image])
        @noticeboard = Noticeboard.new()
        @noticeboard.text = params[:noticeboard][:text]
        @noticeboard.image = uploader.to_s
        @noticeboard.save!
        redirect_to admin_noticeboards_path
      end
      def update
         @noticeboard = Noticeboard.find(params[:id])
        uploader = ImageUploader.new
        uploader.store!(params[:noticeboard][:image])
        @noticeboard.text = params[:noticeboard][:text]
        @noticeboard.image = uploader.to_s
        @noticeboard.save!
        redirect_to admin_noticeboards_path
      end
  end
end
