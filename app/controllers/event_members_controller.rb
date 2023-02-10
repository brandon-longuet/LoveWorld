class EventMembersController < ApplicationController
  before_action :set_event_member, only: %i[show edit update destroy]

  # GET /event_members or /event_members.json
  def index
    @event_members = EventMember.all
  end

  # GET /event_members/1 or /event_members/1.json
  def show; end

  # GET /event_members/new
  def new
    @event_member = EventMember.new
  end

  # GET /event_members/1/edit
  def edit; end

  # POST /event_members or /event_members.json
  def create
    @event_member = EventMember.new(event_member_params)

    respond_to do |format|
      if @event_member.save
        format.html { redirect_to(event_member_url(@event_member), notice: 'Event member was successfully created.') }
        format.json { render(:show, status: :created, location: @event_member) }
      else
        format.html { render(:new, status: :unprocessable_entity) }
        format.json { render(json: @event_member.errors, status: :unprocessable_entity) }
      end
    end
  end

  # PATCH/PUT /event_members/1 or /event_members/1.json
  def update
    respond_to do |format|
      if @event_member.update(event_member_params)
        format.html { redirect_to(event_member_url(@event_member), notice: 'Event member was successfully updated.') }
        format.json { render(:show, status: :ok, location: @event_member) }
      else
        format.html { render(:edit, status: :unprocessable_entity) }
        format.json { render(json: @event_member.errors, status: :unprocessable_entity) }
      end
    end
  end

  # DELETE /event_members/1 or /event_members/1.json
  def destroy
    @event_member.destroy

    respond_to do |format|
      format.html { redirect_to(event_members_url, notice: 'Event member was successfully destroyed.') }
      format.json { head(:no_content) }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event_member
    @event_member = EventMember.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_member_params
    params.require(:event_member).permit(:event_id, :user_id)
  end
end
