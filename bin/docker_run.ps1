function Run-jekyll-site {
    docker run --rm -d -v $PWD":/srv/jekyll/" -p "8080:8080" --name site -it amirpourmand/al-folio bundler exec jekyll serve --watch --drafts --port=8080 --host=0.0.0.0 --incremental --livereload --force-polling
}
Set-Alias docker_run_site Run-jekyll-site
docker_run_site
