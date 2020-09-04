// $(function(){
//   function buildHTML(comment){
//     let html = `<div class="Postsbox__Commentbox">
//                   <div class="header">
//                     <div class="header__left">
//                       <div class="userimage">
//                         <img src="${comment.user_image}" width="50" height="50">
//                       </div>
//                       <div class="right">
//                         <div class="username">
//                           ${comment.user_name}
//                         </div>
//                         <div class="created-at">
//                           2020年09月02日05:16
//                         </div>
//                       </div>
//                     </div>
//                   </div>
//                   <div class="Contents">
//                     <div class="Contents__Comment">
//                       あいうえお
//                     </div>
//                   </div>
//                 </div>`
//     return html;
//   }
//   $('#new_comment').on('submit', function(e){
//     e.preventDefault();
//     let formData = new FormData(this);
//     let url = $(this).attr('action')
//     $.ajax({
//       url: url,
//       type: "POST",
//       data: formData,
//       dataType: 'json',
//       processData: false,
//       contentType: false
//     })
//   })
// })