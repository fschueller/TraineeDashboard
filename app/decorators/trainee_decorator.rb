class TraineeDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{first_name} #{last_name}".strip
  end

  def birthday
   source.birthday.strftime("%b %d, %Y")
  end

end
