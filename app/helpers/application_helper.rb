module ApplicationHelper
    def header_link_item(name, path)
      class_name = 'nav-item'
      class_name << ' active' if current_page?(path)
  
      content_tag :li, class: class_name do
        link_to name, path, class: 'nav-link'
      end
    end

    def can_edit(obj)
        if @current_user && obj.name == @current_user.name
            return true
        else
            return false
        end
    end

  end
  