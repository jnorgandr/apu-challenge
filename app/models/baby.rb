class Baby < ApplicationRecord
    has_many :breastfeedings, dependent: :destroy

    def feed_count
        breastfeedings.count(:id)
    end
    def feed_total
        breastfeedings.sum(:volume)
    end
    def feed_last_today
        breastfeedings.last.created_at
    end

    def feed_today
        feed.count
    end

    def feedtime_total_today
        feed.sum(:feedtime)
    end

    def feed_total_today
        feed.sum(:volume)
    end

    private
    def feed
        breastfeedings.where('created_at > ?', Date.today)
    end
end
