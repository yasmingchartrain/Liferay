<footer
    class="footer"
    id="footer"
    role="contentinfo">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h6
                    class="rodape-direitos">
                    © Copyright Diários Associados - 2022. <br>
                    Todos os direitos reservados.
                </h6>
            </div>
            <div class="col-md-3 align-items-start">
                <#if has_navigation && is_setup_complete>
                    <ul class="nav flex-column footer">
                        <#list nav_items as nav_item>
                            <li class="nav-item">
                                <a
                                    class="nav-link especial"
                                    href="${nav_item.getURL()}"
                                    ${nav_item.getTarget()}
                                >
                                    ${nav_item.getName()}
                                </a>
                            </li>
                        </#list>
                    </ul>
                </#if>
            </div>
            <div class="col-md-6 align-items-center">
                <div class="align-items-end redesocial-footer">
                    <div class="d-flex ml-auto">
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
                <div class="align-items-end imagem-footer">
                    <img
                        alt="${logo_description}"
                        src="${site_logo}" 
                    />
                </div>
            </div>
        </div>
    </div>
</footer>