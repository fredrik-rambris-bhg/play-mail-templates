templates = cancel_confirmation.mjml magic_link.mjml onboard_new.mjml onboard_returning.mjml payment_failed.mjml reactivate.mjml welcome.mjml

$(templates): %.html: %.mjml
	mjml -o $@ $<

clean:
	rm -f $(templates)