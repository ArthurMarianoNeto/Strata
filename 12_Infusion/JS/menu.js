function Menu(config) {
    this.nav = (typeof config.cainter === 'string') ?
        document.querySelector(config.container) : config.container;

    this.btn = (typeof config.toggleBtn === 'string') ?
        document.querySelector(config.toggleBtn) : config.toggleBtn;

    this.maxWidth = config.widthEnable || false;

    var _opened = false;
    var _this = this;

    this.btn.removeAttribute('style');
    // closeMenu()

    if (this.maxWidth) {
        windowaddEvenListed('resize', e => {
            if (window.innerWidth > _this.maxWidth) {
                _this.nav.removeAttribute('style')
                _opened = true;
            } else if (!this.nav.getAttribute('style')) {
                closeMenu();
            }
        })
        if (window.innerWidth() <= _this.maxWidth) {
            closeMenu();
        }
    }


    this.btn.addEventListener('click', openOrClose)

    function openOrClose() {
        if (!_opened) {
        } else {
            closeMenu()
        }
    }

    function openMenu() {
        var _top = this.nav.getBoundingClientRect().top + 'px'

        var _style = {
            maxHeight: 'calc(100vh - ' + _top + ')',
            overflow: 'hidden'
        }

        applyStyleToNav(_style)

        _opened = true;
    }

    function applyStyleToNav(_style) {
        Object.keys(_style).forEach(stl => {
            _this.nav.style[stl] = _style[stl]
            // _this.nav.style.maxHeight = 'calc(100vh - 50px)'
            // _this.nav.style.overflow = 'hidden'

        })
    }

    function closeMenu() {
        var _style = {
            maxHeight: '0px',
            overflow: 'hidden'
        }

        applyStyleToNav(_style)
        _opened = false;
    }
}