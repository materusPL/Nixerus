{ lib, python3Packages }:
with python3Packages;
buildPythonApplication rec {
  pname = "maloja";
  version = "3.2.2";

  propagatedBuildInputs = [
    bottle
    waitress
    doreah
    nimrodel
    setproctitle
    jinja2
    lru-dict
    psutil
    sqlalchemy
    python-datauri
    requests
    setuptools
    toml
    pyyaml
  ];

  src = fetchFromGitHub {
    owner = "krateng";
    repo = "maloja";
    rev = "v${version}";
    sha256 = "";
  };

}
