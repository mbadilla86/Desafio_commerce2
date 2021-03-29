class ApplicationController < ActionController::Base

  def current_order
    if current_user
      order = Order.find_by(user: current_user).where(state: 'created')
      if order.blank?
        order = Order.create(user: current_user, state: 'created')
      end
      return order
    end

    nil
  end
end
