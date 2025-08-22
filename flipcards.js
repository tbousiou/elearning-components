        // Add click and keyboard support for flipcards
        document.querySelectorAll('.flipcard').forEach(card => {
            // Handle click events
            card.addEventListener('click', function () {
                const isExpanded = this.getAttribute('aria-expanded') === 'true';
                this.setAttribute('aria-expanded', !isExpanded);
            });

            // Handle keyboard events
            card.addEventListener('keydown', function (e) {
                if (e.key === 'Enter' || e.key === ' ') {
                    e.preventDefault();
                    const isExpanded = this.getAttribute('aria-expanded') === 'true';
                    this.setAttribute('aria-expanded', !isExpanded);
                }
            });
        });