require('minitest/autorun')
require('minitest/reporters')
require_relative("../codeclan_student")
Minitest::Reporters.use!Minitest::Reporters::SpecReporter.new

class TestStudent < Minitest::Test

  def setup
    @student=Student.new("Vasileios","E37")
  end

  def test_student_name
    assert_equal("Vasileios",@student.student_name)
  end

  def test_cohort
    assert_equal("E37",@student.cohort)
  end

  def test_set_student_name
  @student.student_name ="Mary"
  assert_equal("Mary",@student.student_name)
  end

  def test_set_cohort
  @student.cohort = "E35"
  assert_equal("E35",@student.cohort)
  end

  def test_student_to_talk
  @student.student_to_talk = "I can talk!"
  assert_equal("I can talk!",@student.student_to_talk)
  end

  def test_favourite_language
    @student.favourite_language("Ruby")
    assert_equal("I love Ruby!",@student.favourite_language("Ruby"))
  end

end
