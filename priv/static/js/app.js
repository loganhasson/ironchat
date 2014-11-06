var socket = new Phoenix.Socket("/ws");

socket.join("channel", "handraise", {}, function(channel) {

  channel.on("join", function(message) {
    console.log("Got " + message.content + " while listening for event pong");
  });

  channel.on("reply", function(message) {
    var chatLog = $('#chat-log-ul');
    chatLog.append('<li>'+message.content+'</li>')
    $('#chat-input').val('');
    $('#chat-input').focus();
  });

});

$(function(){

  function sendMessage() {
    socket.send({channel: "channel", topic: "handraise", event: "chat:message", message: $('#chat-input').val()})
  }

  $('#chat-input').focus();

  $('#submit-button').on('click', function(e) {
    sendMessage();
  });

  $('#chat-input').on('keypress', function(e) {
    if (e.which == 13) {
      sendMessage();
    }
  })
});
