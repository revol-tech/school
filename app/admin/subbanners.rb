ActiveAdmin.register Subbanner do
   form(:html => { :multipart => true }) do |f|
      f.inputs "Details" do
        f.input :image_name
        f.input :text
        f.input :read_more
        f.input :image, :as => :file
      end

      f.buttons
    end

  controller do
    def new()
      @subbanner=Subbanner.new
    end


      def create

        uploader = ImageUploader.new
        uploader.store!(params[:subbanner][:image])
        @subbanner = Subbanner.new()
        @subbanner.image_name = params[:subbanner][:image_name]
        @subbanner.text = params[:subbanner][:text]
        @subbanner.read_more = params[:subbanner][:read_more]
        @subbannerimage = uploader.to_s
        @subbanner.save!
        redirect_to admin_subbanners_path
      end
      def update
         @subbanner = Subbanner.find(params[:id])
        uploader = ImageUploader.new
        uploader.store!(params[:subbanner][:image])
        @subbanner.image_name = params[:subbanner][:image_name]
        @subbanner.text = params[:subbanner][:text]
        @subbanner.read_more = params[:subbanner][:read_more]
        @subbanner.image = uploader.to_s
        @subbanner.save!
        redirect_to admin_subbanners_path
      end
  end
end
