module Docs
  class Haskell < UrlScraper
    self.name = 'Haskell'
    self.type = 'haskell'
    self.version = '7.10.2'
    self.base_url = "https://downloads.haskell.org/~ghc/#{version}/docs/html/libraries/"
    self.root_path = 'index.html'

    html_filters.push 'haskell/entries', 'haskell/clean_html'

    options[:container] = '#content'

    options[:skip_patterns] = [
      /src\//,
      /doc-index/,
      /haskell2010/,
      /ghc-/,
      /Cabal-/,
      /Compiler-Hoopl-Internals\.html\z/i,
      /Control-Exception-Base\.html\z/i,
      /Data-Binary-Get-Internal\.html\z/i,
      /Language-Haskell-TH-Lib\.html\z/i,
      /Prelude\.html\z/i,
      /Text-PrettyPrint\.html\z/i,
      /Data-OldTypeable-Internal\.html\z/i,
      /Data-Typeable-Internal\.html\z/i,
      /GHC-IO-Encoding-Types\.html\z/i,
      /System-Posix-Process-Internals\.html\z/i
    ]

    options[:attribution] = <<-HTML
      &copy; The University of Glasgow and others<br>
      Licensed under a BSD-style license (see top of the page).
    HTML
  end
end
