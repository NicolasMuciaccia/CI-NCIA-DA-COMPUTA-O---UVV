document.getElementById('editProfileBtn').addEventListener('click', function() {
    var editables = document.querySelectorAll('.editable');
    editables.forEach(function(editable) {
      if (editable.getAttribute('contenteditable') === 'false') {
        editable.setAttribute('contenteditable', 'true');
        editable.style.border = '1px dashed #ccc';
        editable.style.padding = '5px';
        editable.style.backgroundColor = '#f9f9f9';
      } else {
        editable.setAttribute('contenteditable', 'false');
        editable.style.border = 'none';
        editable.style.padding = '0';
        editable.style.backgroundColor = 'transparent';
      }
    });
  });