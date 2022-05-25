templates = cancel_confirmation.html magic_link.html onboard_new.html onboard_returning.html payment_failed.html reactivate.html welcome.html

ALL: $(templates)

cancel_confirmation.html: cancel_confirmation.mjml header-logo.mjml header-tjej3.mjml footer.mjml
	mjml -o cancel_confirmation.html cancel_confirmation.mjml

magic_link.html: magic_link.mjml header-logo.mjml footer.mjml
	mjml -o magic_link.html magic_link.mjml

onboard_new.html: onboard_new.mjml header-logo-white.mjml header-tjej2.mjml footer.mjml
	mjml -o onboard_new.html onboard_new.mjml

onboard_returning.html: onboard_returning.mjml header-logo-white.mjml header-tjej2.mjml footer.mjml
	mjml -o onboard_returning.html onboard_returning.mjml

payment_failed.html: payment_failed.mjml header-logo.mjml footer.mjml
	mjml -o payment_failed.html payment_failed.mjml

reactivate.html: reactivate.mjml header-logo.mjml header-tjej1.mjml footer.mjml
	mjml -o reactivate.html reactivate.mjml

welcome.html: welcome.mjml header-logo.mjml header-tjej1.mjml footer.mjml
	mjml -o welcome.html welcome.mjml

clean:
	rm -f *.html