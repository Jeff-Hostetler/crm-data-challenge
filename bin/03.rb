require 'pp'
load '../data/crm.rb'

  def company_and_employees(data)
    result = []

    data[:people].each do |person|
      person[:employments] = nil
      entry  = {}
      entry[:id] = person[:id]
      entry[:first_name] = person[:first_name]
      entry[:last_name] = person[:last_name]
      result << entry
    end

    result
  end

pp company_and_employees(CRM)
