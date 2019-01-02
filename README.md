>>ruby command lines


Backend dev
***********
DB table is addressed with models

For a table with list and details of articles-->>
Naming convention:
Model name : singular, first letter uppercase. (Article)
Table name : plural, first letter lowercase. (articles)
Model name filename : all lowercase , singular (article.rb)
Controller name filename : plural of model (articles_controller.rb)


*****
You create DB tables with migration.
Syntax:
$ bin/rails generate migration create_<tablename>

Following above pattern it will be:
$ bin/rails generate migration create_articles

This will create a migration file <datetime>_create_articles.rb
Here it will be :
20190101132242_create_articles.rb

To map code to table:
$ rails db:migrate


Now check schema file in /db folder.

To rollback the changes:
$ rails db:rollback
********
To create a model:
-Create a file manually in /models folder as Article.rb (CamelCase)

And enter below code in it:
class Article < ApplicationRecord

end
********
Creating entries in db table

Use rails console:
$ rails console

$ article = Article.new
$ article.column1 = "value for column1"
$ article.column2 = "value for column2"
OR
$ Article.create(col1: "value for col1", col2: "value for col2")

To push the entries to actual DB if you are doing object based pushing:
$ article.save

Note : create command hits database directly.

*****
In model file article.rb
Syntax for field validation:
$ validates :title, presence: true //to make fields mandatory

****
You can destroy a record by its id.
e.g.
Article.destroy(1) //this will destroy record with id=1 from articles table.
