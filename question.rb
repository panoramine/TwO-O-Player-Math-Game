class Question
  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @problem = "What does #{num1} plus #{num2} equal?"
    @result = @num1 + @num2
  end
end