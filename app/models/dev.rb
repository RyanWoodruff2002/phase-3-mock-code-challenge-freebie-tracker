class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, :through => :freebies

    def received_one?(item_name)

        arr = self.freebies
        c = arr.where(item_name: item_name)
        d = c.empty?
        d ? false : true

    end

    def give_away(dev, freebie)
        received_one?(freebie.item_name) ? freebie.update(dev_id: dev.id) : "Freebie does not belong to dev trying to give it away"
    end

end
