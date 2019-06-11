class HelloworldpostsController < ApplicationController
  before_action :set_helloworldpost, only: [:show, :edit, :update, :destroy]

  # GET /helloworldposts
  # GET /helloworldposts.json
  def index
    @helloworldposts = Helloworldpost.all
  end

  # GET /helloworldposts/1
  # GET /helloworldposts/1.json
  def show
  end

  # GET /helloworldposts/new
  def new
    @helloworldpost = Helloworldpost.new
  end

  # GET /helloworldposts/1/edit
  def edit
  end

  # POST /helloworldposts
  # POST /helloworldposts.json
  def create
    @helloworldpost = Helloworldpost.new(helloworldpost_params)

    respond_to do |format|
      if @helloworldpost.save
        format.html { redirect_to @helloworldpost, notice: 'Helloworldpost was successfully created.' }
        format.json { render :show, status: :created, location: @helloworldpost }
      else
        format.html { render :new }
        format.json { render json: @helloworldpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /helloworldposts/1
  # PATCH/PUT /helloworldposts/1.json
  def update
    respond_to do |format|
      if @helloworldpost.update(helloworldpost_params)
        format.html { redirect_to @helloworldpost, notice: 'Helloworldpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @helloworldpost }
      else
        format.html { render :edit }
        format.json { render json: @helloworldpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helloworldposts/1
  # DELETE /helloworldposts/1.json
  def destroy
    @helloworldpost.destroy
    respond_to do |format|
      format.html { redirect_to helloworldposts_url, notice: 'Helloworldpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helloworldpost
      @helloworldpost = Helloworldpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def helloworldpost_params
      params.require(:helloworldpost).permit(:title, :description)
    end
end
