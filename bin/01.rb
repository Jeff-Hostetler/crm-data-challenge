require 'pp'
load '../data/crm.rb'

  def company_and_employees(data)
    result = []

    data[:companies].each do |company|
      entry = {}
      entry[:name] = company[:name]
      entry[:employees] = []
      data[:people].each do |person|
        person[:employments].each do |employ|
          if employ[:company_id] == company[:id]
            entry_emp = {}
            entry_emp[:id] = person[:id]
            entry_emp[:first_name] = person[:first_name]
            entry_emp[:last_name] = person[:last_name]
            entry_emp[:title] = employ[:title]
            entry[:employees] << entry_emp
            result << entry
          end
        end
      end
    end
    result
  end

pp company_and_employees(CRM)
