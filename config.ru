require 'rack/contrib/try_static'
require 'rack/contrib/not_found'

# use ENV, eventually, for a bit of security
use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['neogb', 'bgoen']
end

use Rack::TryStatic,
  :root => "_site",
  :urls => %w[/],
  :try  => ['index.html', '/index.html']

run Rack::NotFound.new('_site/404.html')

