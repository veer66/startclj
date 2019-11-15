FROM debian:sid
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y emacs clojure leiningen
COPY .emacs /root
COPY install.el .
RUN emacs --batch --load install.el
RUN mkdir -p /example
WORKDIR "/example"
RUN lein new app example_app
WORKDIR "/example/example_app"
ENTRYPOINT ["emacs"]
