function clr(x)
{
    if(document.querySelector('.colortb')!== null) 
    {
        document.querySelectorAll('.colortb .btn')[0].disabled = true;
        document.querySelectorAll('.colortb .btn')[1].disabled = true;
        document.querySelector('.colortb').classList.remove('colortb');
    }
     x.querySelectorAll('.btn')[0].disabled = false;
     x.querySelectorAll('.btn')[1].disabled = false;

    x.classList.add('colortb');
}

function m_over(x) 
{
    x.classList.remove('animate__pulse', 'animate__repeat-2', 'animate__slow');
    x.classList.add('animate__rubberBand');
}
function m_out(x)
{
    x.classList.remove('animate__rubberBand');
}

function obl_tk(x)
{
    remove_animate(x);
    let reg = /^\w[a-zA-Z0-9\_]{0,16}$/;
    (x.value.trim()==="")   ?     add_invalid(x,"Vui lòng nhập tên đăng nhập"):
    (!reg.test(x.value))    ?     add_invalid(x,"Tên đăng nhập không hợp lệ, tối đa 16 ký tự (có thể chứa chữ, số và ký tự _ )"): remove_invalid(x);
}

function obl_mk(x)
{
    remove_animate(x);
    let reg = /^\w[a-zA-Z0-9\_]{0,16}$/;
    (x.value.trim()==="")   ?     add_invalid(x,"Vui lòng nhập mật khẩu"):
    (!reg.test(x.value))    ?     add_invalid(x,"Mật khẩu không hợp lệ, tối đa 16 ký tự (có thể chứa chữ, số và ký tự _ )"): remove_invalid(x);
}
function oip(x)
{
    remove_invalid(x);
}
function ofc(x) {
    add_animate(x)
}
function add_animate(x)
{
    x.parentNode.querySelector('h5').classList.add('animate__animated', 'animate__headShake','animate__slow','2s','animate__infinite','infinite');
}
function remove_animate(x)
{
    x.parentNode.querySelector('h5').classList.remove('animate__animated', 'animate__headShake','animate__slow','2s','animate__infinite','infinite');
}
function remove_invalid(x)
{
    x.parentNode.querySelector('.form-message').innerText = "";
    x.parentNode.querySelector('.form-message').classList.remove('invalid');
}
function add_invalid(x,message)
{
    x.parentNode.querySelector('.form-message').innerText = message;
    x.parentNode.querySelector('.form-message').classList.add('invalid');
}

function login_admin()
{
    document.querySelector('.login').classList.remove('animate__backInRight');
    document.querySelector('.login').classList.add('animate__shakeX');
    setTimeout(function(){
        document.querySelector('.login').classList.remove('animate__shakeX');
    },1000)
}
document.querySelector('form').onsubmit =function(e)
{
        e.preventDefault();
}
// function onsm()
// {
//     x = document.querySelector('input[name = username]');
//     y = document.querySelector('input[name = password]');
//     obl_tk(x);
//     obl_mk(y);

//     let reg = /^\w[a-zA-Z0-9\_]{0,16}$/;
//     if(x.value.trim()===""||y.value.trim()===""||!reg.test(x.value)||!reg.test(y.value))
//     {
//         login_admin();
//     }
// }