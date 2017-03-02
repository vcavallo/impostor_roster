# Impostor Roster

Contributions are very much welcome! I typically do a better job at making
projects friendly to contributors, but this one sort of came out of nowhere.
For now, here's a non-exhaustive list of stuff I'd like to do:

## Todo

- Pagination or some kind of separation of topics or something. Not too much
  though. I sort of like it being a big weird list. Perhaps infinite scroll.
- Allow users to enter Days, Months, Years or any combination in the form;
  display the same intelligently on the view.
- Category auto-complete from existing categories in form
- Search
- Some kind of "Me Too!" button for posts that registers your own ineptitude
  for the same topic. Perhaps add your own length of experience and somehow
    show this (maybe as a total of all 'me toos' years of experience for the
    topic.). Would have to have a rough way to prevent spamming this.
- Profanity filter?
- Inappropriateness flagging?
- Non-bootstrap styling!
- Go through and get everything closer to Rails conventions (including things
  like partials, etc.)
- Upgrade to Rails 5
- More robust hosting situation
- DB backups

## Initializing

- This app uses [dotenv](https://github.com/bkeepers/dotenv) to manage secrets.
  You'll need to create a `.env` file at the project root and define a secret
  key there (`rake secret` is your friend) like this:

```
#.env living at application root

export SECRET_KEY_BASE=f0461bSOME_LONG_KEY_HERE
```

- Pretty sure everything else is standard rails. clone, `bundle`, `rake db:setup` (there are some seeds).

## Contributing

I keep a CHANGELOG.md file and (attempt to) adhere to semver, if for no other reason than these things keep me alert. I'm using `rake-version` to maintain the `VERSION` file and I update the changelog manually as feature branches are merged, more or less. If you're contributing, all that is mostly irrelevant to you, but the branching stuff might matter:

- keep your changes in feature branches created off `develop` and named like so: `feature-[SOME-THING-OR-OTHER]`.
- try to update the changelog with your changes, if you'd be so kind.

Easy. Those are eventually merged back into `develop` until it's time to open up a release branch - which is where the version bumps and any other last-minute fixes are made - which is then merged into `master` and back into `develop`.  
All this doesn't really matter to you, though. Just open feature branches off of `develop` :)
