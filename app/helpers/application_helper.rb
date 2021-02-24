module ApplicationHelper
#def link_to_add_row(name, f, association, **args)
 # new_object = f.object.send(association).klass.new
 # id = new_object.object_id
 # fields = f.simple_fields_for(association, new_object, child_index: id) do |builder|
  #  render(association.to_s.singularize, f: builder)
 # end
 # link_to(name, "#", class: "add_fields " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
 # end
  

 def current_user
   @current_user ||= User.find(session[:user_id]) if session[:user_id]
 end

 def logged_in?
  !!current_user
 end

end
