#RSpec and Ruby Basics

####To run a Ruby app from the console:
If your file is called my_app.rb, 

```ruby my_app.rb```

####To create a spec file for a Ruby app:

Make a new file with a name that adds _spec to the file you're planning on testing. For a Ruby app called **my_app.rb**, you'd create **my_app_spec.rb**

You'll need to include the following **require** statements at the top of your spec file:

```
require 'rspec'
require './my_app'
```

####To run an RSpec test file from the console:
If your spec file is called my_app_spec.rb, 

```rspec my_app_spec.rb```

####RSpec syntax basics

Set context for your tests with **describe** statements:


```

describe MyClass do
	describe '.action' do
	end
end

```

In the sample above, we're setting up RSpec to organize our specs in the console, and giving ourselves clues. The describe statements above mean that our tests will be noted **MyClass.action…*rest of spec***, and they're a way of letting us know that we're looking at the **action** method of **MyClass**.

Write unit tests with **it…do** and **expect().to** statements:

```

describe MyClass do
	describe '.action' do
	
		it 'is a string' do
			expect(MyClass.new.action).to be_a(String)
		end
	
	end
end

```

In the sample above, the phrase **is a string** is a clue for us (it'll output to the console after **MyClass.action**), and the expect statement nested within represents our expected return from ```MyClass.new.action```

####Testing best practices

- Write tests first, and get them to fail
- Once you have a failure (validating that your test is written well and won't accidentally pass for outside reasons), write code to pass the test
- Lather, rinse, repeat

