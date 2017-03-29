class PrivateLessonsController < ApplicationController
  before_action :set_private_lesson, only: [:show, :edit, :update, :destroy]

  # GET /private_lessons
  # GET /private_lessons.json
  def index
    @private_lessons = PrivateLesson.all
  end

  # GET /private_lessons/1
  # GET /private_lessons/1.json
  def show
  end

  # GET /private_lessons/new
  def new
    @private_lesson = PrivateLesson.new
  end

  # GET /private_lessons/1/edit
  def edit
  end

  # POST /private_lessons
  # POST /private_lessons.json
  def create
    @private_lesson = PrivateLesson.new(private_lesson_params)

    respond_to do |format|
      if @private_lesson.save
        format.html { redirect_to @private_lesson, notice: 'Private lesson was successfully created.' }
        format.json { render :show, status: :created, location: @private_lesson }
      else
        format.html { render :new }
        format.json { render json: @private_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_lessons/1
  # PATCH/PUT /private_lessons/1.json
  def update
    respond_to do |format|
      if @private_lesson.update(private_lesson_params)
        format.html { redirect_to @private_lesson, notice: 'Private lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @private_lesson }
      else
        format.html { render :edit }
        format.json { render json: @private_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_lessons/1
  # DELETE /private_lessons/1.json
  def destroy
    @private_lesson.destroy
    respond_to do |format|
      format.html { redirect_to private_lessons_url, notice: 'Private lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_lesson
      @private_lesson = PrivateLesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def private_lesson_params
      params.require(:private_lesson).permit(:instructor_id, :customer_id, :date, :time, :cost, :classroom_id, :comments)
    end
end
