# for word in ["foo", "bar", "baz"]
#   console.log word
$(->
);
  
# myfunc = (splat...) ->
#   [foo, bar, baz] = splat
#   console.log foo, bar, baz
#     
# myfunc "alice"
# myfunc "alice", "bob"
# 
# class Human
#   constructor: (@greeting) ->
#     
#   sayHello: () ->
#     console.log @greeting
#     
# class Programmer extends Human
#   sayHello: () ->
#     console.log "#{@greeting} or better say Hello, World!"
#     
# human = new Human "Hi!"
# programmer = new Programmer "Hi!"
# 
# human.sayHello()
# programmer.sayHello()