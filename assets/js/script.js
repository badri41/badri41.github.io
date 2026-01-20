(function () {
  const body = document.body;
  const toggle = document.querySelector('.theme-toggle');
  const toggleIcon = document.querySelector('.toggle-icon');

  const stored = localStorage.getItem('theme');
  const systemPrefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
  const initialTheme = stored || (systemPrefersDark ? 'dark' : 'light');
  applyTheme(initialTheme);

  toggle?.addEventListener('click', () => {
    const nextTheme = body.dataset.theme === 'dark' ? 'light' : 'dark';
    applyTheme(nextTheme);
    localStorage.setItem('theme', nextTheme);
  });

  function applyTheme(theme) {
    body.dataset.theme = theme;
    toggleIcon.textContent = theme === 'dark' ? '◐' : '◑';
  }
})();
