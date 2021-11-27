<?php
/**
 * Template Name: Template: Home
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package UnderStrap
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;

get_header();
?>

<div class="home-banner animate__animated animate__fadeIn">
    <div class="container">
        <h1 class = "dinning-wrapper animate__animated animate__fadeInUp">A Dinning Experience</h1>
    </div>
</div>

<div class="home-call-to-action">
    <div class="container">
        <div class="row">
            <div data-aos="zoom-in" data-aos-duration="1000" class="col-md-4">
                <a href="#" class="call-to-action">
                    <div class="image"></div>
                    <div class="title">Dining Menu</div>
                </a>
            </div>
            <div data-aos="zoom-in" data-aos-duration="1000" class="col-md-4">
                <a href="#" class="call-to-action second">
                    <div class="image image2"></div>
                    <div class="title">Lunch Menu</div>
                </a>
            </div>
            <div data-aos="zoom-in" data-aos-duration="1000" class="col-md-4">
                <a href="" class="call-to-action third">
                    <div class="image image3"></div>
                    <div class="title">Functions</div>
                </a>
            </div>
        </div>
    </div>
</div>

<div class="home-welcome">
    <div class="title-holder">
        <div class="container">
            <h2 data-aos="fade-right" data-aos-duration="1000">
                <span>Welcome to</span>
                Terrace - Eating House
            </h2>
        </div>  
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-1"></div>
            <div data-aos="fade-up" data-aos-duration="1000" class="col-lg-8">
                <p class="tagline">
                There's only one place like the Terrace Cafe & Restaurant, located on Bunbury's BackBeach with
                uninterrupted views of crisp white sand and the Indian Ocean. The perfect place to eat, relax, and
                enjoy.
                <p>
                We are proud to support local business and local producers by sourcing as much as possible locally, including
                fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Yallingup and wines from
                Fergunson Valley, Margaret River and throughout the South West.
                </p>
            </div>
            <div data-aos="fade-left" data-aos-duration="1000" class="col-lg-3">
                <div class="button">About Us <i class="fa fa-chevron-right"></i></div>
            </div>
        </div>
    </div>
</div>

<?php

$loop = new WP_Query( array(
    'post_type' => 'post',
    'posts_per_page' => 1,
    'order' => 'DESC',
    'category' => 'Whats On',
));
while ( $loop->have_posts() ) : $loop->the_post();

?>

<div class="home-news">
    <div class="bg-image"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-5 col-md-6">
                <a data-aos="zoom-in" data-aos-duration="1000" href="#" class="news-img">
                    <div class="image" <?php if ( has_post_thumbnail() ) { ?> style="background-image:url(<?php echo get_the_post_thumbnail_url(); ?>);" <?php } ?>
                    ></div>
                    <div class="date"><?php the_date( 'd.m.Y'); ?></div>
                    <div class="category"><?php echo get_the_category()[0]->cat_name; ?></div>
                </a>
            </div>
            <div class="col-xl-1 d-none d-xl-block"></div>
            <div  data-aos="fade-up" data-aos-duration="1000" class="col-md-6">
                <h2><?php the_title(); ?></h2>
                <p>
                    <?php the_content(); ?>
                </p>
                    <a data-aos="fade-left" data-aos-duration="1000" href="<?php the_permalink(); ?>" class="button">Read More<i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
    </div>
</div>

<?php 
    endwhile; wp_reset_query();
?>

<div class="home-about">
    <div class="bg-image">
        <div data-aos="slide-down" data-aos-duration="1000" class="top-overlay">
            <img src="<?php echo get_template_directory_uri();?>/img/home-about-top.svg" alt="Overlay Top" width="100%">
        </div>
        <div data-aos="slide-up" data-aos-duration="1000" class="bottom-overlay">
            <img src="<?php echo get_template_directory_uri();?>/img/home-about-bottom.svg" alt="Overlay Bottom" width="100%">
        </div>
    </div>
    <div class="title-holder">
        <div class="container">
            <h2 data-aos="fade-up" data-aos-duration="1000">
                <span>Served fresh</span>
                from the paddock to the plate
            </h2>
        </div>  
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-1"></div>
            <div data-aos="fade-up" data-aos-duration="1000" class="col-lg-8">
                <p class="tagline">
                Nulla hendrerit malesuada accumsan. Cras hendrerit nisl in lectus commodo, a molestie ante
                feugiat. Suspendisse nec convallis mauris. 
                <p>
                Donec elit tortor, lobortis sit amet lobortis et, feugiat sed quam. Aeneean efficitur
                risus nec magna finibus, vitae sodales ex aliquam. Pellentesque habitant morbi tristique
                senectus et netus et malesuada fames ac turpis egestas.</p>
            </div>
            <div class="col-lg-3">
                <div data-aos="fade-left" data-aos-duration="1000" class="button">About Us <i class="fa fa-chevron-right"></i></div>
            </div>
        </div>
    </div>
</div>

<div class="home-about-images">
    <div class="container">
        <div class="row">
            <div data-aos="zoom-in" data-aos-duration="1000" class="col-md-4">
                <a href="#" class="call-to-action">
                    <div class="image"></div>
                </a>
            </div>
            <div data-aos="zoom-in" data-aos-duration="1000" class="col-md-4">
                <a href="#" class="call-to-action second">
                    <div class="image image2"></div>
                </a>
            </div>
            <div data-aos="zoom-in" data-aos-duration="1000" class="col-md-4">
                <a href="" class="call-to-action third">
                    <div class="image image3"></div>
                </a>
            </div>
        </div>
    </div>
</div>

<div class="home-testimonials">
    <div class="bg-overlay"></div>
     <div class="container">
         <div class="row">
             <div class="col-lg-5"></div>
             <div class="col-lg-7">
                <h2 data-aos="zoom-in" data-aos-duration="1000">Happy Customers</h2>
                <div data-aos="zoom-in" data-aos-duration="1000" class="testimonial-holder">
                    <p>Ah! What a place. I could go have breakfast every single day and not get tired by the
                        views. The staff are very kind and helpful, and the food is AMAZING! A MUST visit place if
                        you're visiting Bunbury!</p>
                        <div class="separator"></div>
                        <div class="author">Saad Ulde</div>
                </div>
             </div>
         </div>
     </div>   
</div>

<div class="home-subscribe">
    <div class="title-holder">
        <div class="container">
            <h2 data-aos="fade-up" data-aos-duration="1000">
                <span>Sign Up</span>
                Subscribe to our email newsletter
            </h2>
        </div>  
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-1"></div>
            <div data-aos="fade-up" data-aos-duration="1000" class="col-lg-11">
                <?php echo do_shortcode('[contact-form-7 id="19" title="Newsletter Subscription"]');?>
            </div>
        </div>
    </div>
</div>

<div class="home-social">
    <div class="title-holder">
        <div class="container">
            <h2 data-aos="fade-right" data-aos-duration="1000">
                <span>Socials</span>
                Follow us on facebook & instagram
            </h2>
        </div>  
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-11">
                <div data-aos="zoom-in" data-aos-duration="1000" class="facebook-holder">
                    <div class="title">
                        <i class="fa fa-facebook-square"></i>    
                        What's new on facebook
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <img src="<?php echo get_template_directory_uri();?>/img/call-to-action-1.jpg" alt="News Item">
                        </div>
                        <div class="col-lg-6">
                            <div class="content">
                                <div class="meta-data">
                                    <div class="date"><i class="fa fa-calendar"></i>Posted 31 Jan 2020</div>
                                    <div class="likes"><i class="fa fa-thumbs-up"></i> 24 Likes</div>
                                </div>
                                <p>Check out the view (and the dolphins, they're out there today!) Duis
                                posuere justo sed tellus congue, a convallis metus molestie. Quisque pellen
                                tesque ante feugiat velit ullam corper venenatis congue.</p>
                                <a href="#" class="button">Read on facebook</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="instagram-holder">
                    <div class="title">
                        <i class="fa fa-instagram"></i>    
                        @terrace</div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
get_footer();
