$('#SequenceAdminAddForm').submit (e) ->

  do e.preventDefault

  $login    = $(@).find('#login')
  $password = $(@).find('#password')
  $error    = $(@).find('#error')

  login     = $login.val().trim()
  password  = $password.val().trim()

  if login is '' or password is ''
    $error.val 'Login ou mot de passe non renseigné.'
  else
    $
      .post '/Aero/admin/Sequences/add', 
        {login, password}
      .done (member) =>
        unless member? 
          $error.val 'Login ou mot de passe invalide.'
        else
          do $(@).fadeOut
          # ici tu peux modifier les div comme tu le souhaite pour faire voir que t'es connecté...
          # member sera un objet JSON qui contiendra les infos sur le membre
      .fail ->
        $error.val 'Oups la connexion a échouée !'