class GroupMembersController < ApplicationController
  before_action :set_group_member, only: %i[ show edit update destroy ]

  # GET /group_members or /group_members.json
  def index
    @group_members = GroupMember.all
  end

  # GET /group_members/1 or /group_members/1.json
  def show
  end

  # GET /group_members/new
  def new
    @group_member = GroupMember.new
  end

  # GET /group_members/1/edit
  def edit
  end

  # POST /group_members or /group_members.json
  def create
    @group_member = GroupMember.new(group_member_params)

    respond_to do |format|
      if @group_member.save
        format.html { redirect_to group_member_url(@group_member), notice: "Group member was successfully created." }
        format.json { render :show, status: :created, location: @group_member }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_members/1 or /group_members/1.json
  def update
    respond_to do |format|
      if @group_member.update(group_member_params)
        format.html { redirect_to group_member_url(@group_member), notice: "Group member was successfully updated." }
        format.json { render :show, status: :ok, location: @group_member }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_members/1 or /group_members/1.json
  def destroy
    @group_member.destroy

    respond_to do |format|
      format.html { redirect_to group_members_url, notice: "Group member was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_member
      @group_member = GroupMember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_member_params
      params.require(:group_member).permit(:group_id, :user_id)
    end
end
