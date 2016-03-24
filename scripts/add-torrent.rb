#!/bin/env ruby

require 'aria2'

abort "Not enough arguments" unless ARGV.length > 0

ARGV.each do |torrent|
    abort "Unable to read file #{torrent}" unless File.readable?(torrent)
    # Shamelessly call bash.
    trackers=`aria2c --no-conf -S "#{torrent}" | grep -A1 Announce | tail -n1`.split(' ');

    options = {}
    if trackers.map{|t| t.include? "what.cd"}.inject(false){|already_found, found| already_found or found }
        options = {dir: '/mnt/big/Music/WCD/'}
    elsif trackers.map{|t| t.include? "oppaiti.me"}.inject(false){|already_found, found| already_found or found }
        options = {dir: '/mnt/big/Syzygy/OPT/'}
    elsif trackers.map{|t| t.include? "jpopsuki.eu"}.inject(false){|already_found, found| already_found or found }
        #options = {dir: '/mnt/big/Music/JPS'}
        puts "#{torrent} is a JPS torrent, aria2 isnt allowed here yet, did not add torrent"
        next
    end

    aria = Aria2::Downloader.new('localhost', 6800, 'CAFEBABE')
    puts aria.addTorrentFile(torrent, options)
end
