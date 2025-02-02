require 'rouge'

class Rouge::Lexers::MyLang < Rouge::Lexer
  title "turbine"
  desc "Turbine programming language"

  state :root do
    rule /\b(if|else|return|print)\b/, Keyword
    rule /"(?:\\.|[^"\\])*"/, Str
    rule /\b\d+\b/, Num
    rule /\/\/[^\n]*/, Comment
    rule /\w+/, Name::Variable
  end
end
