array_of_statuses = ["Grand", "Needs Other Assistance", "Needs Medical Assistance", "Needs New Home", "Deceased"]

array_of_statuses.each do |status|
  Status.create(status: status)
end