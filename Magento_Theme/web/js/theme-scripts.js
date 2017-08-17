/**
 * Copyright © 2017 ImproDev. All rights reserved.
 */
define([
    'jquery',
    'underscore',
    'jquery/ui',
    'matchMedia',
    'customSelect',
    'owlCarousel'
],function($, _) {
    'use strict';

    $.widget('ImproDev.themeScripts',{
        options: {
            navTrigger: '.nav-toggle-trigger',
            navContent: '.nav-dropdown-content',

            headerPanelLinks: '.header-panel-links',

            related: {
                type: 'default',
                selector: '.products-related ol',
                params: {
                    items: 5,
                    margin: 28,
                    nav: true,
                    navText: false,
                    navElement: 'span',
                    responsive: {
                        0 : {
                            items: 1
                        },
                        480 : {
                            items: 2
                        },
                        768 : {
                            items: 3
                        },
                        1024 : {
                            items: 5
                        }
                    }
                }
            },

            viewed: {
                type: 'side-nav',
                selector: '.catalog-product-view .widget-viewed-grid',
                params: {
                    items: 5,
                    margin: 0,
                    nav: true,
                    navText: false,
                    navElement: 'span',
                    responsive: {
                        0 : {
                            items: 1
                        },
                        480 : {
                            items: 2
                        },
                        768 : {
                            items: 3
                        },
                        1024 : {
                            items: 5
                        }
                    }
                }
            }
        },

        _create: function() {
            _.bindAll(this, '_dropDownMenu', '_headerPanelLinksCollapse');

            mediaCheck({
                media: '(min-width: 768px)',
                entry: $.proxy(function() {
                    this._toggleDesktopMode();
                }, this),
                exit: $.proxy(function() {
                    this._toggleMobileMode();
                }, this)
            });

            this._stylingCurrencySymbol();
            this._scrollToReviews();

            // Init Related products carousel
            this._carouselInit(this.options.related);

            // Init Viewd products carousel
            this._carouselInit(this.options.viewed);

        },

        _toggleMobileMode: function () {
            this._dropDownMenu(false);
            this._headerPanelLinksCollapse(true);
        },

        _toggleDesktopMode: function () {
            this._dropDownMenu(true);
            this._headerPanelLinksCollapse(false);
        },

        _stylingCurrencySymbol: function () {
            var priceBlocks = $('.price');
            priceBlocks.each(function () {
                var price = $(this)[0].innerText;
                var priceArray = price.split('\xa0');
                console.log(1 in priceArray);
                if(1 in priceArray && priceArray[1].length) {
                    priceArray[1] = '<span class="currency-symbol">' + priceArray[1] + '</span>';
                    $(this).html(priceArray.join(' '));
                }
            });
        },

        _scrollToReviews: function () {
            $('.product-info-main .reviews-actions a').click(function (event) {
                event.preventDefault();
                var acnchor = $(this).attr('href').replace(/^.*?(#|$)/, '');
                $("#product-review-container").each(function(){
                    $('html, body').animate({
                        scrollTop: $('#' + acnchor).offset().top - 50
                    }, 300);
                });
            });
        },

        _dropDownMenu: function(dropdown) {
            if(dropdown) {
                $(this.options.navContent).hide();
                $(this.options.navTrigger)
                    .show()
                    .unbind('click')
                    .click(_.bind(function (e) {
                        e.stopPropagation();
                        $(this.options.navContent)
                            .stop()
                            .slideToggle(300);
                        $(this.options.navTrigger).toggleClass('active');
                    }, this));
                $(document).on('deactivate:dropDownMenu', _.bind(function() {
                    $(this.options.navTrigger).removeClass('active');
                    $(this.options.navContent).slideUp(300);
                }, this));
                $(this.options.navContent).on('click', function () {
                    $(document).unbind('deactivate:dropDownMenu');
                });
                $(document).on('click', function () {
                    $(this).trigger('deactivate:dropDownMenu');
                });
            } else {
                $(document).unbind('deactivate:dropDownMenu');
                $(this.options.navTrigger).hide();
                $(this.options.navContent).show();
            }
        },

        _headerPanelLinksCollapse: function (collapse) {
            var isTrigger = $('.panel-links-trigger').length;
            if(collapse && !isTrigger) {
                var trigger = document.createElement('i');
                $(trigger).addClass('panel-links-trigger fa fa-info-circle');
                $(this.options.headerPanelLinks).prepend(trigger);
                $(this.options.headerPanelLinks).collapsible({
                    header : ".panel-links-trigger",
                    content : "ul",
                    animate: true

                });
                $('.panel-links-trigger').click(function (e) {
                    e.stopPropagation();
                });

                // Cusotm event for deactivate collapse for header links
                $(document).on('deactivate:collapse', _.bind(function() {
                    $(this.options.headerPanelLinks).collapsible('deactivate');
                }, this));
                $(document).on('click', function () {
                   $(this).trigger('deactivate:collapse');
                });

                $('.block-search .label').before($(this.options.headerPanelLinks));


            } else {
                $(document).unbind('deactivate:collapse');
                if(isTrigger) {
                    $(this.options.headerPanelLinks).collapsible('destroy');
                    $('ul', this.options.headerPanelLinks).show();
                    $('.panel-links-trigger').remove();
                    $('.panel.header').prepend($(this.options.headerPanelLinks));
                }
            }

        },

        _carouselInit: function (data) {
            $(data.selector).addClass('owl-carousel ' + data.type).owlCarousel(data.params);
        }

    });

    return $.ImproDev.themeScripts;

});