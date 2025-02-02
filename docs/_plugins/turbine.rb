#require 'rouge'

#class Rouge::Lexers::Turbine < Rouge::RegexLexer
module Rouge
  module Lexers
    class Turbine < RegexLexer
      title "Turbine"
      desc "Turbine programming language"
      tag 'turbine'
    
      state :root do
        rule /\b(if|else|return|print)\b/, Keyword
        rule /"(?:\\.|[^"\\])*"/, Str
        rule /\b\d+\b/, Num
        rule /\/\/[^\n]*/, Comment
        rule /\w+/, Name::Variable
      end
    end
  end
end
