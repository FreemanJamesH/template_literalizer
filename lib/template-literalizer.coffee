{CompositeDisposable} = require 'atom'

module.exports = TemplateLiteralizer =
  subscriptions: null

  activate: (state) ->
    @subscriptions = new CompositeDisposable
    @subscriptions.add atom.commands.add 'atom-workspace', 'template-literalizer:convert': => @convert()

  deactivate: ->
    @subscriptions.dispose()

  convert: ->
    # console.log("Hello!")
    if editor = atom.workspace.getActiveTextEditor()
      selection = editor.getSelectedText()
      converter = (selectionToConvert) ->
        console.log selectionToConvert
      converter selection
      console.log selection
