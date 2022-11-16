# Scaffold Sandbox

## Scaffold

Try the `scaffold` generator:

```
rails generate scaffold task title:string description:text
```

[Compare the output with the `draft:resource` generator's output.](https://github.com/raghubetina/movie-resource/pull/1/files)

Do you understand every line of `scaffold`? Ask lots of questions.

## Devise

[Add Devise](https://chapters.firstdraft.com/chapters/880) and try generating a Devise model.

```
rails g devise user username:string avatar_url:string
```

This does something similar to `rails g draft:account`, but a _lot_ better. Try out the `current_user` helper method that Devise provides.

## Add a foreign key column

```
rails g migration AddUserIdToTasks user:belongs_to
```

## Add association accessors

- A user has many tasks.
    - When a user is destroyed, destroy its tasks.
- A task belongs to a user.

## Add tasks_count to `User`

- Add the column:

    ```
    rails g migration AddTasksCountToUsers tasks_count:integer
    ```
- Add the option to `belongs_to`:

    ```ruby
    belongs_to :user, counter_cache: true
    ```



