function alertSmallBoxTitle(title,type) {
    switch (type){
        case "success":
            new PNotify({
                title: 'Thông báo',
                text: title,
                type: 'success',
                styling: 'bootstrap3',
                delay: 2000,
            });
            break;
        case "error":
            new PNotify({
                title: 'Thông báo',
                text: title,
                type: 'error',
                styling: 'bootstrap3',
                animateOut:3,
                delay: 2000,
            });
            break;
    }
}