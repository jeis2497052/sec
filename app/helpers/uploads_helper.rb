module UploadsHelper
  def file_preview(file)
    return if file.blank?

    if file.thumbnail.url
      preview = image_tag(file.thumbnail.url)
    else
      preview = content_tag :div, class: "file-preview-fallback" do
        content_tag(:span, ".#{file.file.extension.downcase}")
      end
    end

    link_to preview, file.url
  end


  def file_name(file)
    File.basename(file.path)
  end
end
