# Bug test
Testing a bug with running `rspec` and [ActiveInteractions](https://github.com/orgsync/active_interaction/)

## Running

1. `git clone git@github.com:jwoertink/rspec-interactions-test.git`
2. `cd rspec-interactions-test`
3. `bundle`
4. `rspec spec/`

### Desired Result
a pending spec

### Actual Result

```text
1) Signup#execute validations validates username
     Failure/Error: Unable to find matching line from backtrace
     ActiveRecord::ConnectionNotEstablished:
       No connection pool for ActiveRecord::Base
```
