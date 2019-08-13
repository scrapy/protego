# v.1.2
#  ///                         .//.                                                                                     
# /////////////       *////////////                                                                                     
#  /////////////  /,  ////////////,                                                                                     
#  .///////////  *//  ////////////                                                                                      
#  ///////////.  ///*  ///////////.         ....    ..    ,.       ...     *     *     ,     ...       ...        */*   
#  ///   ////  .//////  ////   ////        ./*,,    //    //      //,,.    /*   //    //    //,,//    //,*//    /// ,// 
# .////////   /////////.  /////////        .////    //    //      /////    ///////    //    //  //    // .//   ,/*    //
# //////,   /////////////.   //////.       ./,      //    //      //       /*   //    //    //..      //..      //   *//
#/////.  ///////////////////   /////        /,      //    /////   /////    /,   */    //    //        //         /////. 
#////  *//////////////////////  ////                                                                                    
#  //  *   ///////////////   /*  //                                                                                     
#       /// *///////////* ///                                                                                           
#           *///////////*                                                                                               
#

User-agent: *
Disallow: /*&ved*
Disallow: /*&usg*
Disallow: /*&sa*
Disallow: /*&ie*
Disallow: *&rct*
Disallow: */user_vote/*
Disallow: */1001908/*
Disallow: /search?q=*

#test blocking historic program pages
Noindex: */download_advanced_ip_scanner/82841/*
Noindex: */download_advanced_ip_scanner/80466/*
Noindex: */download_advanced_ip_scanner/75067/*
Noindex: */download_advanced_ip_scanner/71349/*
Noindex: */download_advanced_ip_scanner/65566/*
Noindex: */download_recuva/12815/*
Noindex: */download_recuva/13749/*
Noindex: */download_recuva/14333/*
Noindex: */download_recuva/14753/*
Noindex: */download_recuva/15234/*
Noindex: */download_recuva/15838/*
Noindex: */download_recuva/52104/*
Noindex: */download_recuva/56746/*
Noindex: */download_recuva/57173/*
Noindex: */download_recuva/60713/*
Noindex: */download_recuva/10762/*
Noindex: */download_recuva/11131/*
Noindex: */download_recuva/12815/*
Noindex: */download_recuva/6599/*
Noindex: */download_recuva/6773/*
Noindex: */download_recuva/6995/*
Noindex: */download_recuva/7138/*
Noindex: */download_recuva/7407/*
Noindex: */download_recuva/7981/*
Noindex: */download_recuva/8986/*
Noindex: */download_recuva/9544/*
Noindex: */download_recuva/5155/*
Noindex: */download_recuva/5302/*
Noindex: */download_recuva/5402/*
Noindex: */download_recuva/5530/*
Noindex: */download_recuva/5669/*
Noindex: */download_recuva/5841/*
Noindex: */download_recuva/5944/*
Noindex: */download_recuva/6122/*
Noindex: */download_recuva/6294/*
Noindex: */download_recuva/6465/*
Noindex: */download_recuva/6599/*
Noindex: */download_recuva/3924/*
Noindex: */download_recuva/4057/*
Noindex: */download_recuva/4186/*
Noindex: */download_recuva/4268/*
Noindex: */download_recuva/4380/*
Noindex: */download_recuva/4454/*
Noindex: */download_recuva/4580/*
Noindex: */download_recuva/4719/*
Noindex: */download_recuva/4812/*
Noindex: */download_recuva/4941/*
Noindex: */download_recuva/5155/*
Noindex: */download_recuva/3017/*
Noindex: */download_recuva/3073/*
Noindex: */download_recuva/3216/*
Noindex: */download_recuva/3257/*
Noindex: */download_recuva/3348/*
Noindex: */download_recuva/3454/*
Noindex: */download_recuva/3538/*
Noindex: */download_recuva/3544/*
Noindex: */download_recuva/3747/*
Noindex: */download_recuva/3840/*
Noindex: */download_recuva/3924/*
Noindex: */download_recuva/2419/*
Noindex: */download_recuva/2464/*
Noindex: */download_recuva/2530/*
Noindex: */download_recuva/2580/*
Noindex: */download_recuva/2669/*
Noindex: */download_recuva/2905/*
Noindex: */download_recuva/2945/*
Noindex: */download_recuva/2975/*
Noindex: */download_recuva/3017/*
Noindex: */download_free-youtube-download/79110/*
Noindex: */download_free-youtube-download/80044/*
Noindex: */download_free-youtube-download/80408/*
Noindex: */download_free-youtube-download/80524/*
Noindex: */download_free-youtube-download/81179/*
Noindex: */download_free-youtube-download/81348/*
Noindex: */download_free-youtube-download/81793/*
Noindex: */download_free-youtube-download/82845/*
Noindex: */download_free-youtube-download/83052/*
Noindex: */download_free-youtube-download/83163/*
Noindex: */download_free-youtube-download/79022/*
Noindex: */download_free-youtube-download/79110/*
Noindex: */download_windows_live_movie_maker/56969/*
Noindex: */download_windows_live_movie_maker/15543/*
Noindex: */download_total_pdf_converter/81038/*
Noindex: */download_total_pdf_converter/80939/*
Noindex: */download_total_pdf_converter/78144/*
Noindex: */download_total_pdf_converter/76936/*
Noindex: */download_total_pdf_converter/67536/*

Sitemap: https://filehippo.com/sitemap_index.xml