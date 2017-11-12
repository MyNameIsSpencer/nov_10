

class Task

  def initialize(description, due_date)
    @description = description.to_s
    @due_date = due_date.to_s
  end

  def description_reader
    return @description
  end

  def due_date_reader
    return @due_date
  end

  def descriptioner
    puts "Type the new description"
    @description = gets.chomp.to_s
  end

  def due_dater
    puts "What's the new due date?"
    @due_date = gets.chomp.to_s
  end
end

class TodoList

  def initialize(list_name)
    @name = list_name
    @tasks = []
  end

  def task_reader
    @tasks
  end

  def add_task(task)
    @tasks << task
  end
end

launder = Task.new("laundering *wink wink", "ASAP!!!!")
collection = Task.new("collect fees", "Thursday")
take_care_of_headache = Task.new("boss has bad headache, take care of it", "tonight")

puts launder.description_reader
launder.descriptioner
puts launder.description_reader

work_list = TodoList.new(work_list)
work_list.add_task(collection)
work_list.add_task(launder)
work_list.add_task(take_care_of_headache)
puts work_list.inspect
