class ResourceDecorator < Draper::Decorator
  delegate_all

  def icon_name
    case object.doctype
    when 'document'
      return 'file-excel-o'
    when 'pdf'
      return 'file-pdf-o'
    when 'spreadsheet'
      return 'file-excel-o'
    when 'media'
      return 'file-video-o'
    when 'other'
      return 'question'
    else
      return 'question'
    end
  end

end
