/**
 * Copyright © 2013-2017 Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */
define([
    'jquery',
    'showMoreLess'
], function ($) {
    'use strict';

    function processReviews(config, fromPages) {
        $.ajax({
            url: config.productReviewUrl,
            cache: true,
            dataType: 'html'
        }).done(function (data) {
            $('#product-review-container').html(data);
            $('#product-review-container .review-text').showMoreLess({
                closedHeight: config.reviewClosedHeight,
                openLabel: config.reviewOpenLabel,
                closeLabel: config.reviewCloseLabel
            });
            $('#product-review-container .review-items').showMoreLess({
                closedHeight: config.allClosedHeight,
                openLabel: config.allOpenLabel,
                closeLabel: config.allCloseLabel
            });
            $('[data-role="product-review"] .pages a').each(function (index, element) {
                $(element).click(function (event) {
                    processReviews($(element).attr('href'), true);
                    event.preventDefault();
                });
            });
        }).complete(function () {
            if (fromPages == true) {
                $('html, body').animate({
                    scrollTop: $('#reviews').offset().top - 50
                }, 300);
            }
        });
    }

    return function (config, element) {
        processReviews(config);
        $(function () {
            $('.product-info-main .reviews-actions a').click(function (event) {
                event.preventDefault();
                var acnchor = $(this).attr('href').replace(/^.*?(#|$)/, '');
                $(".product.data.items [data-role='content']").each(function(index){
                    if (this.id == 'reviews') {
                        $('.product.data.items').tabs('activate', index);
                        $('html, body').animate({
                            scrollTop: $('#' + acnchor).offset().top - 50
                        }, 300);
                    }
                });
            });
        });
    };
});
