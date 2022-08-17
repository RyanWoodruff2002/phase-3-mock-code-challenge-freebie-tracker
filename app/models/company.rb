class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, :through => :freebies

    def give_freebie(dev, item_name, value)
        c = Freebie.new(item_name: item_name, value: value, company_id: self.id, dev_id: dev.id)
        c.save
    end

    def oldest_company
        oldest = Company.minimum(:founding_year)
        return Company.where(founding_year: oldest)
    end

end
