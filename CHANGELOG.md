
# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) 
and this project adheres to [Semantic Versioning](http://semver.org/).

-----

format notes:

_Added_ for new features.
_Changed_ for changes in existing functionality.
_Deprecated_ for once-stable features removed in upcoming releases.
_Removed_ for deprecated features removed in this release.
_Fixed_ for any bug fixes.
_Security_ to invite users to upgrade in case of vulnerabilities.

-----

## [1.0.0]

### Added

- `administrate` admin
- `goofy` tag to posts

### Changed

- Pagination is now handled by `kaminari` instead of `will_paginate` since the two don't play well together and Administrate uses the former.

## [0.9.1]

### Fixed

- Changed cookie serializer to hybrid

## [0.9.0]

### Changed

- Upgrade to Rails 4.2.10
- `category` resource is now plural
- skip recaptcha in dev/test envs

### Added

- Feature specs for critical paths
- Spring

## [0.8.0]

### Added

- Disqus comment count in post index and category show

## [0.7.0]

### Added

- Profanity filter... This is what the internet does

## [0.6.0]

### Added

- Disqus
- Post show page for comments

### Changed

- Add friendly id slugs to Post

## [0.5.0]

### Added

- Twitter account for impostor roster!
- `.ruby-version`

## [0.4.2]

### Fixed

- UNCOMMENT captcha check :\

## [0.4.1]

### Fixed

- Redirect after creating a post now doesn't break

### Changed

- Added heroku-deflate for assets
- Load JS with async

## [0.4.0]

### Added

- Pagination for 30 records on index

### Changed

- Order posts by id desc

## [0.3.2]

### Fixed

- Post now validates that it belongs to a Category.

## [0.3.1]

### Fixed

- Category and Post validations now disallow all but letters, numbers and spaces

## [0.3.0]

### Added

- Confirm prompt to fix post before submitting

### Changed

- Random submission placeholders for 'inability' input

## [0.2.1]

### Added

- reCAPTCHA on post form

## [0.2.0]

### Added

- CHANGELOG.md (this one!)
- Dotenv for secrets
- README.md

## [0.1.0]

- Initial production release and GitHub sharing
