ActiveAdmin.register Welcomenote do
          form(:html => { :multipart => true }) do |f|
      f.inputs "Details" do
        f.input :text
        f.input :image, :as => :file
      end

      f.buttons
    end

  controller do
    def new()
      @welcomenote=Welcomenote.new
    end


      def create

        uploader = ImageUploader.new
        uploader.store!(params[:welcomenote][:image])
        @welcomenote = Welcomenote.new()
        @welcomenote.text = params[:welcomenote][:text]
        @welcomenote.image = uploader.to_s
        @welcomenote.save!
        redirect_to admin_welcomenotes_path
      end
      def update
         @welcomenote = Welcomenote.find(params[:id])
        uploader = ImageUploader.new
        uploader.store!(params[:welcomenote][:image])
        @welcomenote.text = params[:welcomenote][:text]
        @welcomenote.image = uploader.to_s
        @welcomenote.save!
        redirect_to admin_welcomenotes_path
      end
  end
end
