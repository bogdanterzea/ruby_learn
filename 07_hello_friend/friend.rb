# frozen_string_literal: true

class Friend
  def greeting(friend = nil)
    if friend.nil?
      'Hello!'
    else
      "Hello, #{friend}!"
    end
  end
end
