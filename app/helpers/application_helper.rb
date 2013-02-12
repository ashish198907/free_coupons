module ApplicationHelper

  def choose_category_image(category)
    case category
      when "Eat & Drink"
        "eat_n_drink.png"
      when "Home & Office"
        "home_n_office.png"
      when "Education"
        "home_n_office.png"
      when "Fun & Entertainment"
        "fun_n_entertainment.png"
    end
  end
end
