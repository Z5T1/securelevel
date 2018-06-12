INSTALL=install
DESTDIR=

install: install-bin install-man install-config

install-bin:
	$(INSTALL) -d $(DESTDIR)/sbin
	$(INSTALL) -m 755 -o root -g root src/sbin/securelevel $(DESTDIR)/sbin/

install-config:
	$(INSTALL) -d $(DESTDIR)/etc
	$(INSTALL) -m 600 src/etc/securetab.default $(DESTDIR)/etc/securetab

install-man:
	$(INSTALL) -d $(DESTDIR)/usr/share/man/man{5,8}
	$(INSTALL) -m 644 -o root -g root src/usr/share/man/man5/securetab.5 $(DESTDIR)/usr/share/man/man5/
	$(INSTALL) -m 644 -o root -g root src/usr/share/man/man8/securelevel.8 $(DESTDIR)/usr/share/man/man8/

