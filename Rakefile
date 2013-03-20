task "deploy" do
  sh "git add public; git commit -m 'Deployed to gh-pages'"
  sh "git subtree push --prefix public origin gh-pages"
end
