# TODO: add YARD MIT license
module GitForks
  module CLI
    class Config
      # Handles help for commands
      class Help < Command
        def description; "Retrieves help for a command" end

        def run(*argv)
          if argv.first && cmd = Config.get_command(argv.first)
            cmd.run('--help')
          else
            puts "Command #{argv.first} not found." if argv.first
            Config.run('--help')
          end
          nil
        end
      end
    end
  end
end
