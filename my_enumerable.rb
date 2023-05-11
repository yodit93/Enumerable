module MyEnumerable
  def all?(&block)
    result = true
    each { |elem| result = false unless block.call(elem) }
    result
  end

  def any?(&block)
    result = false
    each { |elem| result = true if block.call(elem) }
    result
  end

  def filter(&block)
    result = []
    each { |elem| result.push(elem) if block.call(elem) }
    result
  end
end
