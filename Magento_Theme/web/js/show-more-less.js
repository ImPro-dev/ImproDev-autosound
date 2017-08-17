/**
 * Copyright © 2017 ImproDev. All rights reserved.
 */
define([
    'jquery',
    'matchMedia',
    'mage/translate'
],function($) {
    'use strict';

    $.widget('ImproDev.showMoreLess', {

        options: {
            closedHeight: 160,
            fullHeight: '',
            openLabel: $.mage.__("Show More"),
            closeLabel: $.mage.__("Show Less")
        },

        _create: function() {

            this.options.fullHeight = $(this.element).height();

            if(this.options.fullHeight <= this.options.closedHeight) {
                return false;
            }

            $(this.element).addClass('show-more-block').wrapInner('<div class="show-more-less-content"></div>');
            var content = $('> .show-more-less-content', this.element);

            mediaCheck({
                media: '(min-width: 768px)',
                entry: $.proxy(function() {

                    content.css({'height' : this.options.closedHeight}).addClass('closed');
                    this._toggleBlock();
                }, this),
                exit: $.proxy(function() {
                    content.css({'height' : 'auto'}).removeClass('opened closed');
                    $('.show-more-less').remove();
                }, this)
            });
        },

        _createTrigger: function () {
            var trigger = jQuery('<span />', {
                class: 'open show-more-less',
                text: this.options.openLabel
            });
            $(this.element).append(trigger);

            return trigger;
        },

        _toggleBlock: function () {

            var _this = this;
            var trigger = this._createTrigger();

            trigger.click(function(e) {

                e.stopPropagation();
                $(_this.element).toggleClass('opened closed');

                $(this).toggleClass('open close').text(function () {
                    return $(this).hasClass('close') ? _this.options.closeLabel : _this.options.openLabel;
                });
                var height = $(this).hasClass('open') ? _this.options.closedHeight :  '100%';

                $('> .show-more-less-content', _this.element).animate({
                    'height': height
                }, 200);

            });
        }

    });

    return $.ImproDev.showMoreLess;

});