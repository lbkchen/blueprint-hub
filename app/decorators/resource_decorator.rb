class ResourceDecorator < Draper::Decorator
  delegate_all

  def icon_name
    case object.doctype
    when 'document'
      return 'file-text-o'
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

  def icon_color
    case object.doctype
    when 'document'
      return 'gray'
    when 'pdf'
      return 'red'
    when 'spreadsheet'
      return 'green'
    when 'media'
      return 'blue'
    when 'other'
      return 'yellow'
    else
      return 'yellow'
    end
  end

end
