1. [Windows Configuration and use - win配置与使用](win_config.md)
2. [Android Configuration and use - 安卓配置与使用](android_config.md)
3. [IOS Configuration and use - 苹果配置与使用](ios_config.md)
4. [Java Configuration and use - Java配置与使用](java_config.md)
5. [IDEA Configuration and use - IDEA配置与使用](idea_config.md)
6. [Bug Configuration and use - 开发配置与使用](bug_config.md)





<script>
import mermaid from "https://cdn.skypack.dev/mermaid@8.14.0";
// select <pre class="mermaid"> _and_ <pre><code class="language-mermaid">
document.querySelectorAll("pre.mermaid, pre>code.language-mermaid").forEach($el => {
  // if the second selector got a hit, reference the parent <pre>
  if ($el.tagName === "CODE")
    $el = $el.parentElement
  // put the Mermaid contents in the expected <div class="mermaid">
  // plus keep the original contents in a nice <details>
  $el.outerHTML = `
    <div class="mermaid">${$el.textContent}</div>
    <details>
      <summary>Diagram source</summary>
      <pre>${$el.textContent}</pre>
    </details>
  `
})
// initialize Mermaid to [1] log errors, [2] have loose security for first-party
// authored diagrams, and [3] respect a preferred dark color scheme
mermaid.initialize({
  logLevel: "error", // [1]
  securityLevel: "loose", // [2]
  theme: (window.matchMedia && window.matchMedia("(prefers-color-scheme: dark)").matches) ?
    "dark" :
    "default" // [3]
})
</script>





<html>

<pre class="mermaid"><code>graph TD;
    A--&gt;B;
    A--&gt;C;
    B--&gt;D;
    C--&gt;D;</code></pre>
<hr>

</html>