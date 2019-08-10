class MeetingEntriesController < ApplicationController
  before_action :set_meeting_entry, only: [:show, :edit, :update, :destroy]

  # GET /meeting_entries
  # GET /meeting_entries.json
  def index
    @meeting_entries = MeetingEntry.all
  end

  def agreement
  end


  def complete
  end

  # GET /meeting_entries/1
  # GET /meeting_entries/1.json
  def show
  end

  # GET /meeting_entries/new
  def new
    @meeting_entry = MeetingEntry.new
    @meetings = Meeting.all
    # @meeting = Meeting.new
  end

  def like

  end

  # GET /meeting_entries/1/edit
  def edit
  end

  # POST /meeting_entries
  # POST /meeting_entries.json
  def create
    @meeting_entry = MeetingEntry.new(meeting_entry_params)
    # params:[gamelist]で配列の値を取得可能。
    # 二次元配列の場合、受取先の変数を2つ宣言する。下記例では、
    # di1がタイトル、di2がチェックボックスの状態(0 or 1)が格納される。
    params[:temp].each do | di1,di2 |

      # チェックボックスにチェックがついている場合
      if di2 == "1"
        # DBのtitleカラムにタイトルを格納し保存
        @meeting_entry = MeetingEntry.new(meeting_id:di1)
        @meeting_entry.save
      end
    end

    respond_to do |format|
      if @meeting_entry.save
        format.html { redirect_to @meeting_entry, notice: 'Meeting entry was successfully created.' }
        format.json { render :show, status: :created, location: @meeting_entry }
      else
        format.html { render :new }
        format.json { render json: @meeting_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meeting_entries/1
  # PATCH/PUT /meeting_entries/1.json
  def update
    respond_to do |format|
      if @meeting_entry.update(meeting_entry_params)
        format.html { redirect_to @meeting_entry, notice: 'Meeting entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting_entry }
      else
        format.html { render :edit }
        format.json { render json: @meeting_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_entries/1
  # DELETE /meeting_entries/1.json
  def destroy
    @meeting_entry.destroy
    respond_to do |format|
      format.html { redirect_to meeting_entries_url, notice: 'Meeting entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting_entry
      @meeting_entry = MeetingEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_entry_params
      params.require(:meeting_entry).permit(:temp, :meeting_id, :family_name, :first_name, :family_kana, :first_kana, :phone, :email, :purpose, :note, :agreement)
    end
  end
