WILL PAGINATION GEM

gem 'will_paginate', '>= 3.1'

Bundle install

Restart Rails Server

#SET TO CONTROLLER
@trans = Transaction.paginate(page: params[:page], per_page: 10)

#SET to VIEW
= will_paginate @trans
