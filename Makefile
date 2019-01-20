install:
	@echo 'downloading wordpress...'
	@cd web && mkdir wp && cd wp && pwd && bash ../../setup/wp-download.sh
	@echo 'move content folder...'	
	@rm -R web/wp/wp-content/plugins
	@rm -R web/wp/wp-content/themes
	@mkdir web/content && cd web/content && cp -rvf ../wp/wp-content/* . && rm -R ../wp/wp-content
	@echo 'wp config sample...'	
	@rm web/wp/wp-config-sample.php
	@cp setup/wp-config-sample.php web/wp-config.php