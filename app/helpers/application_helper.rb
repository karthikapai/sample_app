module ApplicationHelper
<<<<<<< HEAD

  # Returns the full title on a per-page basis.
  def full_title(page_title)
=======
	def full_title(page_title)
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
