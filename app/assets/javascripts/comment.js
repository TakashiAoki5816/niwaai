$(function(){
  function buildHTML(comment){
    let html = `<div class="Commentbox">
                  <div class="header">
                    <div class="header__left">
                      <div class="userimage">
                        <img src="${comment.user_image}" width="50" height="50">
                      </div>
                      <div class="right">
                        <div class="username">
                          <a href="/users/${comment.user_id}">${comment.user_name}</a>
                        </div>
                        <div class="created-at">
                          ${comment.created_at}
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="Contents">
                    <div class="Contents__Comment">
                      ${comment.content}
                    </div>
                  </div>
                </div>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.Postsbox__Commentsbox').append(html);
      $('.textbox').val('');
      $('.form__submit').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
})