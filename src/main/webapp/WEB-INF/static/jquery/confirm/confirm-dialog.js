function confirmDialog(title,content,callFunction) {
    $.confirm({
        title: title,
        content: content,
        type: 'red',
        typeAnimated: true,
        buttons: {
            tryAgain: {
                text: 'Đồng ý',
                btnClass: 'btn-red',
                action: callFunction
            },
            "Hủy bỏ": function () {
            }
        }
    });
}
function confirmDialogOK(title,content1,content2,callFunction) {
    $.confirm({
        title: title,
        content:
        '<div>' +
        '<label>'+content1+'</label>' +
        '<label>'+content2+'</label>'+
        '</div>',
        type: 'green',
        typeAnimated: true,
        buttons: {
            tryAgain: {
                text: 'Đồng ý',
                btnClass: 'btn-green',
                action: callFunction
            },
            "Hủy bỏ": function () {
            }
        }
    });
}
function confirmDialogCheckin(title,data,callFunction,backFunction) {
    $.confirm({
        title: title,
        content:
        '<div>' +
        '<label>'+data.title1+'</label>' +
        '<label>'+data.title2+'</label>'+
        '<label>'+data.title3+'</label>'+
        '<label>'+"Đã có mặt tại hội nghị này!"+'</label>'+
        '</div>',
        type: 'green',
        typeAnimated: true,
        buttons: {
            tryAgain: {
                text: 'Đồng ý',
                btnClass: 'btn-green',
                action: callFunction
            },
            exit: {
                text:"Hủy bỏ",
                action:backFunction
            }
        }
    });
}
function messageDialogError(title,content,callFunction) {
    $.confirm({
        title: title,
        content: content,
        type: 'red',
        typeAnimated: true,
        buttons: {
            tryAgain: {
                text: 'Đồng ý',
                btnClass: 'btn-red',
                action: callFunction
            },
        }
    });
}