const trustedPolicy = trustedTypes.createPolicy('adPolicy', {
    createHTML: (input) => {
        return input
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;')
            .replace(/'/g, '&#x27;');
    },
    createScript: () => {
        throw new Error('Script creation is not allowed');
    },
    createScriptURL: () => {
        throw new Error('Script URL creation is not allowed');
    }
});

const AdsManager = {
    getRandomAdId() {
        return Math.floor(Math.random() * 16) + 1;
    },

    ensureReferrerPolicy() {
        const params = new URLSearchParams(window.location.search);
        if (!params.has('referrerPolicy')) {
            params.set('referrerPolicy', 'no-referrer');
            params.sort();
            window.location.search = params.toString();
            return false;
        }
        return true;
    },

    setReferrerPolicy(iframe) {
        const params = new URLSearchParams(window.location.search);
        const policy = params.get('referrerPolicy');
        const propName = Array.from(params.keys())[0];
        const trustedValue = trustedPolicy.createHTML(policy);
        iframe.setAttribute(propName, trustedValue);
    },

    createAdIframe(adsUrl) {
        const adId = this.getRandomAdId();
        const iframe = document.createElement('iframe');
        this.setReferrerPolicy(iframe)
        iframe.src = `${adsUrl}/${adId}.html`;
        iframe.sandbox = 'allow-scripts';
        iframe.className = 'ad-frame';
        return iframe;
    },

    createAdIframes(count, adsUrl) {
        const iframes = [];
        for (let i = 0; i < count; i++) {
            iframes.push(this.createAdIframe(adsUrl));
        }
        return iframes;
    },

    calculateAdCount(noteCount, minIframes, maxIframes) {
        if (noteCount >= maxIframes) {
            return 1;
        }

        const minAdsNeeded = Math.max(1, minIframes - noteCount - 1);
        const maxAdsAllowed = maxIframes - noteCount - 1;
        const adjustedMax = Math.max(minAdsNeeded, maxAdsAllowed);

        return Math.floor(Math.random() * (adjustedMax - minAdsNeeded + 1)) + minAdsNeeded + 1;
    },

    clearAds(container) {
        const iframes = container.querySelectorAll('iframe');
        iframes.forEach(iframe => iframe.remove());
    },

    getAdIframes(noteCount, config) {
        const totalAds = this.calculateAdCount(noteCount, config.MIN_IFRAMES, config.MAX_IFRAMES);
        const leftAdsCount = Math.floor(totalAds / 2);
        const rightAdsCount = totalAds - leftAdsCount;

        return {
            left: this.createAdIframes(leftAdsCount, config.ADS_URL),
            right: this.createAdIframes(rightAdsCount, config.ADS_URL)
        };
    },

    appendAdIframes(adIframes) {
        const leftAds = document.getElementById('left-ads');
        const rightAds = document.getElementById('right-ads');

        this.clearAds(leftAds);
        this.clearAds(rightAds);

        adIframes.left.forEach(iframe => leftAds.appendChild(iframe));
        adIframes.right.forEach(iframe => rightAds.appendChild(iframe));
    }
};
