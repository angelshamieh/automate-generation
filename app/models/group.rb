class Group < ApplicationRecord
  def self.generate
    new_groups = []
    group_number = Employee.count / 4

    employees = Employee.all.group_by(&:unit)

    group_number.times.each do
      old_groups = Group.where('created_at >= ?', DateTime.now.prev_month)

      counter = 0
      loop do
        ids = employees.map { |k, v| v.sample.id }

        if !group_exists?(ids, old_groups) || counter > 10
          new_groups << Group.create(employees_id: ids)
          break
        end

        counter += 1
      end
    end

    new_groups
  end

  def self.group_exists?(ids, old_groups)
    old_groups.select { |group| group == ids }.any?
  end
end
