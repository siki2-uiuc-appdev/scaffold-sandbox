# Scaffold Sandbox

## Scaffold

Try the `scaffold` generator:

```
rails generate scaffold task title:string description:text complete:boolean
```

[Compare the output with the `draft:resource` generator's output.](https://github.com/raghubetina/movie-resource/pull/1/files)

Start your server and visit `/tasks`. Test it out.

Do you understand every line of `scaffold`? Ask lots of questions.

## Validations

Add a presence validation to the title column of tasks. Test it out.

## Devise

[Add Devise](https://chapters.firstdraft.com/chapters/880) and try generating a Devise model.

```
rails g devise user first_name:string last_name:string
```

This does something similar to `rails g draft:account`, but a _lot_ better. Try out the `current_user` helper method that Devise provides.

- Add a navbar with sign up, sign in, edit profile, and sign out links.
- While we're at it, add [flash messages](https://chapters.firstdraft.com/chapters/850#flash-messages) to the application layout.
- Make [the necessary changes](https://chapters.firstdraft.com/chapters/880#customizing-devise-views) to allow `first_name` and `last_name` to be set via the sign up/edit profile forms.

## Add a foreign key column

```
rails g migration AddUserIdToTasks user:belongs_to
```

## Add association accessors

- A user has many tasks.
    - [When a user is destroyed, destroy its tasks.](https://guides.rubyonrails.org/association_basics.html#options-for-belongs-to-dependent)
- A task belongs to a user.

## Update the create action

Try out the create action. It won't work right away — why?

Fix it.

## Filter `tasks#index`

Only display the signed in user's tasks on the home page.

## Add tasks_count to `User`

- Add the column:

    ```
    rails g migration AddTasksCountToUsers tasks_count:integer
    ```
- Add [the `:counter_cache` option](https://guides.rubyonrails.org/association_basics.html#options-for-belongs-to-counter-cache) to `belongs_to`:

    ```ruby
    belongs_to :user, counter_cache: true
    ```

## Better redirects

- Make the `tasks#create`, `tasks#update`, and `tasks#destroy` actions redirect to `/tasks#index` instead of `tasks#show`.
