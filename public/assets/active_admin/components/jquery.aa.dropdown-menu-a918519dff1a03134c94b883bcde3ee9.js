(function(){window.ActiveAdmin.DropdownMenu=ActiveAdmin.DropdownMenu=function(){function t(t,n){var i;this.options=t,this.element=n,this.$element=$(this.element),i={fadeInDuration:20,fadeOutDuration:100,onClickActionItemCallback:null},this.options=$.extend({},i,this.options),this.$menuButton=this.$element.find(".dropdown_menu_button"),this.$menuList=this.$element.find(".dropdown_menu_list_wrapper"),this.isOpen=!1,this._buildMenuList(),this._bind()}return t.prototype.open=function(){return this.isOpen=!0,this.$menuList.fadeIn(this.options.fadeInDuration),this._positionMenuList(),this._positionNipple(),this},t.prototype.close=function(){return this.isOpen=!1,this.$menuList.fadeOut(this.options.fadeOutDuration),this},t.prototype.destroy=function(){return this.$element.unbind(),this.$element=null,this},t.prototype.isDisabled=function(){return this.$menuButton.hasClass("disabled")},t.prototype.disable=function(){return this.$menuButton.addClass("disabled")},t.prototype.enable=function(){return this.$menuButton.removeClass("disabled")},t.prototype.option=function(t,n){return $.isPlainObject(t)?this.options=$.extend(!0,this.options,t):null!=t?this.options[t]:this.options[t]=n},t.prototype._buildMenuList=function(){return this.$menuList.prepend('<div class="dropdown_menu_nipple"></div>'),this.$menuList.hide()},t.prototype._bind=function(){return $("body").bind("click",function(t){return function(){return t.isOpen===!0?t.close():void 0}}(this)),this.$menuButton.bind("click",function(t){return function(){return t.isDisabled()||(t.isOpen===!0?t.close():t.open()),!1}}(this))},t.prototype._positionMenuList=function(){var t,n,i;return t=this.$menuButton.position().left+this.$menuButton.outerWidth()/2,n=this.$menuList.outerWidth()/2,i=t-n,this.$menuList.css("left",i)},t.prototype._positionNipple=function(){var t,n,i,e,o;return i=this.$menuList.outerWidth()/2,n=this.$menuButton.position().top+this.$menuButton.outerHeight()+10,this.$menuList.css("top",n),t=this.$menuList.find(".dropdown_menu_nipple"),e=t.outerWidth()/2,o=i-e,t.css("left",o)},t}(),function(t){return t.widget.bridge("aaDropdownMenu",ActiveAdmin.DropdownMenu),t(function(){return t(".dropdown_menu").aaDropdownMenu()})}(jQuery)}).call(this);