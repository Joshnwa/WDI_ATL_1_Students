class GAWorker
  include Sidekiq::Worker

  def perform(name)
    puts name + ' Marc is the Best!!'
  end
end