FROM hhvm/hhvm-proxygen:latest

RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet

RUN mv composer.phar /usr/local/bin/composer

WORKDIR /app

RUN composer require hhvm/hsl hhvm/hhvm-autoload

RUN composer require --dev hhvm/hhast hhvm/hacktest facebook/fbexpect
