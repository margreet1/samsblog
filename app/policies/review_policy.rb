class ReviewPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :post

    def initialize(user, post)
      @user = user
      @post = post
    end

    def resolve
      if user.admin?
        scope.all
      else
        scope.where(published: true)
      end
    end
  end

  def admin_list?
    user.admin?
  end

  def update?
    user.admin?
  end
end
