module ApplicationHelper
  #Return a title on a per-page basis.
  def title #Call this method by using <%= title %>
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil? #If @title isn't set
      base_title #the title is the base_title by itself
    else
      "#{base_title} | #{@title}" #Otherwise the title is base_title | title
    end
  end
end
