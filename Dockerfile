FROM almir/webhook
VOLUME ["/etc/webhook"]
CMD ["-verbose", "-hooks=/etc/webhook/hooks.json", "-hotreload"]
EXPOSE 9000