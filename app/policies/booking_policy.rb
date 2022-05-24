class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
  def accept_booking?
    record.animal.user == user
  end

  def reject_booking?
    record.animal.user == user
  end
end
