(function(){window.ActiveAdmin.Popover=ActiveAdmin.Popover=function(){function t(t,e){var o;this.options=t,this.element=e,this.$element=$(this.element),o={fadeInDuration:20,fadeOutDuration:100,autoOpen:!0,pageWrapperElement:"#wrapper",onClickActionItemCallback:null},this.options=$.extend({},o,options),this.$popover=null,this.isOpen=!1,$(this.$element.attr("href")).length>0?this.$popover=$(this.$element.attr("href")):this.$popover=this.$element.next(".popover"),this._buildPopover(),this._bind()}return t.prototype.open=function(){return this.isOpen=!0,this.$popover.fadeIn(this.options.fadeInDuration),this._positionPopover(),this._positionNipple(),this},t.prototype.close=function(){return this.isOpen=!1,this.$popover.fadeOut(this.options.fadeOutDuration),this},t.prototype.destroy=function(){return this.$element.removeData("popover"),this.$element.unbind(),this.$element=null,this},t.prototype.option=function(){},t.prototype._buildPopover=function(){return this.$popover.prepend('<div class="popover_nipple"></div>'),this.$popover.hide(),this.$popover.addClass("popover")},t.prototype._bind=function(){return $(this.options.pageWrapperElement).bind("click",function(t){return function(e){return t.isOpen===!0?t.close():void 0}}(this)),this.options.autoOpen===!0?this.$element.bind("click",function(t){return function(){return t.isOpen===!0?t.close():t.open(),!1}}(this)):void 0},t.prototype._positionPopover=function(){var t,e,o;return t=this.$element.offset().left+this.$element.outerWidth()/2,e=this.$popover.outerWidth()/2,o=t-e,this.$popover.css("left",o)},t.prototype._positionNipple=function(){var t,e,o,i,n;return o=this.$popover.outerWidth()/2,e=this.$element.offset().top+this.$element.outerHeight()+10,this.$popover.css("top",e),t=this.$popover.find(".popover_nipple"),i=t.outerWidth()/2,n=o-i,t.css("left",n)},t}(),function(t){return t.widget.bridge("popover",ActiveAdmin.Popover)}(jQuery)}).call(this);