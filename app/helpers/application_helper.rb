module ApplicationHelper
  def bootstrap_class_for flash_type
    if "success"
      "alert-success"
    else 
      "alert-warning" # elseはとりあえずwarningにしておく
    end
  end  
end
