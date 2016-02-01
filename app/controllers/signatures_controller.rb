class SignaturesController < ApplicationController
skip_before_filter  :verify_authenticity_token
protect_from_forgery with: :null_session
    def index
      @signatures=Signature.all
    end

    def oldindex
    end

    def new
      Signature.new
    end

    def create
      signatures=Signature.create(signature_params)
      puts signature_params
      redirect_to "/"
    end

    def show
      @signatures=Signature.all
    end

    def destroy
      signature = Signature.find(params[:id])
      signature.delete
      redirect_to '/signatures'
    end

    private

    def signature_params
      params.require(:signature).permit(:name,:confidentiality)

    end

end
