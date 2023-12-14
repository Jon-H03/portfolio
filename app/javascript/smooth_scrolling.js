document.addEventListener('DOMContentLoaded', (event) => {
    document.querySelectorAll('.nav-link').forEach(anchor => {
      anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const scrollTarget = document.querySelector(this.getAttribute('href'));
        const topPosition = scrollTarget.offsetTop;
        window.scrollTo({
          top: topPosition,
          behavior: 'smooth'
        });
      });
    });
  });