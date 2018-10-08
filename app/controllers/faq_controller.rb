class FaqController < ApplicationController
  def index
    @faq = Faq.all.limit(5)
  end
end
