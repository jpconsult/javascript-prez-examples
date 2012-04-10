namespace 'Jpc', (exports) ->
  class exports.Autocomplete
    constructor: (@input) ->
      @init()
      @items = []

    init: ->
      # generate dom and store node in var
      @uniqid = "jpc-autocomplete-#{Jpc.uniqId()}"
      @input.attr "autocomplete", "off"
      @input.after "<div class=\"jpc-autocomplete-items-container\" id=\"#{@uniqid}\"></div>"
      @node = Jpc.$("##{@uniqid}")
      
      # bind event on keypress
      Jpc.on(@input, "keyup", @writeInTextFieldHandler)
      
    render: ->
      @node.show()
      @node.html ""
      for item in @items
        item.render()
      
    # prenasime kontext odsud kamkoliv => i jinde this (@) odkazuje na Autocomplete
    writeInTextFieldHandler: (evt) =>
      data = Jpc.request @input.attr("data-url"), "GET", query: @input.val(), 'json', @buildItems
        
    buildItems: (data) =>
      @items = []
      for row in data
        @items.push new Jpc.AutocompleteItem(row, @)
      @render()
      
    selected: () =>
      @node.hide()
      