class HomesController < ApplicationController

  def index
  end
  
  def showdata
    @course=Course.all
    # json_str = "{ 'age':'Bill' , 'haha':'Gates'}" 
    respond_to do |format|
      format.json { render :json => @course }
    end
    
    # render json=>json_str, status=>"200 ok"
  end
  
   # @model= ActiveSupport::JSON.decode({id:1,name:'稳妥',descn:'哈哈'})
    # render :json => @model.to_json

end
