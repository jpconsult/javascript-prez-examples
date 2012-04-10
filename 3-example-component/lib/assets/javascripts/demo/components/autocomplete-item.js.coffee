namespace 'Jpc', (exports) ->
  class exports.AutocompleteItem
    constructor: (@text, @parent) ->
      @init()
      
    init: ->
      @id = "jpc-autocomplete-item-#{Jpc.uniqId()}"
              
    render: ->
      @parent.node.append "<div class=\"jpc-autocomplete-item\" id=\"#{@id}\">#{@text}</div>"
      @node = Jpc.$("##{@id}")
      Jpc.on @node, "click", @clickHandler
      
    clickHandler: (evt) =>
      @parent.input.val @text
      @parent.selected()
        