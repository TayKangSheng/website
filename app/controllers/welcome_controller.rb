class WelcomeController < ApplicationController
  def index
    @recent_episodes = Episode.limit(9).order('published_at DESC')
  end

  def conferences
    conference_category = 1
    @conferences = Playlist.where(playlist_category_id: conference_category).where(active: true).order('publish_date DESC')
  end

  def live
    render layout: 'live'
  end

  def goto_playlist
    redirect_to 'http://j.mp/sgmeetups'
  end
end
