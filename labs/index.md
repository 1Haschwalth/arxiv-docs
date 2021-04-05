# arXivLabs: An invitation to collaborate

<style>
.mkd-img-border {
  margin:1em 0px;
  padding:10px;
  border:.25em solid #ededed;
}
.mkd-horz-spacing {
  margin-right:1em;
  margin-left:1em;
}
.mkd-img-left {
  float:left;
  width:100%;
  margin-top:0;
}
.mkd-img-right {
  float:right;
  width:100%;
  margin-top:0;
}
.mkd-img-full {
  width:100% !important;
}
.mkd-img-60 {
  width:100% !important;
  margin:0 auto;
  display:block;
}
.mkd-img-thumb {
  max-width:150px !important;
}
.mkd-img-icon {
  border-radius:25%;
  width:150px;
  float:left;
  margin:0 .5em;
}
blockquote {
  border-left:0;
  margin:0;
  padding:0;
}
blockquote ol {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-between;
}
blockquote ol li {
  width: 100%;
  padding:1em;
  -webkit-box-shadow: 0px 3px 8px 0px rgba(0,0,0,0.1);
  -moz-box-shadow: 0px 3px 8px 0px rgba(0,0,0,0.1);
  box-shadow: 0px 3px 8px 0px rgba(0,0,0,0.1);
  min-height:90px;
}
blockquote ol li strong {
  font-size: 20px;
}
blockquote ol li:nth-child(1) {
  border: 5px solid #a5d6fe;
  background: #f7fafc;
}
blockquote ol li:nth-child(2) {
  border: 5px solid #fb5951;
  background: #f7f4f2;
}
blockquote ol li:nth-child(3) {
  border: 5px solid #7c7469;
  background: #f9f7f7;
}
blockquote ol li::after {
  content: "";
  margin: 0;
}
blockquote ol li img {
  height:40px;
  display:block;
  margin:1em auto 0 auto;
}
h2, h2, h4, h5 {
  clear:both;
}
aside {
  float:left;
  clear:both;
  width:100%;
}
@media (min-width: 576px) {
  .mkd-img-left {
    width:calc(50% - 1.25em);
    margin-right:2em;
  }
  .mkd-img-right {
    width:calc(50% - 1.25em);
    margin-left:2em;
  }
  .mkd-img-60 {
    width:60% !important;
    margin:0 auto;
    display:block;
  }
  blockquote ol li {
    width: calc(33% - 10px);
  }
}
</style>

{% macro pendo() %}
<script>
(function(apiKey){
    (function(p,e,n,d,o){var v,w,x,y,z;o=p[d]=p[d]||{};o._q=[];
    v=['initialize','identify','updateOptions','pageLoad','track'];for(w=0,x=v.length;w<x;++w)(function(m){
        o[m]=o[m]||function(){o._q[m===v[0]?'unshift':'push']([m].concat([].slice.call(arguments,0)));};})(v[w]);
        y=e.createElement(n);y.async=!0;y.src='https://content.analytics.arxiv.org/agent/static/'+apiKey+'/pendo.js';
        z=e.getElementsByTagName(n)[0];z.parentNode.insertBefore(y,z);})(window,document,'script','pendo');

        // Call this whenever information about your visitors becomes available
        // Please use Strings, Numbers, or Bools for value types.
        pendo.initialize({
            visitor: {
                id:              'arxiv-labs-user'   // Required if user is logged in
                // email:        // Recommended if using Pendo Feedback, or NPS Email
                // full_name:    // Recommended if using Pendo Feedback
                // role:         // Optional
                // You can add any additional visitor level key-values here,
                // as long as it's not one of the above reserved names.
            },

            account: {
                id:           'ARXIV-LABS' // Highly recommended
                // name:         // Optional
                // is_paying:    // Recommended if using Pendo Feedback
                // monthly_value:// Recommended if using Pendo Feedback
                // planLevel:    // Optional
                // planPrice:    // Optional
                // creationDate: // Optional
                // You can add any additional account level key-values here,
                // as long as it's not one of the above reserved names.
            }
        });
})('d6494389-b427-4103-7c76-03182ecc8e60');
</script>
{% endmacro %}
{{ pendo() }}

<img alt="arXivLabs logo" src="images/smileybones-labs-icon.png" class="mkd-img-right mkd-img-thumb"/>

arXivLabs is a framework for enabling the arXiv community to contribute to arXiv and develop tools that can benefit the scientific community. Current projects are featured in our [arXivLabs showcase](showcase/).

arXiv welcomes anyone, from single individuals to large companies, to contribute ideas and share their products and services, as long as they abide by arXiv’s values of openness, community, excellence, and user data privacy.

**arXivLabs** projects are categorized under the following criteria:

> 1. **Community**
> Projects that leverage arXiv services, and have an operational agreement or understanding, but are maintained and deployed fully outside of arXiv. These projects meet minimal technical criteria, and may need funding to offset costs. This category includes research projects, as well as external applications (such as mobile apps or mirror sites) and widgets on external websites.
> 1. **Platform**
> Experimental projects maintained by external collaborators and deployed (in whole or part) on arXiv infrastructure. These projects must meet additional technical criteria.
> 1. **Core**
> Experimental projects that add a great deal of value to the arXiv platform, and which are deemed feasible to maintain by the core arXiv IT team, may be incorporated as a core feature or service. These projects undergo additional rigorous scrutiny to ensure maintainability, security, and reliability.

To apply to the arXivLabs community, learn more about the [criteria](criteria) and then [propose your project idea](project-proposal).

<a onclick="/project-proposal" class="button-fancy">Click to submit your idea <span> </span></a>

Please also note that many projects that use APIs and other methods to access arXiv's metadata, full text, or source files are **not** arXivLabs projects. Learn more about [arXiv API access and data usage here.](https://arxiv.org/help/api/)

_Note: Use of the names “arXiv”, “arXiv.org”, “arXiv Labs”, “arXivLabs” and associated logos, web addresses, and colors are only allowed with the explicit written permission from the arXiv management team._
