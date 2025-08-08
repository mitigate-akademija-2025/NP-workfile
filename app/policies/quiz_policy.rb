class QuizPolicy
    attr_reader :user, :quiz

    def initialize(user, quiz)
        @user = user
        @uiz = quiz
    end

    def update?
        user.admin? || !quiz.published?
    end

    def index?
        @user.admin?
    end
end