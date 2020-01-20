class Student
attr_accessor :student_name,:cohort,:student_to_talk,:favourite_language

def initialize(student_name, cohort)
  @student_name = student_name
  @cohort=cohort
end

def student_name
  return @student_name
end

def cohort
  return @cohort
end

def student_to_talk
  return "I can talk!"
end

def favourite_language(language)
return "I love #{language}!"
end

end
