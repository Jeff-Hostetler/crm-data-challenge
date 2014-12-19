require 'pp'
load '../data/crm.rb'

  def company_and_employees(data)
    result = []
    data[:people].each do |person|
      person[:employments].each do |employ|
        entry = {}
        entry[:company_id] = employ[:company_id]
        entry[:company_name] = data[:companies].select{|company| company[:id] == employ[:company_id]}[0][:name]
        entry[:person_id] = person[:id]
        entry[:person_first_name] = person[:first_name]
        entry[:person_last_name] = person[:last_name]
        entry[:title] = employ[:title]
        result << entry
      end
    end
  result
  end

pp company_and_employees(CRM)
