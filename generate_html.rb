#!/usr/bin/ruby

FILE_SIZE = 50000

def gimme_color
  color = "%06x" % (rand * 0xffffff)
  color.to_s
end

def generate_ungroup_media_queries
  css_style = ''
  i = 1
  until i > FILE_SIZE  do
    color1 = gimme_color
    color2 = gimme_color
    css_style += 'div { color: '+ color1 +' } @media screen and (max-width: 320px) { div { color: '+ color2 +' } }'
    i += 1
  end
  css_style
end

def generate_grouped_media_queries
  css_style = ''                                                                
  css_media = ''                                                                
  i = 1                                                                         
  until i > FILE_SIZE do                                                          
    color1 = gimme_color
    color2 = gimme_color
    css_style += 'div { color: '+ color1 +' }'
    css_media += '@media screen and (max-width: 320px) { div { color: '+ color2 +' } }'
    i += 1                                                                      
  end                                                                           
  css_style + css_media
end

def generate_html_with_css css
  '<!DOCTYPE html>
    <html>
      <head>
        <style>'+ css +'</style>
      </head>
      <body>
        <div>hello there</div>
      </body>
    </html>'
end

html_ungroup = generate_html_with_css generate_ungroup_media_queries
html_grouped = generate_html_with_css generate_grouped_media_queries

File.open('ungroup_media_queries.html', 'w') { |file| file.write(html_ungroup) }
File.open('grouped_media_queries.html', 'w') { |file| file.write(html_grouped) }


