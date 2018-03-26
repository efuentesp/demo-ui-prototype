<formbox>
  <div class="x_content">
    <h2 class="page-header">{opts.title}</h2>
    <form id={opts.id} data-parsley-validate>
      <yield/>
      <br/>
      <div class="ln_solid"></div>
      <div class="form-group">
        <div if={opts.action=='create'}>
          <submit-button to={ opts.return } action="create"></submit-button>
          <submit-button to={ opts.return } action="return"></submit-button>
        </div>
        <div if={opts.action=='update'}>
          <submit-button to={ opts.return } action="update"></submit-button>
          <submit-button to={ opts.return } action="return"></submit-button>
        </div>
        <div if={opts.action=='delete'}>
          <submit-button to={ opts.return } action="delete"></submit-button>
          <submit-button to={ opts.return } action="return"></submit-button>
        </div>
		<div if={opts.action=='search'}>
          <submit-button to={ opts.return } action="search"></submit-button>
        </div>
		<div if={opts.action=='custom'}>
          <submit-button to={ opts.return } action="custom" icon={ opts.icon } caption={ opts.button } ></submit-button>
		  <submit-button to={ opts.return } action="return"></submit-button>
        </div>
      </div>
    </form>
  </div>
</formbox>
