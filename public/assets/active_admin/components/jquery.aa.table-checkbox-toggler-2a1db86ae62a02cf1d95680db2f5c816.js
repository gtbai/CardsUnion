(function(){var t=function(t,r){function n(){this.constructor=t}for(var o in r)e.call(r,o)&&(t[o]=r[o]);return n.prototype=r.prototype,t.prototype=new n,t.__super__=r.prototype,t},e={}.hasOwnProperty;window.ActiveAdmin.TableCheckboxToggler=ActiveAdmin.TableCheckboxToggler=function(e){function r(){return r.__super__.constructor.apply(this,arguments)}return t(r,e),r.prototype._init=function(){return r.__super__._init.apply(this,arguments)},r.prototype._bind=function(){return r.__super__._bind.apply(this,arguments),this.$container.find("tbody td").click(function(t){return function(e){return"checkbox"!==e.target.type?t._didClickCell(e.target):void 0}}(this))},r.prototype._didChangeCheckbox=function(t){var e;return r.__super__._didChangeCheckbox.apply(this,arguments),e=$(t).parents("tr"),t.checked?e.addClass("selected"):e.removeClass("selected")},r.prototype._didClickCell=function(t){return $(t).parent("tr").find(":checkbox").click()},r}(ActiveAdmin.CheckboxToggler),jQuery(function(t){return t.widget.bridge("tableCheckboxToggler",ActiveAdmin.TableCheckboxToggler)})}).call(this);