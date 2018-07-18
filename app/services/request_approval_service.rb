# frozen_string_literal: true

class RequestApprovalService < BaseService
  def call(user)
    if user.id == nil
      return
    end

    if Setting.require_approval
      User.staff.each do |staff|
        UserMailer.new_user_waiting_for_approval(staff, user).deliver_later
      end
    else
      user.approve
    end
  end
end
