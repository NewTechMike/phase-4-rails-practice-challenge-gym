class MembershipsTotalSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :memberships_total

  def memberships_total
    self.object.memberships.sum(:charge)
  end 
end
