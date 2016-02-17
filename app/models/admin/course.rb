class Admin::Course < Course
  # module
  records_with_operator_on :create, :update
end