class Freebie < ActiveRecord::Base
    belongs_to :company
    belongs_to :dev

    def print_details
        #{insert dev's name} owns a {insert
        #freebie's item_name} from {insert company's name}

        puts "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end

end
