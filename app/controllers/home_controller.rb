class HomeController < ApplicationController
  def index
  end


  def data
    eventts = Eventt.all

    render :json => eventts.map {|eventt| {
        :id => eventt.id,
        :start_date => eventt.start_date.to_formatted_s(:db),
        :end_date => eventt.end_date.to_formatted_s(:db),
        :text => eventt.text
    }}
  end

  def db_action
    mode = params["!nativeeditor_status"]
    id = params["id"]
    start_date = params["start_date"]
    end_date = params["end_date"]
    text = params["text"]

    case mode
      when "inserted"
        eventt = Eventt.create :start_date => start_date, :end_date => end_date, :text => text
        tid = eventt.id

      when "deleted"
        Eventt.find(id).destroy
        tid = id

      when "updated"
        eventt = Eventt.find(id)
        eventt.start_date = start_date
        eventt.end_date = end_date
        eventt.text = text
        eventt.save
        tid = id
    end

    render :json => {
        :type => mode,
        :sid => id,
        :tid => tid,
    }
  end
end
