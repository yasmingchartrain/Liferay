<header class="bg-white" id="banner" role="banner">
	<div  id="heading" class="d-flex align-items-center">
	  <!-- if para o botão do menu de navegação  -->
		<#if has_navigation && is_setup_complete>	
		 <!-- botão sanduiche em bootstrap  -->			
			<button 
				type="button" 
				class="btn btn-unstyled bnt-ajust" 
				data-toggle="modal" 
				data-target="#modalsanduiche"
			>
				<span class="navbar-toggler-icon"></span>
				Seções
			</button>
			 <!-- modal para menu sanduiche  -->
			<div 
				class="modal fade" 
				id="modalsanduiche" 
				tabindex="-1" 
				role="dialog" 
				aria-labelledby="searchLebal" 
				aria-hidden="true"
				
			>
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="searchLebal">Menu</h5>
						
							<button 
								type="button" 
								class="close" 
								data-dismiss="modal" 
								aria-label="Fechar"
							>
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						 <!-- corpo da modal com include do navigation  -->
						<div class="modal-body">
							<#include "${full_templates_path}/navigation.ftl" />
						</div>
						<div class="modal-footer">
							
						</div>
					</div>
				</div>
			</div>
		</#if>
	 <!-- Botão de busca -->
		<button 
			type="button" 
			class="btn btn-unstyled bnt-ajust" 
			data-toggle="modal" 
			data-target="#search"
		>
			<i class="las la-search"></i>
			
		</button>
		 <!-- modal para botão de busca  -->
		<div 
			class="modal fade" 
			id="search" 
			tabindex="-1" 
			role="dialog" 
			aria-labelledby="exampleModalLabel" 
			aria-hidden="true"
			style="display: none;"
		>
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						
					
						<button 
							type="button" 
							class="close" 
							data-dismiss="modal" 
							aria-label="Fechar"
						>
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					 <!-- corpo da modal com tagdo liferay de busca  -->
					<div class="modal-body">
						<@liferay.search_bar />
					</div>
				</div>
			</div>
		</div>


		<!-- Imagem Logo-->
		<div aria-level="1" class="site-title" role="heading">
			<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
				<img class alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
			</a>
		</div>
		
		<!-- Titulo da página atual-->
		<h6 class="site-name">${layout.getHTMLTitle(locale)}</h6>
		
		<!--Botão de login-->
		<#if !is_signed_in>
			<a 
				class="btn btn-primary" 
				data-redirect="${is_login_redirect_required?string}" 
				href="/c/portal/login" 
				id="sign-in" 
				rel="nofollow"
			>
				${languageUtil.get(locale,"sign-in")}
			</a>
		</#if>
		<!--Botão contraste -->
			
		<!-- botão contraste e redes sociais -->
		<div 
			class="d-flex ml-auto">
			
			<button type="button" 
			class="btn btn-primary bt-contraste" 
			data-toggle="tooltip" 
			data-placement="bottom" 
			title="CONTRASTE" 
			onclick='contraste()'>
				<i class="fa fa-adjust" aria-hidden="true"></i>Contraste
			</button>
			
			<a href="https://twitter.com/@correio" target="_blank">
				<i class="lab la-twitter font-icone twitter"></i>
			</a>

			<a href="https://www.facebook.com/correiobraziliense" target="_blank">
				<i class="lab la-facebook-f font-icone facebook"></i>
			</a>

			<a href="https://www.instagram.com/correio.braziliense/" target="_blank">
				<i class="lab la-instagram font-icone instagram"></i>
			</a>

		</div>
	</div>
</header>