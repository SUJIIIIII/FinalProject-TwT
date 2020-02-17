$(document).ready(function () {
    $(".list_cat_item").on("click", function () {
            alert("category Select!");
            _pre_change_img = _pre_img.replace('_c', '_a');
            $('.list_cat_item.on img').attr('src', _pre_change_img);
            $('.list_cat_item.on').removeClass('on');

            _this_img = $(this).find('img').attr('src');
            _this_change_img = _this_img.replace('_a', '_c');
            $(this).find('img').attr('src', _this_change_img);
            $(this).addClass('on');
            get_list(ci_srl);

            _this_cat = $('#city_list .list_cat_item.on').attr('data');
            get_tag_list(ci_srl, _this_cat);
    });


});

