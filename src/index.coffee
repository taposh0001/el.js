import riot             from 'riot'
import Views            from './views'
import {isFunction}     from 'es-is'
import {scheduleUpdate} from './schedule'

El =
  # deprecated
  Views:    Views

  View:     Views.View
  Form:     Views.Form
  Input:    Views.Input

  riot: riot
  scheduleUpdate: ()->
    scheduleUpdate()

for k, v of riot
  do (k, v) ->
    if isFunction v
      El[k] = ->
        v.apply riot, arguments

export default El
