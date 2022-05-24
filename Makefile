templates = cancel_confirmation.html magic_link.html onboard_new.html onboard_returning.html payment_failed.html reactivate.html welcome.html

ALL: $(templates)

$(templates): %.html: %.mjml
	mjml -o ./ $<

clean:
	rm -f $(templates)