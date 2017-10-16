# DOWNLOADING CSV TABLES
# Set route POST for download
match "/download_csv" => "home#csv", :via => [:get,:post], as: 'download_csv'

# SET controller method

def csv
  subs = Transaction.select(:name,:mobile_number).all
  send_data generate_csv(subs), :type => 'text/csv; charset=utf-8;', :disposition => "attachment;filename=#{'all_transaction'}.csv"
end

private

def generate_csv(list)
  builder = CSV.generate do |csv|
    csv << ["Name","Mobile number"]
    list.each do |item|
      csv << [item.name, item.mobile_number]
    end
  end
  return builder
end

#SET VIEWS

= link_to "Download", download_csv_path, class: 'btn btn-default', data: {turbolinks: false}
