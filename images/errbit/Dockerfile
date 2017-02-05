FROM errbit/errbit

# See https://github.com/errbit/errbit/issues/1158

ARG ERRBIT_ADMIN_USERNAME=admin
ARG ERRBIT_ADMIN_PASS=admin
ARG ERRBIT_ADMIN_EMAIL="errbit@example.com"

ENV ERRBIT_ADMIN_USERNAME=${ERRBIT_ADMIN_USERNAME} ERRBIT_ADMIN_PASS=${ERRBIT_ADMIN_PASS} ERRBIT_ADMIN_EMAIL=${ERRBIT_ADMIN_EMAIL}

RUN     sed -i "s/^admin_username.*/admin_username = \"${ERRBIT_ADMIN_USERNAME}\"/" db/seeds.rb && \
        sed -i "s/^admin_email.*/admin_email = \"${ERRBIT_ADMIN_EMAIL}\"/" db/seeds.rb && \
        sed -i "s/^admin_pass.*/admin_pass = \"${ERRBIT_ADMIN_PASS}\"/" db/seeds.rb
