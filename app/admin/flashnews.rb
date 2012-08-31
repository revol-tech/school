ActiveAdmin.register Flashnews do
   form(:html => { :multipart => true }) do |f|
      f.inputs "Details" do
        f.input :text
      end

      f.buttons
    end

  controller do
    def new()
      @flashnews=Flashnews.new
    end


      def create


        @flashnews = Flashnews.new()
        @flashnews.text = params[:flashnews][:text]

        @flashnews.save!
        redirect_to admin_flashnews_index_path
      end
      def update
         @flashnews = flashnews.find(params[:id])
        @flashnews.text = params[:flashnews][:text]

        @flashnews.save!
        redirect_to admin_flashnews_index_path
      end
  end
end
