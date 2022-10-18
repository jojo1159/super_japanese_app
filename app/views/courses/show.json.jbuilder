json.success true
json.data do
  json.course do
    json.partial! 'partials/course', course: @course
  end
end
