## 1 Tier Architecture
One-tier architecture involves putting all of the required components for a software application or technology on a single server or platform. This kind of architecture is often contrasted with multi-tiered architecture or the three-tier architecture that's used for some Web applications and other technologies where various presentation, business and data access layers are housed separately.
source: [techopedia.com|https://www.techopedia.com/definition/17374/one-tier-architecture]

## 1 Tier Architecture Template

This template creates an architecuter based on 1 Tier architecture defined above. It contains VPC submodule creating subnet on one of the availability zones in one of the regions of AWS. Furthermore, it creates a single instance on the said subnet where you can deploy your application depending on your needs.

This template includes multiple modules:

  * vpc: This module can be used to create vpc if you haven't created one yet.
  * ec2: Generaly contains a template for creating a AWS EC2 instance on the subnet provided.

## Contribution

  * Fork the repo
  * Make changes on your fork repo
  * Feel free to submit any changes appropriate

## License

Copyright 2019 Norman Santiago

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
