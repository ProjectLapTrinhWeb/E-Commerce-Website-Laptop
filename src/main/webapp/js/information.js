// check if account or password is null
// or them longer 20
// or shorter 6
// and notify on interface
// return true if them is valid to login
function checkLogin() {
    let account = document.getElementById('account');
    let password = document.getElementById('password');

    if (!account) {
        account = '';
        document.getElementById('account-error').innerHTML = 'Hãy nhập tài khoản của bạn';
    } else if (account.value.length < 6) {
        account = '';
        document.getElementById('account-error').innerHTML = 'Tài khoản phải dài hơn 6 ký tự';
    } else if (account.value.length > 20) {
        account = '';
        document.getElementById('account-error').innerHTML = 'Tài khoản phải ngắn hơn 20 ký tự';
    } else {
        document.getElementById('account-error').innerHTML = '';
    }

    if (!password) {
        password = '';
        document.getElementById('password-error').innerHTML = 'Hãy nhập mật khẩu của bạn';
    } else if (password.value.length < 6) {
        password = '';
        document.getElementById('password-error').innerHTML = 'Mật khẩu phải dài hơn 6 ký tự';
    } else if (password.value.length > 20) {
        password = '';
        document.getElementById('password-error').innerHTML = 'Mật khẩu phải ngắn hơn 20 ký tự';
    } else {
        document.getElementById('password-error').innerHTML = '';
    }

    if (account && password) {
        console.log('true');
        return true;
    } else {
        console.log('false');
        return false;
    }
}

// check if all input have one null
// check valid name account (>=6 && <=20)
// check valid email
// check valid pw and comfirm pw
// return true if all of them passed
function checkSignUp() {
    let name = document.getElementById('name');
    let email = document.getElementById('email');
    let pw = document.getElementById('txtPassword');
    let pw2 = document.getElementById('txtConfirmPassword');

    if (name.value.length === 0) {
        name = '';
        document.getElementById('name-error').innerHTML = 'Hãy nhập tên tài khoản của bạn';
    } else if (name.value.length < 6) {
        name = '';
        document.getElementById('name-error').innerHTML = 'Tài khoản phải dài hơn 6 ký tự';
    } else if (name.value.length > 20) {
        name = '';
        document.getElementById('name-error').innerHTML = 'Tài khoản phải ngắn hơn 20 ký tự';
    } else {
        document.getElementById('name-error').innerHTML = '';
    }

    if (email.value.length === 0) {
        email = '';
        document.getElementById('email-error').innerHTML = 'Hãy nhập email của bạn';
    } else if (!validateEmail(email.value)) {
        email = '';
        document.getElementById('email-error').innerHTML = 'Email của bạn không hợp lệ';
    } else {
        document.getElementById('email-error').innerHTML = '';
    }

    if (pw.value.length === 0) {
        pw = '';
        document.getElementById('pw-error').innerHTML = 'Hãy nhập mật khẩu của bạn';
    } else if (pw.value.length < 6) {
        pw = '';
        document.getElementById('pw-error').innerHTML = 'Mật khẩu phải dài hơn 6 ký tự';
    } else if (pw.value.length > 20) {
        pw = '';
        document.getElementById('pw-error').innerHTML = 'Mật khẩu phải ngắn hơn 20 ký tự';
    } else {
        document.getElementById('pw-error').innerHTML = '';
    }

    if (pw2.value.length === 0) {
        pw2 = '';
        document.getElementById('pw2-error').innerHTML = 'Hãy xác nhận lại mật khẩu của bạn';
    } else if (pw.value !== pw2.value) {
        pw2 = '';
        document.getElementById('pw2-error').innerHTML = 'Xác nhận mật khẩu không trùng khớp';
    } else {
        document.getElementById('pw2-error').innerHTML = '';
    }

    console.log(name.value + '\t' + email.value + '\t' + pw.value + '\t' + pw2.value);
    if (name && email && pw && pw2) {
        console.log('true');
        return true;
    } else {
        console.log('false');
        return false;
    }
}

function validateEmail(email) {
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}

function submit() {
    if (ValidateEmail(document.form1.Email) && ValidatePassword())
        return true;
    else {
        alert("Something wrong! Please check your information again!!!")
        return false;
    }
}