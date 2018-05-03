module ApplicationHelper

  def form_errors_for(object=nil)
    render('templates/form_errors', object: object)
  end

end
