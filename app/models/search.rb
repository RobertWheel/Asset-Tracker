class Search


  def initialize(query)
    @query = query
  end

  def results
    Courses.where("name like '%#{query}%'")
  end
end
