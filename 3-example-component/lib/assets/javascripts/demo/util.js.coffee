namespace 'Jpc', (exports) ->
  ###
    params are in order:
      url
      method
      data
      dataType
      successHandler
      errorHandler
  ###
  exports.request = (params...) ->
    [url, method, data, dataType, successHandler, errorHandler] = params
    
    # jQuery implementation
    # $.ajax
    #   url: url
    #   type: method
    #   data: data
    #   dataType: dataType
    #   success: successHandler
    #   error: errorHandler
      
    # Reqwest implementation
    reqwest
      url: url
      method: method
      data: data
      type: dataType
      success: successHandler
      error: errorHandler
    
  exports.on = (node, event, handler) ->
    $(node).on(event, handler)
    
  exports.uniqId = ->
    Math.random() * Math.pow(10, 17) + Math.random() * Math.pow(10, 17) + Math.random() * Math.pow(10, 17);
    
  exports.$ = (selector) ->
    $(selector)
    # here we can change implementation