

# Array Pair Sum

## Objective

You will be building a method in Ruby's array class called `pair_sum`. This method will take one argument, a number. 

Given an array of integers, `#pair_sum` output all pairs that add up to the argument.

## Examples

#### First Example

Here's an example of an ideal sum of three:

```ruby
numbers = [ 0, 3, 1, 4, 2 ]
numbers.pair_sum(3)
#=> [
#      [ 0, 3 ],
#      [ 1, 2 ]
#   ]
```

Notice how the nested arrays always have the lower number first followed by the higher number. For instance, given the code above, the return value should not look like this:

```ruby
#=> [
#      [ 3, 0 ],
#      [ 2, 1 ]
#   ]
```

The return value above is incorrect because the first array's first value (3) is greater than it's second (0). Same goes for the second nested array.

Let's look at the correct return value again:

```ruby
#=> [
#      [ 0, 3 ],
#      [ 1, 2 ]
#   ]
```

Notice how the nested arrays are sorted by the value of their first element. For instance, the nested arrays would not be sorted like this:

```ruby
#=> [
#      [ 1, 2 ],
#      [ 0, 3 ]
#   ]
```
The return value above is incorrect because the first array's first value (1) is greater than the second arrays's first value (0).

Let's take a look at another example.

#### Second Example

Here's an example of an ideal sum of five:

```ruby
numbers = [ 2, 3, 5, 1, 4, 7, 0, 6 ]
numbers.pair_sum(5)
#=> [
#      [ 0, 5 ],
#      [ 1, 4 ],
#      [ 2, 3 ]
#   ]
```

#### Third Example

Here's an example of an ideal sum of five:

```ruby
numbers = [ 8, 1, 0, 4, 6, 10, 2, 4, -2 ]
numbers.pair_sum(8)
#=> [
#      [ -2, 10 ],
#      [  0,  8 ],
#      [  2,  6 ],
#      [  4,  4 ]
#   ]
```

## Resources

* [Array Pair Sum](http://www.ardendertat.com/2011/09/17/programming-interview-questions-1-array-pair-sum/)
