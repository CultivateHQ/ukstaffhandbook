require 'fileutils'

FileUtils.mkdir_p "_includes"

File.open('_includes/toc.html', 'w') do |toc|
  Dir.glob("_posts/*.md") do |infile|

    infile =~ /\d{4}-\d{2}-\d{2}-(.+).md$/
    outdir = "pages/#{$1}"
    FileUtils.mkdir_p outdir

    outfile = "#{outdir}/index.md"



    File.open(outfile, 'w') do |o|
      File.open(infile) do |f|
        f.each_line do |l|
          o.write(l.gsub(/^layout:\s+post/, "layout: default"))
          if l =~ /^title:\s*(.*)$/
            toc.write "<li><a href='#{outdir}'>#{$1}</a></li>\n"
          end
        end
      end
    end
  end

end
