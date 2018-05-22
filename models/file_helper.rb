module FileHelper
  def all
    @all ||= File.readlines(filename).map(&:downcase).uniq
  end

  def random
    all.sample
  end

  def filename
    File.join(File.dirname(__FILE__), "..", "data", "#{name.downcase}.txt")
  end

end
