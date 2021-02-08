;;; compilation-settings.el -- This file has compilation settings
;;; Commentary:

;;; Code:
(setq compile-command "/usr/local/bin/docker exec -it aadbc477d41e bash -c \"cd BlobStore/build && make -j8\"")

(provide 'compilation-settings)
;;; compilation-settings.el ends here
