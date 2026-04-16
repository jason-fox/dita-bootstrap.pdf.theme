import os

themes = [
    'cyborg', 'darkly', 'flatly', 'litera', 'lux', 'minty', 
    'morph', 'simplex', 'slate', 'superhero'
]

base_path = "/Users/jasonfox/Workspace/dita/dita-ot-4.2/plugins/dita-bootstrap.pdf.theme"

# The broken content
target_content = """    <xsl:next-match>
      <xsl:with-param name="variant" select=""/>
      <xsl:with-param name="theme" select=""/>
      <xsl:with-param name="prefix" select=""/>
      <xsl:with-param name="defaultRounded" select=""/>
    </xsl:next-match>"""

# The correct content
replacement_content = """    <xsl:next-match>
      <xsl:with-param name="variant" select="$variant"/>
      <xsl:with-param name="theme" select="$theme"/>
      <xsl:with-param name="prefix" select="$prefix"/>
      <xsl:with-param name="defaultRounded" select="$defaultRounded"/>
    </xsl:next-match>"""

for theme in themes:
    file_path = os.path.join(base_path, theme, "cfg/fo/xsl/custom.xsl")
    if os.path.exists(file_path):
        with open(file_path, 'r') as f:
            content = f.read()
        if target_content in content:
            updated_content = content.replace(target_content, replacement_content)
            with open(file_path, 'w') as f:
                f.write(updated_content)
            print(f"Fixed {theme}")
        else:
            # Check if it was already fixed or has slightly different whitespace
            print(f"Target not found in {theme}. Checking manually...")
            # Fallback to a less specific replacement if needed
            lines = content.splitlines()
            fixed_lines = []
            for line in lines:
                if 'name="variant" select=""' in line:
                    fixed_lines.append(line.replace('select=""', 'select="$variant"'))
                elif 'name="theme" select=""' in line:
                    fixed_lines.append(line.replace('select=""', 'select="$theme"'))
                elif 'name="prefix" select=""' in line:
                    fixed_lines.append(line.replace('select=""', 'select="$prefix"'))
                elif 'name="defaultRounded" select=""' in line:
                    fixed_lines.append(line.replace('select=""', 'select="$defaultRounded"'))
                else:
                    fixed_lines.append(line)
            
            with open(file_path, 'w') as f:
                f.write("\\n".join(fixed_lines) + "\\n")
            print(f"Attempted line-by-line fix for {theme}")
    else:
        print(f"File not found for {theme}")
