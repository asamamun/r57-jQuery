$(document).ready(function() {
    $(document).ajaxStart(function() {
        // Show wait cursor when AJAX request starts
        $('body').css('cursor', 'wait');
        // $("#submitGO").prop("disabled",true);
        $('#submitGO').animate({ backgroundColor: '#FF0000' }, 'slow');
    });

    $(document).ajaxComplete(function() {
        // Hide wait cursor when AJAX request completes
        $('body').css('cursor', 'default');
        // $("#submitGO").prop("disabled",false);
        $('#submitGO').animate({ backgroundColor: '#FFFFFF' }, 'slow');
    });
});