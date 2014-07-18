module Pah
  module Templates
    class Newrelic < Pah::Base

      def call
        copy_static_file 'config/newrelic.yml'

        gsub_file 'config/newrelic.yml', /PROJECT/, Pah::Base.instance.app_name

        git add: 'config/newrelic.yml'
        git_commit 'Add New Relic configuration.'
      end
    end
  end
end
