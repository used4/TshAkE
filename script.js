const canvas = document.getElementById('bgCanvas');
const ctx = canvas.getContext('2d');

canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

const particles = [];
const particleCount = 80;

for(let i=0;i<particleCount;i++){
  particles.push({
    x: Math.random()*canvas.width,
    y: Math.random()*canvas.height,
    radius: Math.random()*3+1,
    color: Math.random() > 0.5 ? '#FFD700' : '#FFFACD',
    speedY: Math.random()*1+0.5
  });
}

function animate(){
  ctx.clearRect(0,0,canvas.width,canvas.height);
  particles.forEach(p=>{
    ctx.beginPath();
    ctx.arc(p.x,p.y,p.radius,0,Math.PI*2);
    ctx.fillStyle = p.color;
    ctx.fill();
    p.y -= p.speedY;
    if(p.y <0) p.y = canvas.height;
  });
  requestAnimationFrame(animate);
}
animate();

window.addEventListener('resize',()=>{
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;
});

// زر الذهاب للتحميلات
document.getElementById('goToCards').addEventListener('click',()=>{
  document.getElementById('cardsSection').scrollIntoView({behavior:'smooth'});
});

// زر نسخ النصوص داخل الكرت الجديد
document.querySelectorAll('.btn-copy').forEach(btn=>{
  btn.addEventListener('click',()=>{
    const targetId = btn.getAttribute('data-target');
    const text = document.getElementById(targetId).innerText;
    navigator.clipboard.writeText(text);
    btn.innerText = "تم النسخ";
    setTimeout(()=>{btn.innerText="نسخ";},1000);
  });
});

// زر التحميل مع فتح رابط جديد
document.querySelectorAll('.btn-download').forEach(btn=>{
  btn.addEventListener('click', ()=>{
    const link = btn.getAttribute('data-link');
    if(link) window.open(link, '_blank');
  });
});

// إدارة ظهور الرسالة الترحيبية
const welcomePopup = document.getElementById('welcomePopup');
const closePopup = document.getElementById('closePopup');

// اغلاق عند الضغط على X
closePopup.addEventListener('click', () => {
  welcomePopup.style.display = 'none';
});

// اغلاق عند الضغط خارج البطاقة
welcomePopup.addEventListener('click', (e) => {
  if(e.target === welcomePopup){
    welcomePopup.style.display = 'none';
  }
});