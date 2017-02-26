module ApplicationHelper

  def navbar_button_attributes
    {type: 'button', 'data-toggle': 'collapse', 'data-target': '#navbarResponsive', 'aria-controls': 'navbarResponsive', 'aria-expanded': 'false', 'aria-label': 'Toggle navigation'}
  end

end
