class GreetingsController < ApplicationController
  def hello
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "test", template: 'greetings/hello', formats: [:html]
      end
    end
  end
end
