# hoverfly-api-mock-try

Simple go at using Hoverfly API mocking tool (https://hoverfly.io/) with Restful Booker API (https://restful-booker.herokuapp.com/apidoc/index.html)

Tried both the command-line version and the Python module

## Command Line

### Requires

- Hoverfly to be installed to work. I used the simple option of having `hoverctl` and `hoverfly` files in the same directory as the other files. Installation details: https://hoverfly.io/#download

- Hoverfly SSL certificate dowloaded into the same dirctory as the other files. Can get using `wget https://raw.githubusercontent.com/SpectoLabs/hoverfly/master/core/cert.pem`

### How it runs

- `capture_restfulbooker_hoverfly_try.sh`- makes some API requests against restful booker and captures responses in `simulation.json`

- `simuate_restfulbooker_hoverfly_try.sh` - runs mocked requests that retrieve responses from `simulation.json` rather than the actual API. 


## Python Version (hoverpy)

### Requires
- Python 3
- requests python module
- hoverpy python module

Both the above modules can be installed using pip.

### How it runs
In short, it doesn't!

File `restful_booker_hoverpy.py` in `hoverpy`sub directory was a quick attempt but it doesn't work. Get SSL error message when try to run it. Like the command line version it looks like Hoverfly SSL certificate is needed. However, I have not found instructions on how to use this with hoverpy Python module. 


