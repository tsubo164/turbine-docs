require 'rouge'

class Rouge::Lexers::MyLang < Rouge::Lexer
  title "MyLang"
  desc "A simple custom language"

  state :root do
    rule /\b(if|else|return)\b/, Keyword
    rule /"(?:\\.|[^"\\])*"/, Str
    rule /\b\d+\b/, Num
    rule /\/\/[^\n]*/, Comment
    rule /\w+/, Name::Variable
  end
end
