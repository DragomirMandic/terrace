<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after
 *
 * @package UnderStrap
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

$container = get_theme_mod( 'understrap_container_type' );
?>

<?php get_template_part( 'sidebar-templates/sidebar', 'footerfull' ); ?>

<div class="wrapper" id="wrapper-footer">
<div class="bg-image"></div>

    <div class="title-holder">
        <div class="container">
            <h2>
                <span>Contact</span>
                Send us a message below
            </h2>
        </div>  
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-11">
                <?php echo do_shortcode('[contact-form-7 id="20" title="Footer Form"]');?>
                <div class="copyright">Copyright by Terrace - All Rights Reserved</div>
            </div>
        </div>
    </div>

</div><!-- wrapper end -->

</div><!-- #page we need this extra closing tag here -->

<?php wp_footer(); ?>

<script>
  AOS.init();
</script>

</body>

</html>