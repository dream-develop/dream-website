class MeetingEntriesController < InheritedResources::Base

  private

    def meeting_entry_params
      params.require(:meeting_entry).permit(:meeting_id, :family_name, :first_name, :family_kana, :first_kana, :phone, :email, :purpose, :note, :agreement)
    end

end
