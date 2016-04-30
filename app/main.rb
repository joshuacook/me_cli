require 'sinatra'
require 'slim'
require 'logger'

class Main < Sinatra::Base
  enable :logging

  before do
    logger.level = Logger::DEBUG
    Dir.mkdir('logs') unless File.exist?('logs')
    $logger = Logger.new('logs/common.log','weekly')
  end
  
  get '/' do
    slim :index
  end

  get '/trello' do
    slim :trello
  end

  post '/server' do 
    request.body.rewind
    input = request.body.read.split(' ')
    $logger.info("raw input:  #{input}")
    case input[0]
    # when "cat"
    #  File.read(File.join('public/filesystem', input[1]))  
    when "date" 
      "#{Time.now}"
    when "help"
      "Try one of these commands: date, info, ls, open, random"
    when "info" 
      "Terminal interface for http://joshuacook.me  
      Email questions to me@joshuacook.me"  
    when "ls"
      home = Dir.glob('public/filesystem/*', File::FNM_DOTMATCH) - ['public/filesystem/.', 'public/filesystem/..']
      home.each do |s| 
        s.gsub!('public/filesystem/','')
      end
      home.sort.join(' ')
    when "open"
      "<script>window.location.href = '/filesystem/#{input[1]}';</script>"
    when "random"
      "#{rand()}"
    else
      "error #{input}" 
    end
  end
end
