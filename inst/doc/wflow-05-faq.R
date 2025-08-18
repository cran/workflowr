## ----render-single-page-pdf, eval=FALSE---------------------------------------
# library("rmarkdown")
# # Create analysis/file.pdf
# render("analysis/file.Rmd", pdf_document(), knit_root_dir = "..")

## ----render-single-page-html-1, eval=FALSE------------------------------------
# library("rmarkdown")
# # Create analysis/file.html, includes navigation bar
# render("analysis/file.Rmd", html_document(), knit_root_dir = "..")

## ----render-single-page-html-2, eval=FALSE------------------------------------
# library("rmarkdown")
# # Create analysis/file.html, no navigation bar nor advanced features
# render("analysis/file.Rmd", html_document_base(), knit_root_dir = "..")

## ----render-single-page-html-3, eval=FALSE------------------------------------
# library("rmarkdown")
# 
# # Temporarily rename _site.yml
# file.rename("analysis/_site.yml", "analysis/_site.yml_tmp")
# 
# # Create analysis/file.html, no navigation bar
# render("analysis/file.Rmd", html_document(), knit_root_dir = "..")
# 
# # Restore _site.yml
# file.rename("analysis/_site.yml_tmp", "analysis/_site.yml")

## ----render-single-page-html-4, eval=FALSE------------------------------------
# render("analysis/file.Rmd",
#        html_document(toc = TRUE, toc_float = TRUE, theme = "cosmo", highlight = "textmate"),
#        knit_root_dir = "..",
#        output_file = "standalone.html")

## ----render-single-page-html-5, eval=FALSE------------------------------------
# # use the workflowr::wflow_html settings in analysis/_site.yml
# render("analysis/file.Rmd", knit_root_dir = "..")

