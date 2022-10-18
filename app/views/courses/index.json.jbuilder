json.success true
json.data do
  json.courses do
    json.array! @courses, partial: 'partials/course', as: :course
  end

  json.pagination do
    json.partial! 'partials/pagination', object: @courses
  end
end
