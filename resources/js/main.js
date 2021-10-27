
function drd()
{
    document.querySelector('.sign-in').classList.add('animate__backOutDown')
    document.querySelector('.sign-in').classList.remove('animate__bounceInDown')
}
function ofc(x) {
    x.parentNode.querySelector('h5').classList.add('animate__animated', 'animate__headShake','animate__slow','2s','animate__infinite','infinite');
}
function obl(x)
{
    x.parentNode.querySelector('h5').classList.remove('animate__animated', 'animate__headShake','animate__slow','2s','animate__infinite','infinite');
    var reg = /^\w+$/
    if(x.value.trim()==="" || !reg.test(x.value) )
    {
        x.parentNode.querySelector('.form-message').innerText = "Vui lòng kiểm tra lại";
        x.parentNode.querySelector('.form-message').classList.add('invalid');
    }
    else
    {
        x.parentNode.querySelector('.form-message').innerText = "";
        x.parentNode.querySelector('.form-message').classList.remove('invalid');
    }
}
function oip(x)
{
    x.parentNode.querySelector('.form-message').innerText = "";
    x.parentNode.querySelector('.form-message').classList.remove('invalid');
}
