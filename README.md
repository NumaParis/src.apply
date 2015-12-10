This website is awesome! apply.numa.co
This website is a middleman website, for any technical challanges refer to the documentation https://middlemanapp.com/basics/install/
I am using [rbenv](https://github.com/rbenv/rbenv) to jugle different ruby verssions, [see why](https://robots.thoughtbot.com/using-rbenv-to-manage-rubies-and-gems) ?

##quick instructions
- fork the repo
- go to folder, run `bundle install`
- then run `bundle exec middleman`
- you can see the website live at http://localhost:4567/
- to deploy the website do : `bundle exec middleman deploy --build-before`
- content edit : all content is on google drive in [this spreadsheet](https://docs.google.com/spreadsheets/d/1YQ8Q-ZeRoYhACAn_AYNhBbSzo6Lx4qjqken_mFHAKH8/edit#gid=1402341569)
- for better content management, if needed, have a look at prismic.io 
- Every time you edit the spreadsheet rerun the script and redeploy. `bundle exec middleman deploy --build-before` to automize this get the circle.ci integration to work.

##Notes & To Do:
-----
- ✔ install analytics
- ✔ optimize images
- ✔ optimize navigation on mobile devices
- ✔ make the partnerer accelerator map more fun
- extensive testing on other browsers (test in ie maybe)
- ✔ Install GA
- set up continuous development in CircleCi
- add a version in french (if it's needed)
- Make the footer nicer
	* add a newsletter box (keep in touch)
	* add youtube icon linked to the campus channel
	* link to the two other pages of the site
	* format these two pages
	* customize the 404 page

[mkdrendering]: http://vaidehijoshi.github.io/blog/2015/08/11/rolling-out-the-redcarpet-for-rendering-markdown/

### a buch of useful commands to operate middleman 

- `bundle exec middleman` - runs the script
- `bundle exec middleman build` - builds the site
- `bundle exec middleman deploy` - sends the site online


Build
-----

```bash
# English blog
MM_LANG=en bundle exec middleman build
# Frech blog
MM_LANG=fr bundle exec middleman build
```

Preview
-------

```bash
# English blog
MM_LANG=en bundle exec middleman server -p 4567
# French blog
MM_LANG=fr bundle exec middleman server -p 5678
```

Deploy
------

Export GitHub [OAuth Token] to .env.
```
echo "GH_TOKEN=<MY_GITHUB_TOKEN>" > .env
```


```bash
# English blog
MM_LANG=en bundle exec middleman deploy
# French blog
MM_LANG=fr bundle exec middleman deploy
```

License
-------

Copyright (C) 2015 [Marius Nedelcu][English].
All rights reserved with all articles and pictures.