class HomeController < BaseController
  skip_before_action :authenticate_user!, only: [:columns]

  def index
    @mornings = Category.where(is_type: :morning).order(created_at: :desc)
    @lunchs = Category.where(is_type: :lunch).order(created_at: :desc)
    @dinners = Category.where(is_type: :dinner).order(created_at: :desc)
    @snacks = Category.where(is_type: :snack).order(created_at: :desc)
  end

  def my_record
    my_record = Exer.includes(:user)
      .where(user_id: current_user.id)

    @days = my_record.where(is_type: :day).order(created_at: :desc)
    @weeks = my_record.where(is_type: :week).order(created_at: :desc)

    @diaries = MyRecord.includes(:user)
      .where(user_id: current_user.id)
      .order(created_at: :desc)
  end

  def columns
    @columns = Column.order(created_at: :desc)
  end
end
