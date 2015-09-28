class Deal < ActiveRecord::Base
  has_many :deal_prizes

  after_create :create_dealprizes

  def create_dealprizes
    logger.debug "Creating DealPrizes for Deal:#{id}"
    prizes = prizes_number.times.map do
               deal_prizes.build(admin_user_id: 42, prize_id: 5)
             end
    logger.debug "Preparing to import #{prizes.count} DealPrizes"
    DealPrize.import(prizes)
    logger.debug "DealPrize import complete"
  end
end
