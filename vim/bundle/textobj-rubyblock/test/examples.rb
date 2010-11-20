class Foo
  # [cursor]
  # Should select Foo class
  if true
    # do not select inner block only
    # search forwards.
    # For each *keyword*, add to stack
    # for each 'end', remove *keyword* from stack
    # if an 'end' is found when stack is empty, jump to match '%'
  end
end

[1,2,3,4,5].map |i| do
  # don't forget that a method can be called on 'end'!
  i + 1
end.max
