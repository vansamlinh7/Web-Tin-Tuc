$(function(){
    
    $('.login-btn').click(function(){
        $('body').addClass('show');
        $('body').css('overflow','hidden');
        $('.login-form').addClass('show');
    });
    $('.close-model').click(function(){
        $('body').css('overflow','auto');
        $('body').removeClass('show');
        $('.login-form').removeClass('show');
    })
    
        $('.sign-up-btn').click(function(){
        $('body').addClass('show');
        $('body').css('overflow','hidden');
        $('.sign-up-form').addClass('show');
    });
    $('.close-model').click(function(){
        $('body').css('overflow','auto');
        $('body').removeClass('show');
        $('.sign-up-form').removeClass('show');
    })
    // $(document).click(function(event) {
    //     $target = $(event.target);
    //     if(!$target.closest('.login-form').length) {
    //         $('body').removeClass('show');
    //     }        
    // });
});