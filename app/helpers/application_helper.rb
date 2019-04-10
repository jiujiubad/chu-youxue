module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "有学"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  # Markdown 语法高亮：Coderay
  class HTMLwithCodeRay < Redcarpet::Render::HTML
    def block_code(code, language)
      if language
        <<-EOS
        <div class="code_block"> 
          <div class="code_header"> 
            #{CGI.escapeHTML(language.to_s)}  
          </div> 
          #{CodeRay.scan(code, language ||= :text).div(tab_width: 2, line_numbers: :inline)}  
        </div>
        EOS
      else
        CodeRay.scan(code, language ||= :text).div(tab_width: 2, line_numbers: :inline)
      end
    end
  end

  # Markdown to Html 解析：Coderay
  def markdown(text)
    renderer = HTMLwithCodeRay.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end

end
