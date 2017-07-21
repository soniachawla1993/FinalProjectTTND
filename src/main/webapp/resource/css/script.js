

$(document).ready( function() {
    $('.showInviteModal').on('click', function (e) {
        if ($(this).hasClass('new')) {
            $('#sendNewInvite').modal('show');
            e.preventDefault();
        }
        else {
            $('.modal-topicName').val($(this).parents('.media').find('.topicName').text())
            $('#sendInvite').modal('show');
            e.preventDefault();
        }
    });

    $('.showLinkModal').on('click', function (e) {
        $('#shareLink').modal('show');
        e.preventDefault();
    });

    $('.showDocumentModal').on('click', function (e) {
        $('#shareDocument').modal('show');
        e.preventDefault();
    });

    $('.showCreateTopicModal').on('click', function (e) {
        $('#createTopic').modal('show');
        e.preventDefault();
    });

    $('.toggleEdit').on('click', function (e) {
        $(this).parents('.media').find('.editTopic, .topicName').toggleClass('hide');
        $(this).parents('.media').find('.topic').val($(this).parents('.media').find('.topicName').text());
        e.preventDefault();
    });

    $('.cancelEditTopic').on('click', function (e) {
        $(this).parents('.media').find('.editTopic, .topicName').toggleClass('hide');
        e.preventDefault();
    });

    //Fired on Modal Close
    $('#sendInvite').on('hidden.bs.modal', function (e) {
        //Reset form value
        $('.modal-topicName').val('');
    });

})


