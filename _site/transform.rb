require 'fileutils'

Dir.glob("_posts/*.md") do |infile|

  infile =~ /\d{4}-\d{2}-\d{2}-(.+).md$/
  outdir = "pages/#{$1}"
  FileUtils.mkdir_p outdir

  outfile = "#{outdir}/index.md"


  File.open(outfile, 'w') do |o|
    File.open(infile) do |f|
      f.each_line do |l|
        o.write(l.gsub(/^layout:\s+post/, "layout: default"))
      end
    end
  end

end
