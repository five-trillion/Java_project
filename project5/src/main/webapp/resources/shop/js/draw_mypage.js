<html> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no"> <meta http-equiv="X-UA-Compatible" content="ie=edge"> <title>SNAP REVIEW</title> <script>
(() => {
const makeStyleSheet = (() => {
const link = document.createElement("link");
link.setAttribute("rel", "stylesheet");
return (src) => {
const newLink = link.cloneNode();
newLink.setAttribute("href", src);
return newLink;
};
})(),
makeInput = (() => {
const input = document.createElement("input");
input.setAttribute("hidden", "");
return (id, val) => {
const newInput = input.cloneNode();
newInput.setAttribute("id", id);
newInput.value = val;
return newInput;
};
})(),
makeCounter = () => {
let count = 0;
return {
get: () => count,
increase: () => ++count,
decrease: () => --count
};
};
styleSheetCounter = makeCounter(),
addStyleSheet = (src) => {
const link = makeStyleSheet(src);
styleSheetCounter.increase();
link.onload = function() {
styleSheetCounter.decrease();
};
link.onerror = () => styleSheetCounter.decrease();
document.head.appendChild(link);
},
timer = (checker, callback, delay = 50) => {
const handle = setInterval(() => {
if(!checker()) return;
clearInterval(handle);
callback();
}, delay);
};
addStyleSheet(`https://cdn.snapfit.co.kr/review/css/noto-sans-kr.css`);
addStyleSheet(`https://cdn.snapfit.co.kr/review/owlcarousel/assets/owl.carousel.min.css`);
addStyleSheet(`https://cdn.snapfit.co.kr/review/owlcarousel/assets/owl.theme.default.min.css`);
addStyleSheet(`https://cdn.snapfit.co.kr/review/css/select2.min.css`);
addStyleSheet(`https://cdn.snapfit.co.kr/review/css/pc_common.css?12`); window.checkLoadStyleSheet = async () => await new Promise(resolve => timer(() => 0 === styleSheetCounter.get(), resolve.bind(null, 1)));
window.checkLoadPage = async () => {
window.isPageLoadComplete ??= false;
await checkLoadStyleSheet();
return await new Promise(resolve => timer(() => window.isPageLoadComplete, resolve.bind(null, 1)));
};
checkLoadPage().then(timer(
() => {
const main = document.getElementById("snapreview_main"),
style = main?.style || {};
return "block" == style.display && ['', 1].includes(style.opacity);
},
() => {
document.body.append(makeInput("pageLoadComplete", 1))
}
));
})();
</script> <style>
:root,
::before,
::after {

--thema-0-color-1: #FFFFFF;
--thema-0-color-2: #292929;
--thema-0-color-3: #A7A7A7;
--thema-0-color-4: #F5F5F5;
--thema-0-color-5: #393939;
--thema-0-color-6: #707070;
--thema-0-color-7: #000000;
--thema-0-color-8: #F6F6F6;
--thema-0-color-9: #9A9A9A;
--thema-0-color-10: #F1F2F4;
--thema-0-color-11: #2F2F2F;
--thema-0-color-12: #E1E1E1;
--thema-0-color-13: #575757;
--thema-0-color-14: #44556B;
--thema-0-color-15: #EB4444;
--thema-0-color-16: #A1AAB5;
--thema-0-color-17: #616161;
--thema-0-color-18: #F9F9F9;
--thema-0-color-19: #D4D4D4;
--thema-0-color-20: #E6E6E6;
--thema-0-color-21: #A5A5A5;
--thema-0-color-22: #DDDDDD;
--thema-0-color-23: #FAFAFA;
--thema-0-color-24: #C4C4C4;
--thema-0-color-25: #F3F3F3;
--thema-0-color-26: #9D9D9D;
--thema-0-color-27: #969696;
--thema-0-color-28: #ECECEC;
--thema-0-color-29: #FCFCFC;
--thema-0-color-30: #2699FB;
--thema-0-color-31: #C20F2F;
--thema-0-color-32: #F2F2F2;
--thema-0-color-33: #E9E9E9;
}
</style></head> <body> <script type='text/javascript' src='https://cdn.snapfit.co.kr/review/js/jquery-3.4.1.min.js'></script> <script type='text/javascript' src='https://cdn.snapfit.co.kr/review/owlcarousel/owl.carousel.min.js'></script> <script type='text/javascript' src='https://cdn.snapfit.co.kr/review/js/select2.min.js'></script> <script type='text/javascript' src='https://cdn.snapfit.co.kr/review/js/snap_combine_script_main.js?815'></script> <script type='text/javascript' src='https://cdn.snapfit.co.kr/review/js/in_review_common.js?815'></script> <script type='text/javascript' src='https://cdn.snapfit.co.kr/review/js/mypage_common.js?815'></script><script>

function getTransitionEndEventName() {
return "transitionend webkitTransitionEnd oTransitionEnd otransitionend";
}
$.fn.extend({

onceEventHandlerMaker: (function() {

function counter() {
let count = 0;
return {
add: () => ++count,
reset: () => count = 0
}
}
return function (handler) {
if(typeof handler !=="function") return this;
const cnt = counter();
return {
off:  () => cnt.reset(),
handle: function(e) {
if(cnt.add() > 1) return e.originalEvent.cancelable && e.originalEvent.preventDefault();

return handler.call(this, e);
}
};
};
})(),

onceEventHandler: (() => {
const makerMap = new Map();

return function(eventName, handler, isOff = false) {
if(!eventName || typeof handler !=="function") return this;
const map = makerMap.get(eventName) || new Map();
let handle = map.get(handler);
if(!handle) {
handle = this.onceEventHandlerMaker(handler);
map.set(handler, handle);
makerMap.set(eventName, map);
}
isOff && handle.off();
return handle.handle;
}
})(),

onceEventCaller: function (eventName, callback) {
if(typeof callback !=="function") return this;
return this.one(eventName, null, this.onceEventHandler(eventName, callback));
},

offOnceEventCaller: function (eventName, callback) {
if(typeof callback !=="function") return this;
return this.off(eventName, null, this.onceEventHandler(eventName, callback, true));
},

onceTransitionEnd: function (callback) {
return this.onceEventCaller(getTransitionEndEventName(), callback);
},

offOnceTransitionEnd: function (callback) {
return this.offOnceEventCaller(getTransitionEndEventName(), callback);
}
});
</script> <div id='snapreview_main'> <div id='snapreview_contents'> <style>
@import url(//cdn.snapfit.co.kr/snapcompany/fonts/pretendard-1.3.3/pretendard-subset.css);
body {
margin: 0;
overflow-x: hidden;
}
.sf_review_user_score,
.sf_displaynone,
.sf_review_user_writer,
.sf_review_user_recommend .sf_review_user_recommend_score,
#content_area .content:not(.selected),
.sf_review_write_user,
.content.writable .sf_review_more_detail,
.content.writable .sf_update_btn,
.content.writable .sf_delete_btn,
.content.writed .sf_write_btn {
display: none;
}
.no-drag {
-ms-user-select: none;
-moz-user-select: -moz-none;
-webkit-user-select: none;
-khtml-user-select: none;
user-select: none;
}
.sf_snap_review_logo {
float: right;
font-size: 0.815rem;
}
.sf_review_user_info {
padding: 1.875rem 0px;
border-bottom: 1px solid #F2F2F2;
}
.sf_review_user_info.uploading::after {
display: block;
position: absolute;
left: 0;
top: 0;
width: 100%;
height: 100%;
content: '리뷰가 업로드 중입니다.';
color: #000;
font-weight: bold;
background: #f2f2f2;
opacity: 0.6;
text-align: center;
font-size: 17px;
align-items: center;
justify-content: center;
display: flex;
}
.sf_review_item_name {
color: #393939;
font-weight: bold;
font-size: 1.0625rem;
}
#tab_area .tab {
font-size: 0.9375rem;
padding: 14px 0;
display: inline-block;
width: 12.5rem;
text-align: center;
color: #575757;
cursor: pointer;
}
#tab_area {
border-bottom: 1px #E6E6E6 solid;
margin-bottom: 1.25rem;
}
#tab_area .tab.selected {
color: #1B73CC;
font-weight: bold;
border-bottom: 3px #1B73CC solid;
}
.order_date_area {
width: 7.5rem;
height: 1.875rem;
line-height: 1.875rem;
background-color: #F5F5F5;
text-align: center;
font-size: 0.8125rem;
font-weight: bold;
color: #292929;
border-radius: 3px;
margin-bottom: 1.25rem;
}
.sf_order_option {
color: #A7A7A7;
}
.sf_order_option_area {
font-size: 0.875rem;
margin-top: 0.3125rem;
height: 1.25rem;
line-height: 1.25rem;
}
.order_date_title {
margin-left: 0.1875rem;
}
.sf_order_count_area {
position: relative;
display: inline-block;
color: #393939;
margin-left: 0.5rem;
padding-left: 0.5rem;
}
.sf_order_count_area:before {
position: absolute;
left: 0;
top: calc(50% - 0.09375rem);
display: block;
content: '';
width: 0.1875rem;
height: 0.1875rem;
background-color: #707070;
border-radius: 100%;
}
.btn_area {
margin-top: 1.53125rem;
}
.btn {
float: left;
width: 6.25rem;
height: 1.875rem;
border-radius: 5px;
border: 1px solid #E1E1E1;
background-color: #fff;
color: #575757;
font-size: 0.75rem;
font-weight: bold;
margin-right: 0.65625rem;
cursor: pointer;
}
.sf_write_btn {
border: 1px solid #1B73CC;
color: #1B73CC;
}
.sf_review_more_detail {
position: absolute;
right: 0;
top: calc(50% - 0.46875rem);
width: 1.875rem;
height: 0.9375rem;
cursor: pointer;
background-size: 100%;
background-position: center;
background-repeat: no-repeat;
background-image: url(//cdn.snapfit.co.kr/review/images/down_gray.png);
transition-duration: 0.4s;
}
.sf_review_more_detail.active {
background-image: url(//cdn.snapfit.co.kr/review/images/down_blue.png);
transition-duration: 0.4s;
-webkit-transform: rotate(180deg);
-moz-transform: rotate(180deg);
-ms-transform: rotate(180deg);
-o-transform: rotate(180deg);
transform: rotate(180deg);
}
.clearfix::after {
display: block;
content: '';
clear: both;
}
.sf_review_item_thumb,
.sf_review_item_namearea {
float: left;
}
.sf_review_item_namearea {
font-size: 0.7125rem;
width: calc(100% - 7.4375rem);
}
.sf_review_area_top,
.sf_review_area_bottom {
border-radius: 3px;
padding: 1.25rem;
}
.sf_review_area_top {
border: 1px solid #E1E1E1;
}
.sf_review_area_bottom {
margin-top: 0.9375rem;
background: #F2F2F2;
}
.sf_review_selected_warp {
font-size: 0.8125rem;
line-height: 1.4375rem;
}
.sf_review_selected_list {
width: 6.25rem;
color: #575757;
font-weight: bold;
}
.user_use_usually_size {
color: #707070;
}
.sf_review_user_write {
font-size: 0.8125rem;
color: #575757;
line-height: 1.1875rem;
margin: 25px 0 0 0;
cursor: initial;
width: 100%;
}
.sf_review_item_thumb {
width: 6.25rem;
margin: 0;
margin-right: 1.1875rem;
}
.sf_review_img {
width: 100%;
}
.sf_review_item_info_detail {
position: relative;
width: 100%;
}
.sf_review_user_useally_selected_size,
.user_use_usually_size {
display: table-cell;
}
.sf_review_user_selected_info {
padding: 0;
border: none;
margin: 0;
max-width: 100%;
}
.sf_review_user_recommend {
margin: 0;
width: 100%;
}
.sf_pop_review_user_recommend_text {
margin: 0;
}
.sf_pop_review_user_recommend_text .value_text {
font-size: 0.875rem;
color: #292929;
font-weight: bold;
}
.sf_review_comment_text_container {
font-size: 0.8125rem;
margin-top: 0.625rem;
color: #575757;
line-height: 1.1875rem;
}
.sf_review_user_selected_info span {
display: table-cell;
vertical-align: top;
}
.pagination li.this {
color: white;
background: #292929;
}
.sf_review_pagination li a {
font-weight: normal;
}
.pagination li {
display: inline-block;
vertical-align: middle;
width: auto;
line-height: 14px;
text-decoration: none;
text-align: center;
font-size: 0.75rem;
color: #292929;
font-weight: normal;
}
.sf_review_user_photo .sf_review_detail_img {
margin: 0;
margin-left: 0.625rem;
margin-bottom: 1.25rem;
width: 6.25rem;
border-radius: 3px;
}
.sf_review_user_photo .sf_review_detail_img:first-child {
margin-left: 0;
}
.sf_review_user_write_review {
margin: 0;
cursor: initial;
}
.sf_review_user_area {
margin-top: 2.1875rem;
}
.sf_user_write_review span {
word-break: break-all;
font-size: 0.8125rem;
}
.sf_review_detail_comment_title {
color: #575757;
}
.sf_reveiw_detail_text_list {
margin-bottom: 0px;
}
.sf_review_detail_score_list li {
margin: 0px;
}
.sf_review_detail_comment_sub {
padding: 0px;
color: #707070;
opacity: 0.7;
font-size: 0.8125rem;
line-height: 1.4rem;
}
.sf_review_user_score {
margin: 0px;
font-size: 0.875rem;
margin-top: 0.3125rem;
height: 1.25rem;
line-height: 1.25rem;
}

.mypage_popup #snapreview_contents {
position: absolute;
top: 10vh;
left: calc(50vw - 250px);
width: 500px;
height: 80vh;
box-shadow: 2px 2px 9px rgb(0 0 0 / 38%);
}
.mypage_popup #snapreview_contents .sf_main_review {
width: 100%;
height: calc(100% - 50px);
background: #FFFFFF;
overflow: hidden auto;
border: 1px solid #EFEFEF;
box-sizing: border-box;
}
.mypage_popup .mypage_popup_title {
display: flex;
align-items: center;
justify-content: center;
height: 100%;
}
.mypage_popup .mypage_popup_title::after {
content: "리뷰 목록";
color: #FFFFFF;
font-size: 14px;
font-weight: 500;
font-family: 'Pretendard';
letter-spacing: 0px;
}
</style> <span class="sf_displaynone" id="dummy_datas" style="display:none;"> <ul class="sf_review_detail_score_list review_button_type" id="review_bottom_detail_score_dummy"> <li class="sf_review_detail_comment"> <div class="sf_reveiw_detail_text_list"> <span class="sf_review_detail_comment_line sf_review_detail_comment_title pin_custom_font_color"></span> <span class="sf_review_detail_comment_line sf_review_detail_comment_sub"></span> </div> <span class="sub_score_bar_wrapper"> </li> </ul> <div id="sf_review_user_recommend_text_dummy" class="sf_review_comment_area"> <div class="arrow_top"></div> <span class="value_text"></span> <div class="sf_review_comment_text_container"> <span class="value"></span> </div> </div> <li class="review_sub_score" id="review_detail_score_dummy"> <div class="sf_review_sub_score_text"></div> <div class="sf_review_detail_text review_button_type"> <div class="sf_score_bar_gage pin_custom_background_color"></div> </div> <span class="sf_review_sub_score_count"> <span class="sf_review_sub_score_avg value"></span> <span class="sf_review_sub_score_avg value_text">%</span> </span> </li> <div class="sf_review_write_user" id="sf_review_write_user_dummy"> <input type="text" placeholder="댓글을 작성해 주세요 :)" class="sf_review_write_user_text"> <input type="button" class="sf_review_write_user_save" value="등록"> </div> <img class="sf_review_list_item_img sf_review_detail_img review_button_type" id="photo_list_dummy"> <video autoplay loop muted webkit-playsinline playsinline id="main_video_list_dummy"
class="sf_review_list_item_img sf_review_detail_img review_button_type"></video> <img class="sf_review_sub_img sf_review_img no-drag" id="photo_list_sub_dummy"> <div class="sf_review_new" id=tag_dummy> <div class="arrow_left arrow_left_new_hot"></div> <p class="sf_review_recommend_new">NEW</p> </div> <ul class="sf_review_detail_score_list review_button_type" id="review_bottom_detail_score_dummy"> <li class="sf_review_detail_comment"> <div class="sf_reveiw_detail_text_list"> <span class="sf_review_detail_comment_line sf_review_detail_comment_title pin_custom_font_color"></span> <span class="sf_divider">■</span> <span class="sf_review_detail_comment_line sf_review_detail_comment_sub"></span> </div> <span class="sub_score_bar_wrapper"></span> </li> </ul> <div id="review_metadata_dummy"> <span class="sf_review_selected_list"></span> <div class="user_use_usually_size"> <span class="value_text"></span> <span class="value"></span> <span class="unit"></span> </div> </div> <div id="sf_user_review_dummy" class="sf_review_items list_open"> <div class='sf_review_area_top'> <div class="sf_review_user_photo"></div> <div class="sf_review_user_selected_info"></div> <div class="sf_review_detail_score_in_list sf_review_detail_score_list_wrapper"></div> <div class="sf_review_user_write" style="overflow: unset; height: auto;"> <div class="sf_review_user_write_review sf_user_write_review sf_overflownone"> <span class="sf_overflownone sf_appear value"></span> </div> </div> <span class="sf_review_more_text sf_displaynone"></span> <div class="sf_review_user_recommend_comment_count sf_displaynone"> <div class="sf_review_user_recommend_score"> <div class="sf_review_user_recommend_score_text"> </div> </div> </div> <div class="sf_review_user_writer"> <div class="sf_review_user_writer_name"> <span class="value"></span> </div> <div class="sf_review_user_writer_rank"> <span class='value custom_font_color'></span> </div> <div class="sf_review_user_write_date"> <span class="value"></span> </div> <div class="sf_review_user_tiny_thumbnail"></div> </div> </div> <div class='sf_review_area_bottom'> <div class="sf_review_user_recommend"> <div class="sf_review_user_recommend_score"> <div class="sf_review_user_recommend_score_text"> <span class="sf_review_show custom_text_edit sf_displaynone"></span> <span class="sf_review_hidden sf_displaynone custom_text_edit"></span> <span class="sf_review_user_recommend_count custom_font_color"> <span>이 리뷰를 </span> <span class='value_text'></span> <span class='value reviewcount'>0</span> <span>명이 좋아합니다.</span> </span> </div> </div> <div class="sf_pop_review_user_recommend_text"></div> </div> </div> </div> <div class="sf_review_user_info" id="review_main_dummy"> <div class='order_date_area'><span class='order_date'></span></div> <div class="sf_review_item_info_detail"> <div class='sf_review_item_info_detail clearfix'> <div class="sf_review_item_thumb sf_review_main_img_area"></div> <div class="sf_review_item_namearea"> <span class="sf_review_item_name sf_text_overflow value"></span> <p class='sf_order_option_area'> <span class="sf_order_option sf_text_overflow value"></span> <span class="sf_order_count_area"> <span class="sf_order_count"></span> </span> </p> <div class="sf_review_user_score float_none"></div> <div class='btn_area no-drag'> <button class="sf_update_btn btn" type="button">리뷰 수정</button> <button class="sf_delete_btn btn" type="button">리뷰 삭제</button> <button class="sf_write_btn btn" type="button">리뷰 작성</button> </div> </div> <div class='sf_review_more_detail no-drag'></div> </div> <div class="sf_review_user_area sf_displaynone"></div> </div> </div> </span> <span class="sf_displaynone" id="widget_datas" style="display:none;"> <input type="hidden" value=11 id="pagenationcount"> <input type="hidden" value=10 id="reviewcountperpage"> <input type="hidden" value=1 id="ismypage"> </span> <div class="sf_main_review"> <div id="tab_area"> <div class='tab writable selected' data-type='writable'> <span class='tab_title'>작성 가능한 리뷰</span>(<span class='tab_review_count'></span>)
</div> <div class='tab writed' data-type='writed'> <span class='tab_title'>작성한 리뷰</span>(<span class='tab_review_count'></span>)
</div> </div> <div id='content_area'> <div class='content writable selected' data-type='writable'> <div class="sf_review_list"> <div class="sf_review_area"></div> </div> </div> <div class='content writed' data-type='writed'> <div class="sf_review_list"> <div class="sf_review_area"></div> </div> <div class="sf_review_pagination"> <ol class="pagination" id="pagination"> </ol> </div> </div> </div> <div class="sf_snap_review_logo"> <a> <span>SNAPREVIEW</span> </a> </div> </div> <script>
function Review_main() {
var thisobj = this,
reviewCommentAllow ='not_use',
root = $('#content_area'),
writable_area = root.find('.content.writable'),
writed_area = root.find('.content.writed'),
old_elem;
Review_main.prototype.init = function (initdata) {
try {
var subscoredefine = {};
var data = thisobj.getObjectSafeValue(initdata, false, 'data'),
isReview = thisobj.getObjectSafeValue(data, false, 'reviewinfo'),
writable_orders = thisobj.getObjectSafeValue(data, {}, 'writable_orders');
if (!isReview) return;
reviewCommentAllow = thisobj.getObjectSafeValue(initdata, reviewCommentAllow, 'reviewCommentAllow');
thisobj.hideFrame();
thisobj.set_order_frame(writable_orders);
thisobj.SetFrame(data,
thisobj.getObjectSafeValue(initdata, false, 'page'),
thisobj.getObjectSafeValue(initdata, false, 'token')
);
thisobj.set_order_write_popup_event();
thisobj.init_popup_img();
thisobj.init_redirect_item_inner_type();
thisobj.snap_homepage_link();
thisobj.showFrame();
if (data && !data.totalcount) {
thisobj.searchResultIsNull('#content_area .content.writed .sf_review_area', '리뷰가 없습니다');
thisobj.write_popup_call();
}
writed_area.find('.pagination').click(thisobj.paginationListener(function (page) {
thisobj.GetData(page, 1);
thisobj.scroll_event();
}));
$('#tab_area .tab').click(function () {
if ($(this).hasClass('selected')) return;
var className = $(this).data('type');
$(this).parent().find('.selected').removeClass('selected');
$(this).addClass('selected');
root.find('.content.selected').removeClass('selected');
root.find('.content.' + className).addClass('selected');
thisobj.post_resize_iframe_offset(thisobj.get_widgetid(), "#snapreview_main");
});
writed_area.on('click', '.sf_review_more_detail', function () {
var $this = $(this),
is_my = $(this).hasClass('active');
if (old_elem) {
old_elem.removeClass('active');
old_elem.parents('.sf_review_item_info_detail').find('.sf_review_user_area').addClass('sf_displaynone');
}
if (!is_my) {
$this.addClass('active');
$this.parents('.sf_review_item_info_detail').find('.sf_review_user_area').removeClass('sf_displaynone');
}
old_elem = $this;
thisobj.post_resize_iframe_offset(thisobj.get_widgetid(), "#snapreview_main");
});
thisobj.check_load_css();
thisobj.set_frame_resize();
} catch (error) {
console.log(error.message);
thisobj.hideFrame();
}
}
Review_main.prototype.set_desgin_info = function () {
return {
count: 10,
review_sort_list: ['recent', 'recommend', 'mainscore'],
sort_stand: 'review',
default_review_sort: 'recent',
defaultsetting: { review_comment_allow: reviewCommentAllow },
order: 'recent'
};
};
Review_main.prototype.refreshPage = function (isStartLoading, isDelete, isContinueUntillSuccess) {
var page = writed_area.find('.pagination .page-item.this').data('page') || 1;
if (isDelete) {
var reviewCount = writed_area.find('.sf_review_area').children().length;
page = reviewCount == 1 ? page - 1 : page;
page = Math.max(page, 1);
}
thisobj.GetData(page, isStartLoading, isContinueUntillSuccess);
};
Review_main.prototype.SetFrame = function (data, page, token) {
var orders = thisobj.getObjectSafeValue(data, false, 'orders');
var iteminfo = thisobj.getObjectSafeValue(data, false, 'iteminfo');
var reviewinfo = thisobj.getObjectSafeValue(data, false, 'reviewinfo');
var desgin_info = thisobj.set_desgin_info();
var sort ='review';
var totalreviewcount = data.totalcount;
var list = thisobj.set_independent_frame(sort, iteminfo, reviewinfo);
writed_area.find(".sf_review_area").empty();
$('#tab_area .writed .tab_review_count').text(totalreviewcount);
if (list) {
var maininfo = thisobj.getObjectSafeValue(list, false, 'maininfo');
var subinfo = thisobj.getObjectSafeValue(list, false, 'subinfo');
$(".sf_item_sort_info").removeClass("sf_item_sort_info");
$(".sf_review_item_sort_namearea").removeClass("sf_review_item_sort_namearea");
thisobj.set_sort_review_frame(orders, maininfo, subinfo, desgin_info);
var reviewArea = writed_area.find('.sf_review_area');
reviewArea.find('.sf_update_btn').click(function () {
var data = {
rd: $(event.target).parents('.sf_review_user_info').attr('review_id'),
call_widget_id: thisobj.get_widgetid(),
event_type: 'refresh_mypage'
};
thisobj.open_write_popup(false, data);
});
token && reviewArea.find('.sf_delete_btn').click(function () {
thisobj.loading_start('.sf_main_review', '.sf_main_review');
var review_id = $(event.target).parents('.sf_review_user_info').attr('review_id'),
endLoading = thisobj.loading_end.bind(thisobj, '.sf_main_review', '.sf_main_review');
thisobj.openNotificationConfirm("리뷰 삭제 시 복원이 불가능합니다.\n정말 삭제하시겠습니까?", $(event.target), thisobj.deleteReview.bind(thisobj, {
review_id: review_id,
callback: function () {
thisobj.refreshPage(0, true);
thisobj.set_writable_orders();
},
endLoading: endLoading,
target: event.target,
token: token,
}), function() {
thisobj.loading_end('.sf_main_review', '.sf_main_review');
});
});
thisobj.post_resize_iframe(thisobj.get_widgetid(), "#snapreview_main", 100);
}
var pagination = totalreviewcount ? thisobj.middlePaging(totalreviewcount, 10, page, 5) : '';
writed_area.find('.pagination').html(pagination);
}
Review_main.prototype.set_sort_review_frame = function (orders, maininfo, subinfo, desgin_info) {
var shape = thisobj.set_shape(desgin_info);
var subscoredefine = {};
$.each(maininfo, function (idx, review) {
var main_clone = thisobj.get_clonedata('#review_main_dummy'),
user_review = thisobj.get_clonedata('#sf_user_review_dummy'),
main_img_clone = thisobj.get_clonedata('#photo_list_dummy'),
sub_img_clone = thisobj.get_clonedata('#photo_list_sub_dummy'),
reviewid = thisobj.getObjectSafeValue(review, null, 'id'),
item_id = thisobj.getObjectSafeValue(review, null, 'item_id'),
user_name = thisobj.getObjectSafeValue(review, '', 'user_name'),
score = thisobj.getObjectSafeValue(review, 5, 'score'),
user_grade = thisobj.getObjectSafeValue(review, '', 'user_grade'),
create_date = thisobj.getObjectSafeValue(review, '', 'create_date'),
review_comment = thisobj.getObjectSafeValue(review, '', 'review_comment'),
option = thisobj.decode_json(thisobj.getObjectSafeValue(review, '{}', 'buy_option')),
recommend_count = thisobj.getObjectSafeValue(review, '', 'recommend_count'),
sub_scores = thisobj.getObjectSafeValue(review, {}, 'sub_scores'),
review_recomments = thisobj.getObjectSafeValue(review, {}, 'review_recomments'),
element_data_number = thisobj.getObjectSafeValue(review, {}, 'element_data_number'),
element_data_string = thisobj.getObjectSafeValue(review, {}, 'element_data_string'),
is_my_recommend = thisobj.getObjectSafeValue(review, 0, 'is_my_recommend'),
is_my_norecommend = thisobj.getObjectSafeValue(review, 0, 'is_my_norecommend'),
is_uploading = thisobj.getObjectSafeValue(review, 0, 'is_uploading'),
photo = thisobj.getObjectSafeValue(review, {}, 'photo'),
media = thisobj.getObjectSafeValue(review, {}, 'media'),
review_comment_count = review_recomments.length;
main_clone.attr('review_id', reviewid);
main_clone.attr('item_id', item_id);
is_uploading && main_clone.addClass('uploading');
review.is_possible_update || main_clone.find('.sf_update_btn').remove();
review.is_possible_delete || main_clone.find('.sf_delete_btn').remove();
if (media || photo) {
if (media && media.length > 0) {
$.each(media, function (index, content) {
var video_area = thisobj.get_clonedata('#main_video_list_dummy');
var contentimage = thisobj.getObjectSafeValue(content, false, 'content');
content['content'] = thisobj.media_thumbnail_image_set(contentimage);
video_area = thisobj.set_content(reviewid, video_area, content);
if (video_area != null) {
user_review.find('.sf_review_user_photo').append(video_area);
user_review.find('.sf_review_user_tiny_thumbnail').append(video_area.clone());
}
});
}
if (photo && photo.length > 0) {
$.each(photo, function (index, content) {
var image_area = thisobj.get_clonedata('#photo_list_dummy');
var contentimage = thisobj.getObjectSafeValue(content, false, 'content');
content['content'] = thisobj.medium_image_set(contentimage);
image_area = thisobj.set_content(reviewid, image_area, content);
if (image_area != null) {
user_review.find('.sf_review_user_photo').append(image_area);
user_review.find('.sf_review_user_tiny_thumbnail').append(image_area.clone());
}
});
}
}
user_review.find('.sf_review_detail_img').attr('itemid', item_id);
user_review.removeAttr('id');
main_clone.removeAttr('id');
main_clone.data('item_id', item_id);
user_review.find('.sf_review_user_writer_name .value').text(thisobj.set_user_name(user_name));
if (review_comment) {
thisobj.text_line_break(user_review.find('.sf_user_write_review'), review_comment);
}
else {
user_review.find('.sf_user_write_review .value').html(nationTextList['review_not_comment']);
}
if (review_comment_count) {
user_review.find('.sf_review_user_recommend_score_text .value').text(review_comment_count);
}
else {
user_review.find('.sf_review_user_recommend_score_text .value').text(0);
}
if (!recommend_count) {
user_review.find('.sf_review_user_recommend_count > .value').text(0);
} else {
if (recommend_count >= 0) {
user_review.find('.sf_review_user_recommend_count > .value_text').text("+");
user_review.find('.sf_review_user_recommend_count > .value').val(recommend_count);
user_review.find('.sf_review_user_recommend_count > .value').text(recommend_count);
} else if (recommend_count < 0) {
user_review.find('.sf_review_user_recommend_count > .value_text').text("-");
user_review.find('.sf_review_user_recommend_count > .value').val(recommend_count);
recommend_count = Math.abs(recommend_count);
user_review.find('.sf_review_user_recommend_count > .value').text(recommend_count);
}
}
if (score) {
thisobj.set_user_score(score, desgin_info, main_clone.find('.sf_review_user_score'));
}
if (is_my_recommend == 1) {
thisobj.is_my_recommend(user_review);
}
else if (is_my_norecommend == 1) {
thisobj.is_my_norecommend(user_review);
}
if (review_comment_count) {
user_review.find('.custombutton').text(review_comment_count);
}
else {
user_review.find('.custombutton').text(0);
}
if (review_recomments && review_recomments.length) {
thisobj.set_review_comment(user_review, review_recomments);
}
else {
user_review.find('.sf_review_area_bottom').addClass('sf_displaynone');
}
if (thisobj.check_review_comment_allow(desgin_info)) {
var sf_review_user_write = $('#sf_review_write_user_dummy').clone();
sf_review_user_write.attr('id', '');
user_review.find('.sf_pop_review_user_recommend_text').append(sf_review_user_write);
}
if (review_comment_count) {
user_review.find('.sf_review_user_recommend_score_text .value').text(review_comment_count);
}
user_review.find('.sf_review_user_write_date').addClass('sf_displaynone');
if (create_date) {
create_date = thisobj.set_create_date(create_date);
main_clone.find('.order_date').text(create_date + ' 작성');
}
else {
main_clone.find('.order_date_area .order_date').addClass('sf_displaynone');
}
review.order_cnt && main_clone.find('.sf_order_count').text(review.order_cnt + ' 개');
$(main_clone).find('.sf_review_user_area').append(user_review);
if (Object.keys(subinfo).length > 0) {
var list_check = false;
$.each(subinfo, function (id, val) {
if (item_id == id) {
var list_check = true;
var etcdata = thisobj.getObjectSafeValue(val, false, 'etcdata');
var price = thisobj.getObjectSafeValue(val, false, 'price');
var sale_price = thisobj.getObjectSafeValue(val, false, 'sale_price');
var filterdata = etcdata && ('element' in etcdata) ? etcdata['element'] : null;
var subscoredata = etcdata && ('subscore' in etcdata) ? etcdata['subscore'] : null;
if (subscoredata) {
subscoredefine = thisobj.set_subscore_data(subscoredata, subscoredefine);
thisobj.set_sub_socre_frame(sub_scores, subscoredefine, main_clone);
}
if (filterdata && (element_data_string && Object.keys(element_data_string).length > 0 || element_data_string && Object.keys(element_data_string).length > 0)) {
thisobj.set_element_filter(main_clone, element_data_string, element_data_number, filterdata);
is_element_check = true;
}
thisobj.set_option_frame(main_clone, option);
thisobj.set_common_iteminfo(main_clone, val);
writed_area.find('.sf_review_area').append(main_clone);
}
});
if (list_check == false) {
main_clone.remove();
}
}
else {
main_clone.find('.sf_review_sub_img_area').append(sub_img_clone);
main_clone.find('.sf_review_item_review_list').addClass('sf_displaynone');
}
if (option) {
var option_vals = Object.keys(option).map(function (key) {
return option[key];
}).join(',');
main_clone.find('.sf_order_option').text(option_vals);
}
writed_area.find('.sf_review_area').append(main_clone);
});
}
Review_main.prototype.getRequestData = function (requestpage) {
var requestdata = thisobj.CommonRequestDataInit();
requestdata['from'] = requestpage;
requestdata['filterdata'] = encodeURI(JSON.stringify(thisobj.get_filterdatas()));
var ordervalue = null;
var ordervalselector = thisobj.get_selector('#sf_review_selected_align');
if (ordervalselector) {
ordervalue = ordervalselector.attr("order-type");
}
requestdata['order'] = ordervalue;
return requestdata;
};
Review_main.prototype.GetData = function (requestpage, isStartLoading, isContinueUntillSuccess, tryCount) {
var requestdata = thisobj.getRequestData(requestpage);
isStartLoading && thisobj.loading_start('.sf_main_review', '.sf_main_review');
requestdata.is_need_orderdata = 1;
$.ajax({
url: thisobj.SERVER_DOMAIN + '/Dataupdate/Mypage',
data: requestdata,
type: "POST",
dataType: "json",
beforeSend: function (request) {
request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
request.setRequestHeader('Access-Control-Allow-Origin', '*');
request.setRequestHeader('Access-Control-Allow-Credentials', 'true');
request.setRequestHeader('Access-Control-Allow-Methods', 'GET, HEAD, OPTIONS, POST, PUT');
request.setRequestHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Key, Authorization, X-Auth-Token, X-CSRF-TOKEN, X-File-Name');
},
success: function (res) {
var page = requestpage;
var success = thisobj.getObjectSafeValue(res, false, 'success');
var totalcount = res.data.totalcount;
var data = res.data;
if (!success) {
if (isContinueUntillSuccess && (tryCount = tryCount || 0) < 10) {
setTimeout(function () {
thisobj.GetData(requestpage, isStartLoading, isContinueUntillSuccess, tryCount + 1);
}, 300);
}
else {
writed_area.find('.sf_review_list .sf_review_area').empty();
thisobj.searchResultIsNull('#content_area .content.writed .sf_review_area', '리뷰가 없습니다');
$('#pagination').empty();
$('#tab_area .writed .tab_review_count').text(0);
}
}
else {
writed_area.find('.sf_review_list .sf_review_area').empty();
thisobj.SetFrame(data, page, res.token);
$(".page-item").removeClass("this");
$("li[data-pagenum=" + page + "]").addClass("this");
thisobj.init_popup_img();
thisobj.post_resize_iframe(thisobj.get_widgetid(), "#snapreview_main", 100);
}
thisobj.loading_end('.sf_main_review', '.sf_main_review');
}
});
}
}
</script> </div> <div id='snapreview_bg' data-close-abled='true'> <div id='snapreview_pop'></div> </div> <div id='snapreview_frame' data-close-abled='true'> </div> <span class='notranslate' id='iul' style="display:none">0</span> <span class='notranslate' id='iub' style="display:none">0</span> <span class='notranslate' id='insert_img_idx' style="display:none">-1000</span> <span class='notranslate' id='filterinfo' style="display:none"></span> <span class='notranslate' id='designinfo' style="display:none"></span> <span class='notranslate' id='store_name' style="display:none">8RcZhNKnaqBQ%2F6m1oXGkBQ%3D%3D</span> <span class='notranslate' id='reviewid' style="display:none"></span> <span class='notranslate' id='widgetid' style="display:none">17</span> <span class='notranslate' id='platform' style="display:none">pc</span> <span class='notranslate' id='Sea' style="display:none">l5sQWN555fifKJmw5DffZCF665lWciYD73J5ulSoeFGd9DNTibe%2FC%2BG7Kw%2B8SlTB3KOryk1INnN5uVlrIu0hoJiCBNbLvNBEzoouEEUhHTj0qIEbucdCcnUmFmGOWcmymfFiaAJ%2BehvnOWoeQX2zt7g9z6m0HsYi%2B0NAL7hZgtBj5YOOB85sgDoWbtsRlYI9Vr7f7uTICT3ZlXHyOwWqSN0on9AMzN%2FeZ3vSnJhx8bE%3D</span> <span class='notranslate' id='nmi' style="display:none"></span> <span class='notranslate' id='storeid' style="display:none"></span> <span class='notranslate' id='userid' style="display:none">jypark0819</span> <span class='notranslate' id='dac' style="display:none">tiaa</span> <span class='notranslate' id='sd' style="display:none">_0</span> <span class='notranslate' id='old_id' style="display:none"></span> </div> <span id='iteminfo' class='notranslate' style="display:none"></span> <span id='cateids' class='notranslate' style="display:none">"rage%2BCpdBTtoWvNSkpvzjg%3D%3D"</span> <span id='Sdt' class='notranslate' style="display:none">idp</span> <link rel='stylesheet' async href='//cdn.snapfit.co.kr/stores/fnfn/review/common_css/2529/common.css?1674120982'> <script>
const IS_MYPAGE_RELATED_WIDGET = 1;
var serverurl ='//sfre-srcs-service.snapfit.co.kr',
uploadurl ='https://sfup-srcu-ad.snapfit.co.kr',
nationTextList ='',
nationAlertTextList ='',
nationValue ='kr';
load_sub_modules();
function load_view_version(wrapper, src, callback) {
if(wrapper && src) {
src = src + '?815';
if(!callback) {
callback = function() {};
}
$(wrapper).load(src, callback);
}
}
function load_sub_modules() {
if(typeof Review_main ==="undefined") {
console.log('SnapError : not found Review_main');
return;
}
var Review_Instance = null,
isexistcustomclass = typeof Review_main_custom;
Review_main.prototype = IS_MYPAGE_RELATED_WIDGET ? new Mypage_Common(serverurl, uploadurl) : new Review_Common(serverurl, uploadurl);
Review_main.prototype.MYPAGE_TAB = {"WRITABLE":"writable","WRITED":"writed","NOTIFICATION":"notification"};
if (isexistcustomclass ==='function') {
Review_main_custom.prototype = new Review_main();
Review_Instance = new Review_main_custom();
} else {
Review_Instance = new Review_main();
}
setItemInfo();
Review_Instance.init({"page":"1","data":{"writable_orders":[],"writableTotalCnt":0,"reviewinfo":[],"iteminfo":[],"totalcount":0,"writed":{"isLastPage":true},"initTab":"writable"},"reviewCommentAllow":"not_use","isUseReviewNoti":0});
add_in_frame_receivemessage(Review_Instance);
}
function add_in_frame_receivemessage(reviewobj) {
snaputil = new snapUtils(serverurl, reviewobj);
}
function setItemInfo() {
const itemInfo = {};
if(Object.keys(itemInfo).length) {
document.querySelectorAll('#iteminfo')[0].textContent = Review_main.prototype.decodeHtmlEntity(JSON.stringify(itemInfo));
}
}
</script> </body> </html>