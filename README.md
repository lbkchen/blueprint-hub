# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Schema

### User
```
first_name :string
last_name :string
email :string
role :integer
```

### Sprint
```
start :date
end :date
name :string
has_many :resources
```

### Resource
```
belongs_to :sprint, optional
name :string
url :string
```

### Badge
```
icon_id :integer
name :string
```

### User Badge
```
belongs_to :user
belongs_to :badge
is_consumed :boolean
date_consumed :date
description :text
```
