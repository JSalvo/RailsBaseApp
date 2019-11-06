class ConversationTypesController < ApplicationController
  before_action :set_conversation_type, only: [:show, :edit, :update, :destroy]

  # GET /conversation_types
  # GET /conversation_types.json
  def index
    @conversation_types = ConversationType.all
  end

  # GET /conversation_types/1
  # GET /conversation_types/1.json
  def show
  end

  # GET /conversation_types/new
  def new
    @conversation_type = ConversationType.new
  end

  # GET /conversation_types/1/edit
  def edit
  end

  # POST /conversation_types
  # POST /conversation_types.json
  def create
    @conversation_type = ConversationType.new(conversation_type_params)

    respond_to do |format|
      if @conversation_type.save
        format.html { redirect_to @conversation_type, notice: 'Conversation type was successfully created.' }
        format.json { render :show, status: :created, location: @conversation_type }
      else
        format.html { render :new }
        format.json { render json: @conversation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conversation_types/1
  # PATCH/PUT /conversation_types/1.json
  def update
    respond_to do |format|
      if @conversation_type.update(conversation_type_params)
        format.html { redirect_to @conversation_type, notice: 'Conversation type was successfully updated.' }
        format.json { render :show, status: :ok, location: @conversation_type }
      else
        format.html { render :edit }
        format.json { render json: @conversation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conversation_types/1
  # DELETE /conversation_types/1.json
  def destroy
    @conversation_type.destroy
    respond_to do |format|
      format.html { redirect_to conversation_types_url, notice: 'Conversation type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversation_type
      @conversation_type = ConversationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conversation_type_params
      params.require(:conversation_type).permit(:name)
    end
end
