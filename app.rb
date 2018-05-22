require 'rubygems'
require 'sinatra'
require 'models/job'
require 'models/emotion'

helpers do
  def job
    Job.random
  end

  def emotion
    Emotion.random
  end
end

get '/' do
  erb "#{emotion.capitalize} #{job.capitalize}"
end
