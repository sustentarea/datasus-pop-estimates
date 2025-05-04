# datasus-pop-estimates

<!-- badges: start -->
[![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](https://img.shields.io/badge/Repo%20Status-Inactive-A6A82D.svg)](https://www.repostatus.org/#inactive)
[![OSF
DOI](https://img.shields.io/badge/OSF-10.17605/OSF.IO/UCMS6-1284C5.svg)](https://doi.org/10.17605/OSF.IO/UCMS6)
[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
<!-- badges: end -->

## Overview

This repository provides a reproducible pipeline for processing [DATASUS](https://datasus.saude.gov.br/) annual population estimates by municipality, age, and sex in Brazil (2000-2024) ([Comitê de Gestão de Indicadores et al., n.d.](http://tabnet.datasus.gov.br/cgi/deftohtm.exe?ibge/cnv/popsvs2024br.def)). The main goal is to provide a transparent and reliable workflow for processing these data, supporting research and informed public policy decisions.

You can access the pipeline [here](https://sustentarea.github.io/datasus-pop-estimates/).

## Data Availability

The processed data are available in both `csv` and `rds` formats via a dedicated repository on the Open Science Framework ([OSF](https://osf.io/)), accessible [here](https://doi.org/10.17605/OSF.IO/UCMS6). A metadata file is included alongside the validated data. You can also access these files directly from R using the [`osfr`](https://docs.ropensci.org/osfr/) package.

A backup copy of the raw data is also available in OSF. You can access it [here](https://doi.org/10.17605/OSF.IO/527D4).

## How to Use

The pipeline is fully reproducible. It was developed using the [Quarto](https://quarto.org/) publishing system and the [R programming language](https://www.r-project.org/). To ensure consistent results, the [`renv`](https://rstudio.github.io/renv/) package is used to manage and restore the R environment (see `renv.lock` for details).

After installing the three dependencies mentioned above, follow these steps to reproduce the analyses:

1. **Clone** this repository to your local machine.
2. **Open** the project in your preferred IDE.
3. **Restore the R environment** by running [`renv::restore()`](https://rstudio.github.io/renv/reference/restore.html) in the R console. This will install all required software dependencies.
4. **Open** `index.qmd` and run the code as described in the report.

## How to Cite

To cite this work, please use the following format:

Vartanian, D., & Carvalho, A. M. (2025). *A reproducible pipeline for processing DATASUS annual population estimates by municipality, age, and sex in Brazil (2000-2024)* \[Report\]. Sustentarea Research and Extension Group at the University of São Paulo. <https://sustentarea.github.io/datasus-pop-estimates>

A BibTeX entry for LaTeX users is

```
@techreport{vartanian2025,
  title = {A reproducible pipeline for processing DATASUS annual population estimates by municipality, age, and sex in Brazil (2000-2024)},
  author = {{Daniel Vartanian} and {Aline Martins de Carvalho}},
  year = {2025},
  address = {São Paulo},
  institution = {Sustentarea Research and Extension Group at the University of São Paulo},
  langid = {en},
  url = {https://sustentarea.github.io/datasus-pop-estimates}
}
```

## License

[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)

This content is licensed under [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/), placing these materials in the public domain. You may freely copy, modify, distribute, and use this work, even for commercial purposes, without permission or attribution.

## Acknowledgments

<table>
  <tr>
    <td width="30%">
      <br>
      <p align="center">
        <a href="https://www.fsp.usp.br/sustentarea"><img src="images/sustentarea-icon.svg" width="120em"/></a>
      </p>
      <br>
    </td>
    <td width="70%">
      This work is part of the <a href="https://www.fsp.usp.br/sustentarea">Sustentarea</a> Research and Extension Group's project: <em>Global syndemic: The impact of anthropogenic climate change on the health and nutrition of children under five years old attended by Brazil's public health system (SUS)</em>.
    </td>
  </tr>
</table>

<table>
  <tr>
    <td width="30%"">
      <br>
      <p align="center">
        <br> <a href="https://www.gov.br/cnpq/"><img src="images/cnpq-logo.svg" width="150em"/></a>
      </p>
      <br>
    </td>
    <td width="70%">
      This work was supported by the Conselho Nacional de Desenvolvimento Científico e Tecnológico - Brazil (<a href="https://www.gov.br/cnpq/">CNPq</a>).
    </td>
  </tr>
</table>
