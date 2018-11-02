.class public Lcom/gemini/play/MGplayer;
.super Ljava/lang/Object;
.source "MGplayer.java"


# static fields
.field public static Background:Ljava/lang/String; = null

.field public static BackgroundMd5:Ljava/lang/String; = null

.field public static Broadcast:Ljava/lang/String; = null

.field public static Contact:Ljava/lang/String; = null

.field public static Ghttp_playlist_text:Ljava/lang/String; = null

.field public static LocalKeyID:Ljava/lang/String; = null

.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1

.field public static SoftOrHard:Z

.field public static StartTVBusOK:Z

.field public static _this:Landroid/app/Activity;

.field public static adPic:Ljava/lang/String;

.field public static adliveimage_site:I

.field public static admindir:Ljava/lang/String;

.field public static ap_password:Ljava/lang/String;

.field public static ap_show:I

.field public static ap_ssid:Ljava/lang/String;

.field public static ap_state:I

.field public static boot_launcher:Z

.field public static checkVideo_times:I

.field public static client:Lcom/loopj/android/http/AsyncHttpClient;

.field public static control_url:Ljava/lang/String;

.field public static cpuname_value:Ljava/lang/String;

.field public static current_version:I

.field public static custom_value:Ljava/lang/String;

.field public static debug:Ljava/lang/StringBuilder;

.field public static download_date:Ljava/lang/String;

.field public static download_tip:Ljava/lang/String;

.field public static download_url:Ljava/lang/String;

.field public static enablelsplugin:I

.field public static endtime:J

.field public static epgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static epgList_index:I

.field public static gemini_tiemer:Ljava/lang/String;

.field public static gp2pwaitcachecount:I

.field public static hotlink:Ljava/lang/String;

.field public static http_server_port:I

.field public static httpdstart:I

.field public static images_ad:Ljava/lang/String;

.field public static images_icon:Ljava/lang/String;

.field public static ip:Ljava/lang/String;

.field public static isShowLefttime:I

.field public static leftdays:Ljava/lang/String;

.field public static leftdaysshow:I

.field public static libforcetv_version:I

.field public static live_panal:I

.field public static live_showmac:I

.field public static live_ui_type:I

.field public static livelist_leftright:I

.field public static liveplaytimeout:I

.field public static livescroll_show:I

.field public static livescroll_showtimes:I

.field public static load_timeout:I

.field private static mCustom:Lcom/gemini/play/gcustom;

.field private static mPlayer:Lcom/gemini/play/gplayer;

.field public static mWebView:Landroid/webkit/WebView;

.field public static member:Ljava/lang/String;

.field private static mf:Lcom/gemini/play/gf;

.field public static need_scroll_list:Z

.field public static net_version:I

.field public static now_second:Ljava/lang/String;

.field public static now_second_prc:Ljava/lang/String;

.field public static now_zone_prc:Ljava/lang/String;

.field public static number:Ljava/lang/String;

.field private static old_RxByte:J

.field public static onescroll_times:I

.field public static onescroll_txt:Ljava/lang/String;

.field public static openEveryScrollText:I

.field public static openEveryVideo:I

.field private static packname:Ljava/lang/String;

.field public static playbacktypepassword:Ljava/lang/String;

.field public static proxyName:Ljava/lang/String;

.field public static rHandler:Landroid/os/Handler;

.field public static screenHeight:I

.field public static screenWidth:I

.field public static scroll_every_date:Ljava/lang/String;

.field public static scroll_every_now:Ljava/lang/String;

.field public static scroll_every_time:I

.field public static scroll_every_txt:Ljava/lang/String;

.field public static scroll_iface:Lcom/gemini/play/ScrollViewInterface;

.field public static scrolltext:Ljava/lang/String;

.field public static seconds:J

.field public static seconds_prc:J

.field public static showliveplaylistname:Ljava/lang/String;

.field public static sswwtv_text:Ljava/lang/StringBuffer;

.field public static start_tvbus:I

.field public static start_tvbus_vod:I

.field public static style:Ljava/lang/String;

.field public static time_now:Ljava/lang/String;

.field public static tv:Lcom/gemini/play/MGplayer;

.field public static tvbuser:Lcom/tvbus/engine/TvbusApi;

.field public static type2password:Ljava/lang/String;

.field public static typeface_tmp:Landroid/graphics/Typeface;

.field public static udpIP:Ljava/lang/String;

.field public static udpPort:Ljava/lang/String;

.field public static updatetip_show:I

.field public static urlpassword:Ljava/lang/String;

.field private static v1first:Z

.field public static video_iface:Lcom/gemini/play/ControlVideoInterface;

.field public static vod_showpage:I

.field public static vodcolumn:Ljava/lang/String;

.field public static watermark_dip1:I

.field public static watermark_dip2:I

.field public static watermark_site:I

.field public static writeDebug:Z


# instance fields
.field private sendHttpRequest_value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 329
    new-instance v0, Lcom/gemini/play/gplayer;

    invoke-direct {v0}, Lcom/gemini/play/gplayer;-><init>()V

    sput-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    .line 330
    new-instance v0, Lcom/gemini/play/gcustom;

    invoke-direct {v0}, Lcom/gemini/play/gcustom;-><init>()V

    sput-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    .line 331
    new-instance v0, Lcom/gemini/play/gf;

    invoke-direct {v0}, Lcom/gemini/play/gf;-><init>()V

    sput-object v0, Lcom/gemini/play/MGplayer;->mf:Lcom/gemini/play/gf;

    .line 333
    sput-object v2, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    .line 334
    sput-object v2, Lcom/gemini/play/MGplayer;->packname:Ljava/lang/String;

    .line 336
    sput v3, Lcom/gemini/play/MGplayer;->screenWidth:I

    .line 337
    sput v3, Lcom/gemini/play/MGplayer;->screenHeight:I

    .line 339
    sput-object v2, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    .line 341
    sput-object v2, Lcom/gemini/play/MGplayer;->time_now:Ljava/lang/String;

    .line 343
    sput-object v2, Lcom/gemini/play/MGplayer;->mWebView:Landroid/webkit/WebView;

    .line 345
    sput-boolean v3, Lcom/gemini/play/MGplayer;->v1first:Z

    .line 347
    sput-object v2, Lcom/gemini/play/MGplayer;->images_icon:Ljava/lang/String;

    .line 348
    sput-object v2, Lcom/gemini/play/MGplayer;->images_ad:Ljava/lang/String;

    .line 350
    sput-object v2, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    .line 351
    sput v3, Lcom/gemini/play/MGplayer;->leftdaysshow:I

    .line 353
    sput v4, Lcom/gemini/play/MGplayer;->load_timeout:I

    .line 354
    sput v3, Lcom/gemini/play/MGplayer;->net_version:I

    .line 371
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gemini/play/MGplayer;->seconds:J

    .line 373
    sput-object v2, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    .line 388
    sput v4, Lcom/gemini/play/MGplayer;->enablelsplugin:I

    .line 392
    const-string v0, "live|vod|back|setting|exit"

    sput-object v0, Lcom/gemini/play/MGplayer;->style:Ljava/lang/String;

    .line 393
    sput v6, Lcom/gemini/play/MGplayer;->watermark_site:I

    .line 394
    const/16 v0, 0x19

    sput v0, Lcom/gemini/play/MGplayer;->watermark_dip1:I

    .line 395
    const/16 v0, 0x19

    sput v0, Lcom/gemini/play/MGplayer;->watermark_dip2:I

    .line 396
    sput v4, Lcom/gemini/play/MGplayer;->adliveimage_site:I

    .line 397
    const-string v0, ""

    sput-object v0, Lcom/gemini/play/MGplayer;->control_url:Ljava/lang/String;

    .line 399
    sput-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    .line 401
    sput-object v2, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    .line 402
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/gemini/play/MGplayer;->sswwtv_text:Ljava/lang/StringBuffer;

    .line 404
    sput-boolean v3, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    .line 407
    sput-object v2, Lcom/gemini/play/MGplayer;->showliveplaylistname:Ljava/lang/String;

    .line 409
    sput-object v2, Lcom/gemini/play/MGplayer;->ip:Ljava/lang/String;

    .line 415
    sput-boolean v4, Lcom/gemini/play/MGplayer;->SoftOrHard:Z

    .line 419
    sput-object v2, Lcom/gemini/play/MGplayer;->scroll_every_date:Ljava/lang/String;

    .line 420
    sput-object v2, Lcom/gemini/play/MGplayer;->scroll_every_txt:Ljava/lang/String;

    .line 421
    sput v3, Lcom/gemini/play/MGplayer;->scroll_every_time:I

    .line 422
    sput-object v2, Lcom/gemini/play/MGplayer;->scroll_every_now:Ljava/lang/String;

    .line 423
    sput-object v2, Lcom/gemini/play/MGplayer;->scroll_iface:Lcom/gemini/play/ScrollViewInterface;

    .line 425
    sput-object v2, Lcom/gemini/play/MGplayer;->video_iface:Lcom/gemini/play/ControlVideoInterface;

    .line 427
    const/16 v0, 0x4b

    sput v0, Lcom/gemini/play/MGplayer;->current_version:I

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    .line 430
    sput v5, Lcom/gemini/play/MGplayer;->epgList_index:I

    .line 432
    sput v3, Lcom/gemini/play/MGplayer;->livelist_leftright:I

    .line 433
    sput-object v2, Lcom/gemini/play/MGplayer;->vodcolumn:Ljava/lang/String;

    .line 434
    sput v3, Lcom/gemini/play/MGplayer;->livescroll_show:I

    .line 435
    sput v3, Lcom/gemini/play/MGplayer;->livescroll_showtimes:I

    .line 437
    const v0, 0xea61

    sput v0, Lcom/gemini/play/MGplayer;->http_server_port:I

    .line 441
    sput v3, Lcom/gemini/play/MGplayer;->updatetip_show:I

    .line 443
    sput v3, Lcom/gemini/play/MGplayer;->checkVideo_times:I

    .line 445
    sput v4, Lcom/gemini/play/MGplayer;->live_ui_type:I

    .line 447
    const-string v0, ""

    sput-object v0, Lcom/gemini/play/MGplayer;->admindir:Ljava/lang/String;

    .line 449
    sput v3, Lcom/gemini/play/MGplayer;->start_tvbus:I

    .line 450
    sput v3, Lcom/gemini/play/MGplayer;->start_tvbus_vod:I

    .line 451
    sput-object v2, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    .line 453
    sput v5, Lcom/gemini/play/MGplayer;->liveplaytimeout:I

    .line 455
    sput v3, Lcom/gemini/play/MGplayer;->httpdstart:I

    .line 457
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/gemini/play/MGplayer;->endtime:J

    .line 459
    sput v5, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    .line 465
    sput-object v2, Lcom/gemini/play/MGplayer;->debug:Ljava/lang/StringBuilder;

    .line 466
    sput-boolean v4, Lcom/gemini/play/MGplayer;->writeDebug:Z

    .line 467
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/gemini/play/MGplayer;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 470
    sput v3, Lcom/gemini/play/MGplayer;->libforcetv_version:I

    .line 472
    sput-object v2, Lcom/gemini/play/MGplayer;->typeface_tmp:Landroid/graphics/Typeface;

    .line 475
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    sput-object v0, Lcom/gemini/play/MGplayer;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    .line 477
    sput-boolean v3, Lcom/gemini/play/MGplayer;->StartTVBusOK:Z

    .line 479
    sput-object v2, Lcom/gemini/play/MGplayer;->custom_value:Ljava/lang/String;

    .line 480
    sput-object v2, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 482
    sput v4, Lcom/gemini/play/MGplayer;->vod_showpage:I

    .line 484
    sput v3, Lcom/gemini/play/MGplayer;->live_showmac:I

    .line 486
    sput-object v2, Lcom/gemini/play/MGplayer;->LocalKeyID:Ljava/lang/String;

    .line 2867
    new-instance v0, Lcom/gemini/play/MGplayer$12;

    invoke-direct {v0}, Lcom/gemini/play/MGplayer$12;-><init>()V

    sput-object v0, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const-string v0, ""

    iput-object v0, p0, Lcom/gemini/play/MGplayer;->sendHttpRequest_value:Ljava/lang/String;

    return-void
.end method

.method public static final MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3554
    const/16 v11, 0x10

    new-array v3, v11, [C

    fill-array-data v3, :array_0

    .line 3557
    .local v3, "hexDigits":[C
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3559
    .local v0, "btInput":[B
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 3561
    .local v9, "mdInst":Ljava/security/MessageDigest;
    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 3563
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 3565
    .local v8, "md":[B
    array-length v5, v8

    .line 3566
    .local v5, "j":I
    mul-int/lit8 v11, v5, 0x2

    new-array v10, v11, [C

    .line 3567
    .local v10, "str":[C
    const/4 v6, 0x0

    .line 3568
    .local v6, "k":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 3569
    aget-byte v1, v8, v4

    .line 3570
    .local v1, "byte0":B
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v7

    .line 3571
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "k":I
    .restart local v7    # "k":I
    and-int/lit8 v11, v1, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v6

    .line 3568
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3573
    .end local v1    # "byte0":B
    :cond_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3576
    .end local v0    # "btInput":[B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .end local v8    # "md":[B
    .end local v9    # "mdInst":Ljava/security/MessageDigest;
    .end local v10    # "str":[C
    :goto_1
    return-object v11

    .line 3574
    :catch_0
    move-exception v2

    .line 3575
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3576
    const/4 v11, 0x0

    goto :goto_1

    .line 3554
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "th"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "t"    # I

    .prologue
    .line 3697
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static MyPrintln(I)V
    .locals 1
    .param p0, "str"    # I

    .prologue
    .line 1313
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(I)V

    .line 1316
    return-void
.end method

.method public static MyPrintln(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1305
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1308
    return-void
.end method

.method public static Number()Ljava/lang/String;
    .locals 8

    .prologue
    .line 2828
    const-string v3, ""

    .line 2829
    .local v3, "str":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x10

    if-gt v1, v4, :cond_0

    .line 2830
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4048000000000000L    # 48.0

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 2831
    .local v2, "ma":I
    int-to-char v0, v2

    .line 2832
    .local v0, "ca":C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2829
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2835
    .end local v0    # "ca":C
    .end local v2    # "ma":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/MGplayer;->getg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static RunControlPlayer(I)V
    .locals 4
    .param p0, "time"    # I

    .prologue
    .line 3711
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3712
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/MGplayer$16;

    invoke-direct {v1, v0, p0}, Lcom/gemini/play/MGplayer$16;-><init>(Landroid/os/Handler;I)V

    .line 3739
    .local v1, "mRunnable":Ljava/lang/Runnable;
    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3740
    return-void
.end method

.method public static SendHttpsServerCmd_cookies(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/gemini/play/CookieStatus;
    .locals 11
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "UserAgent"    # Ljava/lang/String;

    .prologue
    .line 1815
    const/4 v6, 0x0

    .line 1816
    .local v6, "url":Ljava/net/URL;
    const-string v5, ""

    .line 1817
    .local v5, "resultData":Ljava/lang/String;
    new-instance v1, Lcom/gemini/play/CookieStatus;

    invoke-direct {v1}, Lcom/gemini/play/CookieStatus;-><init>()V

    .line 1820
    .local v1, "cookier":Lcom/gemini/play/CookieStatus;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    move-object v6, v7

    .line 1825
    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendServerCmd Url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1826
    if-eqz v6, :cond_2

    .line 1828
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    .line 1829
    .local v8, "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v8, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 1830
    invoke-virtual {v8, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 1831
    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1833
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 1834
    const-string v9, "User-agent"

    invoke-virtual {v8, v9, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 1839
    const-string v9, "Cookie"

    invoke-virtual {v8, v9, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    :cond_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1842
    .local v3, "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1843
    .local v0, "buffer":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1844
    .local v4, "inputLine":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1845
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1836
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    :cond_1
    const-string v9, "User-agent"

    const-string v10, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)"

    invoke-virtual {v8, v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1856
    .end local v8    # "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v2

    .line 1858
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1862
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-object v1

    .line 1848
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "inputLine":Ljava/lang/String;
    .restart local v8    # "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    :cond_3
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendServerCmd result :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1849
    const-string v9, "set-cookie"

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1850
    iput-object p2, v1, Lcom/gemini/play/CookieStatus;->cookie:Ljava/lang/String;

    .line 1851
    iput-object v5, v1, Lcom/gemini/play/CookieStatus;->ret:Ljava/lang/String;

    .line 1853
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 1854
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1821
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    .end local v8    # "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method public static SendServerCmd_cookies(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/gemini/play/CookieStatus;
    .locals 11
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "UserAgent"    # Ljava/lang/String;

    .prologue
    .line 1764
    const/4 v6, 0x0

    .line 1765
    .local v6, "url":Ljava/net/URL;
    const-string v5, ""

    .line 1766
    .local v5, "resultData":Ljava/lang/String;
    new-instance v1, Lcom/gemini/play/CookieStatus;

    invoke-direct {v1}, Lcom/gemini/play/CookieStatus;-><init>()V

    .line 1769
    .local v1, "cookier":Lcom/gemini/play/CookieStatus;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    move-object v6, v7

    .line 1774
    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendServerCmd Url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1775
    if-eqz v6, :cond_2

    .line 1777
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 1778
    .local v8, "urlConn":Ljava/net/HttpURLConnection;
    invoke-virtual {v8, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1779
    invoke-virtual {v8, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1780
    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1782
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 1783
    const-string v9, "User-agent"

    invoke-virtual {v8, v9, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 1788
    const-string v9, "Cookie"

    invoke-virtual {v8, v9, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    :cond_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1791
    .local v3, "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1792
    .local v0, "buffer":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1793
    .local v4, "inputLine":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1794
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1785
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    :cond_1
    const-string v9, "User-agent"

    const-string v10, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)"

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1805
    .end local v8    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    .line 1807
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1811
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-object v1

    .line 1797
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "inputLine":Ljava/lang/String;
    .restart local v8    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_3
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendServerCmd result :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1798
    const-string v9, "set-cookie"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1799
    iput-object p2, v1, Lcom/gemini/play/CookieStatus;->cookie:Ljava/lang/String;

    .line 1800
    iput-object v5, v1, Lcom/gemini/play/CookieStatus;->ret:Ljava/lang/String;

    .line 1802
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 1803
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1770
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    .end local v8    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method public static Thread_Custom_Init()V
    .locals 1

    .prologue
    .line 2840
    new-instance v0, Lcom/gemini/play/MGplayer$11;

    invoke-direct {v0}, Lcom/gemini/play/MGplayer$11;-><init>()V

    .line 2864
    invoke-virtual {v0}, Lcom/gemini/play/MGplayer$11;->start()V

    .line 2865
    return-void
.end method

.method public static Thread_LoadImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "image"    # Ljava/lang/String;
    .param p1, "editorName"    # Ljava/lang/String;

    .prologue
    .line 2365
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gemini/play/MGplayer;->Thread_LoadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    return-void
.end method

.method public static Thread_LoadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "image"    # Ljava/lang/String;
    .param p1, "editorName"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;

    .prologue
    .line 2330
    new-instance v0, Lcom/gemini/play/MGplayer$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/gemini/play/MGplayer$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v0}, Lcom/gemini/play/MGplayer$6;->start()V

    .line 2362
    return-void
.end method

.method static synthetic access$002(Lcom/gemini/play/MGplayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MGplayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/gemini/play/MGplayer;->sendHttpRequest_value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Lcom/gemini/play/gplayer;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 328
    sget-boolean v0, Lcom/gemini/play/MGplayer;->v1first:Z

    return v0
.end method

.method public static assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 613
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 617
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 618
    .local v5, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 620
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v2, v8, [B

    .line 621
    .local v2, "bufferByte":[B
    const/4 v6, -0x1

    .line 622
    .local v6, "l":I
    :goto_0
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-le v6, v8, :cond_0

    .line 623
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 639
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bufferByte":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "l":I
    :catch_0
    move-exception v4

    .line 641
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 646
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 625
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bufferByte":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "l":I
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 626
    .local v7, "rBytes":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 627
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 629
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 630
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 633
    :cond_1
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 635
    .local v3, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 636
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 637
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 642
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bufferByte":[B
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "l":I
    .end local v7    # "rBytes":[B
    :catch_1
    move-exception v4

    .line 644
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method

.method public static check_timeout(I)V
    .locals 4
    .param p0, "time"    # I

    .prologue
    .line 1421
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1422
    .local v0, "timeHander":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/MGplayer$4;

    invoke-direct {v1, v0, p0}, Lcom/gemini/play/MGplayer$4;-><init>(Landroid/os/Handler;I)V

    .line 1439
    .local v1, "timeRunnable":Ljava/lang/Runnable;
    mul-int/lit16 v2, p0, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1440
    return-void
.end method

.method public static createCpuID()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x4

    .line 2645
    sget-object v10, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v11, "data"

    invoke-static {v10, v11, v13}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2646
    .local v7, "settings":Landroid/content/SharedPreferences;
    const-string v10, "number"

    const-string v11, "error"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2647
    .local v9, "value":Ljava/lang/String;
    const-string v10, "error"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    .line 2648
    const/4 v2, 0x0

    .line 2650
    .local v2, "cpuid":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v10

    const-string v11, "szysx"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v10

    const-string v11, "dhtv"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v10

    const-string v11, "familytv"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2651
    :cond_0
    invoke-static {}, Lcom/gemini/custom/MACUtils;->getMac()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 2652
    new-instance v1, Lcom/gemini/play/MyDialog$Builder;

    sget-object v10, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-direct {v1, v10}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2653
    .local v1, "builder":Lcom/gemini/play/MyDialog$Builder;
    sget-object v10, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v11, 0x7f0b00bc

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 2654
    sget-object v10, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v11, 0x7f0b0083

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/gemini/play/MGplayer$9;

    invoke-direct {v11}, Lcom/gemini/play/MGplayer$9;-><init>()V

    invoke-virtual {v1, v10, v11}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 2665
    sget-object v10, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v11, 0x7f0b0032

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/gemini/play/MGplayer$10;

    invoke-direct {v11}, Lcom/gemini/play/MGplayer$10;-><init>()V

    invoke-virtual {v1, v10, v11}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 2676
    invoke-virtual {v1}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/gemini/play/MyDialog;->show()V

    .line 2677
    const-string v2, "error"

    .line 2683
    .end local v1    # "builder":Lcom/gemini/play/MyDialog$Builder;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "HI3716M"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2684
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuId_Hi3716()Ljava/lang/String;

    move-result-object v2

    .line 2689
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v12, :cond_e

    .line 2691
    :cond_3
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v10, "/proc/cpuinfo"

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2692
    .local v5, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2693
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v8, ""

    .line 2694
    .local v8, "text":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 2695
    const-string v10, "CPU INFO"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    const-string v10, "Serial"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2697
    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 2698
    .local v6, "index":I
    const-string v10, "CPU ID"

    add-int/lit8 v11, v6, 0x2

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    add-int/lit8 v10, v6, 0x2

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2700
    goto :goto_2

    .line 2679
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "index":I
    .end local v8    # "text":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/gemini/custom/szysx;->GetCpuByfileNull()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2685
    :cond_6
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "HIK3V2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2686
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuId_HiK3V2()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2702
    :catch_0
    move-exception v3

    .line 2703
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2708
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    const-string v10, "00000"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v12, :cond_9

    .line 2709
    :cond_8
    invoke-static {}, Lcom/gemini/play/MGplayer;->readSD()Ljava/lang/String;

    move-result-object v2

    .line 2710
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cpuid numbersd = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2714
    :cond_9
    if-eqz v2, :cond_a

    const-string v10, "00000"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v12, :cond_e

    .line 2715
    :cond_a
    if-eqz v2, :cond_b

    const-string v10, "GEMINI"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v12, :cond_d

    .line 2716
    :cond_b
    invoke-static {}, Lcom/gemini/play/MGplayer;->readSD()Ljava/lang/String;

    move-result-object v2

    .line 2717
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cpuid numbersd = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2718
    if-eqz v2, :cond_c

    const-string v10, "GEMINI"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v12, :cond_d

    .line 2719
    :cond_c
    invoke-static {}, Lcom/gemini/play/MGplayer;->Number()Ljava/lang/String;

    move-result-object v2

    .line 2720
    invoke-static {v2}, Lcom/gemini/play/MGplayer;->writeSD(Ljava/lang/String;)V

    .line 2721
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cpuid number = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2724
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cpuid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2729
    :cond_e
    const-string v10, "error"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 2730
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cpuid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2731
    sget-object v10, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v11, "data"

    invoke-static {v10, v11, v13}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2732
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "number"

    invoke-interface {v4, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2733
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2745
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_f
    :goto_4
    return-void

    .line 2704
    :catch_1
    move-exception v3

    .line 2705
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 2737
    .end local v2    # "cpuid":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_10
    move-object v2, v9

    .line 2739
    .restart local v2    # "cpuid":Ljava/lang/String;
    const-string v10, "error"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/sysinfo.dat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "GEMINI"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2740
    invoke-static {v2}, Lcom/gemini/play/MGplayer;->writeSD(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static createHttpServer()V
    .locals 2

    .prologue
    .line 3429
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/MGplayer$15;

    invoke-direct {v1}, Lcom/gemini/play/MGplayer$15;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3550
    .local v0, "thread_processRequest":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3551
    return-void
.end method

.method public static custom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2113
    sget-object v0, Lcom/gemini/play/MGplayer;->custom_value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2114
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->custom()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MGplayer;->custom_value:Ljava/lang/String;

    .line 2115
    :cond_0
    sget-object v0, Lcom/gemini/play/MGplayer;->custom_value:Ljava/lang/String;

    return-object v0
.end method

.method public static custom_init(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 2068
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->stringfromjni(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static custon_uninit()V
    .locals 1

    .prologue
    .line 2077
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->sstringfromjni()V

    .line 2078
    return-void
.end method

.method public static dealResponseResult(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 3301
    const/4 v4, 0x0

    .line 3302
    .local v4, "resultData":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3303
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 3304
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 3306
    .local v3, "len":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 3307
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3309
    :catch_0
    move-exception v2

    .line 3310
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3312
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v4, Ljava/lang/String;

    .end local v4    # "resultData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 3313
    .restart local v4    # "resultData":Ljava/lang/String;
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3314
    return-object v4
.end method

.method public static debug()I
    .locals 1

    .prologue
    .line 2151
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->debug()I

    move-result v0

    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1495
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1496
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 1499
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteFolderFile(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "deleteThisPath"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2307
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2308
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2310
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2311
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2312
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2313
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/gemini/play/MGplayer;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 2312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2317
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    .line 2318
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2319
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2327
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 2321
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    .line 2322
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static deleteForcetvFiles()V
    .locals 0

    .prologue
    .line 2303
    return-void
.end method

.method public static donwFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "save"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1619
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "str:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " !save:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1620
    const-string v16, ""

    .line 1621
    .local v16, "save2":Ljava/lang/String;
    const-string v18, "file://"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1622
    const/16 v18, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1627
    :goto_0
    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1628
    .local v14, "pasts":[Ljava/lang/String;
    const-string v6, ""

    .line 1629
    .local v6, "fileName":Ljava/lang/String;
    const-string v15, ""

    .line 1631
    .local v15, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v9, v0, :cond_1

    .line 1632
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v14, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1631
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1624
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "pasts":[Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    :cond_0
    move-object/from16 v16, p1

    goto :goto_0

    .line 1635
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v14    # "pasts":[Ljava/lang/String;
    .restart local v15    # "path":Ljava/lang/String;
    :cond_1
    array-length v0, v14

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v6, v14, v18

    .line 1637
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "path:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "#fileName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1639
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1640
    .local v4, "destDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    .line 1641
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1644
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "str:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1646
    const-string v18, ".png"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, ".jpg"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, ".gif"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, ".bmp"

    .line 1647
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, ".jpeg"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, ".PNG"

    .line 1648
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, ".JPG"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, ".GIF"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, ".BMP"

    .line 1649
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, ".JPEG"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1705
    :cond_3
    :goto_2
    return-void

    .line 1653
    :cond_4
    const-string v18, ".png"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, ".jpg"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, ".gif"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, ".bmp"

    .line 1654
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, ".jpeg"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, ".PNG"

    .line 1655
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, ".JPG"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, ".GIF"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, ".BMP"

    .line 1656
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, ".JPEG"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1661
    :cond_5
    const/4 v10, 0x0

    .line 1663
    .local v10, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1664
    .local v12, "myURL":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 1665
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v18, 0x7d0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1666
    const/16 v18, 0x7d0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1667
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 1668
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1671
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    .line 1672
    .local v7, "fileSize":I
    if-lez v7, :cond_3

    .line 1676
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 1677
    if-nez v10, :cond_6

    .line 1678
    const-string v18, "WGET DOWN NULL"

    invoke-static/range {v18 .. v18}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1699
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "fileSize":I
    .end local v12    # "myURL":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 1700
    .local v5, "e":Ljava/net/MalformedURLException;
    const-string v18, "WGET DOWN NULL"

    invoke-static/range {v18 .. v18}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1703
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :goto_3
    const-string v18, "WGET 1"

    invoke-static/range {v18 .. v18}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1682
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "fileSize":I
    .restart local v12    # "myURL":Ljava/net/URL;
    :cond_6
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1684
    .local v17, "savePathString":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1687
    .local v11, "myTempFile":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1689
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v2, v0, [B

    .line 1691
    .local v2, "buf":[B
    :goto_4
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 1692
    .local v13, "numread":I
    if-gtz v13, :cond_7

    .line 1693
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 1694
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    .line 1697
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v2, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static donwFileSswwtv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "save"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1539
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "str:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " !save:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1540
    const-string v16, ""

    .line 1541
    .local v16, "save2":Ljava/lang/String;
    const-string v19, "file://"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1542
    const/16 v19, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1547
    :goto_0
    const-string v19, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1548
    .local v14, "pasts":[Ljava/lang/String;
    const-string v6, ""

    .line 1549
    .local v6, "fileName":Ljava/lang/String;
    const-string v15, ""

    .line 1551
    .local v15, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v9, v0, :cond_1

    .line 1552
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v14, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1551
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1544
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "pasts":[Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    :cond_0
    move-object/from16 v16, p1

    goto :goto_0

    .line 1555
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v14    # "pasts":[Ljava/lang/String;
    .restart local v15    # "path":Ljava/lang/String;
    :cond_1
    array-length v0, v14

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v6, v14, v19

    .line 1557
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "path:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#fileName:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1559
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v4, "destDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1561
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1564
    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "str:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1567
    const/4 v10, 0x0

    .line 1569
    .local v10, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1570
    .local v12, "myURL":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 1571
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const v19, 0x2bf20

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1572
    const v19, 0x2bf20

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1573
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 1574
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 1615
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "myURL":Ljava/net/URL;
    :cond_3
    :goto_2
    return-void

    .line 1577
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "myURL":Ljava/net/URL;
    :cond_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    .line 1578
    .local v7, "fileSize":I
    if-lez v7, :cond_3

    .line 1582
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "donwFileSswwtv filesize = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 1584
    if-nez v10, :cond_5

    .line 1585
    const-string v19, "WGET DOWN NULL"

    invoke-static/range {v19 .. v19}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1609
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "fileSize":I
    .end local v12    # "myURL":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 1610
    .local v5, "e":Ljava/net/MalformedURLException;
    const-string v19, "WGET DOWN NULL"

    invoke-static/range {v19 .. v19}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1613
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :goto_3
    const-string v19, "WGET 1"

    invoke-static/range {v19 .. v19}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_2

    .line 1589
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "fileSize":I
    .restart local v12    # "myURL":Ljava/net/URL;
    :cond_5
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1591
    .local v17, "savePathString":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1594
    .local v11, "myTempFile":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1596
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v2, v0, [B

    .line 1597
    .local v2, "buf":[B
    const/16 v18, 0x0

    .line 1599
    .local v18, "total":I
    :goto_4
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 1600
    .local v13, "numread":I
    if-gtz v13, :cond_6

    move/from16 v0, v18

    if-gt v7, v0, :cond_6

    .line 1601
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 1602
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    .line 1605
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v2, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1606
    add-int v18, v18, v13

    .line 1607
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "donwFileSswwtv total = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "httpurl"    # Ljava/lang/String;
    .param p1, "brk"    # Z

    .prologue
    .line 3744
    const-string v8, "x---"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    const/4 v2, 0x0

    .line 3747
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 3748
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 3749
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3750
    .local v4, "in":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3751
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 3753
    .local v7, "strBuffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 3754
    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 3759
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3760
    .local v6, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3761
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3763
    :cond_0
    if-eqz v4, :cond_1

    .line 3765
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3778
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    return-object v6

    .line 3757
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3771
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "strBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 3772
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 3774
    if-eqz p1, :cond_3

    .line 3775
    const/16 v8, 0x4e20

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3778
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 3766
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "strBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v3

    .line 3767
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static exit_app()V
    .locals 2

    .prologue
    .line 3597
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huanqiu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3598
    invoke-static {}, Lcom/gemini/custom/huanqiu;->s2()V

    .line 3601
    :cond_0
    sget v0, Lcom/gemini/play/MGplayer;->start_tvbus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3602
    sget-object v0, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    if-eqz v0, :cond_1

    .line 3603
    sget-object v0, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    invoke-virtual {v0}, Lcom/tvbus/engine/TvbusApi;->stopTvBusService()V

    .line 3607
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 3608
    return-void
.end method

.method public static fe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "p"    # Ljava/lang/String;
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    .line 2239
    sget-object v0, Lcom/gemini/play/MGplayer;->mf:Lcom/gemini/play/gf;

    invoke-virtual {v0, p0, p1}, Lcom/gemini/play/gf;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    return-void
.end method

.method public static ff0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2119
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->ff0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ff1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2123
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->ff1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ff2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2127
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->ff2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fileIsExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1487
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1489
    :cond_0
    const/4 v1, 0x0

    .line 1491
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static file_md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1529
    const/4 v1, 0x0

    .line 1531
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->getMd5ByFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1536
    :goto_0
    return-object v1

    .line 1532
    :catch_0
    move-exception v0

    .line 1534
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static forcetv(I)V
    .locals 2
    .param p0, "cache"    # I

    .prologue
    .line 2072
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jingjimudev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2073
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->forcetvcache(I)V

    .line 2074
    :cond_0
    return-void
.end method

.method public static fromDateStringToLong(Ljava/lang/String;)J
    .locals 6
    .param p0, "inVal"    # Ljava/lang/String;

    .prologue
    .line 2448
    const/4 v0, 0x0

    .line 2449
    .local v0, "date":Ljava/util/Date;
    const/4 v3, 0x0

    .line 2451
    .local v3, "timeZone":Ljava/util/TimeZone;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2452
    .local v2, "inputFormat":Ljava/text/SimpleDateFormat;
    sget-object v4, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2453
    sget-object v4, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2454
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2457
    :cond_0
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2461
    :goto_0
    if-nez v0, :cond_1

    .line 2462
    const-wide/16 v4, -0x1

    .line 2464
    :goto_1
    return-wide v4

    .line 2458
    :catch_0
    move-exception v1

    .line 2459
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2464
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_1
.end method

.method public static fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 3125
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 3126
    .local v0, "currentTime":Ljava/util/Date;
    const/4 v2, 0x0

    .line 3127
    .local v2, "timeZone":Ljava/util/TimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3128
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    sget-object v3, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3129
    sget-object v3, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 3130
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3132
    :cond_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static fromLongToYearString(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 2468
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 2469
    .local v0, "currentTime":Ljava/util/Date;
    const/4 v2, 0x0

    .line 2470
    .local v2, "timeZone":Ljava/util/TimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2471
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    sget-object v3, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2472
    sget-object v3, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 2473
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2476
    :cond_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static fs(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p0, "p"    # Ljava/lang/String;
    .param p1, "pu"    # I
    .param p2, "pt"    # I
    .param p3, "m"    # Ljava/lang/String;

    .prologue
    .line 2235
    sget-object v0, Lcom/gemini/play/MGplayer;->mf:Lcom/gemini/play/gf;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gemini/play/gf;->start(Ljava/lang/String;IILjava/lang/String;)V

    .line 2236
    return-void
.end method

.method public static fu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2243
    sget-object v0, Lcom/gemini/play/MGplayer;->mf:Lcom/gemini/play/gf;

    invoke-virtual {v0}, Lcom/gemini/play/gf;->url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuId_Hi3716()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2484
    const/4 v0, 0x0

    .line 2486
    .local v0, "customerId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "getprop"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 2487
    .local v4, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2488
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 2489
    .local v3, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2490
    const-string v5, "[dev.boxid]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2491
    invoke-static {v3}, Lcom/gemini/play/StringUtil;->getAfterColon(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2501
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 2502
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2505
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method

.method public static getCpuId_HiK3V2()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2509
    const/4 v0, 0x0

    .line 2511
    .local v0, "customerId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "getprop"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 2512
    .local v4, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2513
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 2514
    .local v3, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2515
    const-string v5, "[persist.sys.instructions.id]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2516
    invoke-static {v3}, Lcom/gemini/play/StringUtil;->getAfterColon(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2519
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 2520
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2523
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method

.method public static getCpuName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 2564
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 2565
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2641
    .local v3, "fr":Ljava/io/FileReader;
    :goto_0
    return-object v8

    .line 2568
    .end local v3    # "fr":Ljava/io/FileReader;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v3, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2569
    .restart local v3    # "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2570
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v6, ""

    .line 2571
    .local v6, "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 2573
    const-string v8, "8726"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "AMLOGIC"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2574
    const-string v8, "AML8726"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2575
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto :goto_0

    .line 2576
    :cond_2
    const-string v8, "godbox"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2577
    const-string v8, "HI3716M"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2578
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto :goto_0

    .line 2579
    :cond_3
    const-string v8, "bigfish"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2580
    const-string v8, "HIK3V2"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2581
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto :goto_0

    .line 2582
    :cond_4
    const-string v8, "MT8580"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2583
    const-string v8, "MT8580"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2584
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto :goto_0

    .line 2585
    :cond_5
    const-string v8, "Meson8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2586
    const-string v8, "S805"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2587
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto :goto_0

    .line 2588
    :cond_6
    const-string v8, "Rockchip"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "RK3128"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2589
    const-string v8, "RK3128"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2590
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto :goto_0

    .line 2591
    :cond_7
    const-string v8, "sun7i"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2592
    const-string v8, "A20"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2593
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto/16 :goto_0

    .line 2594
    :cond_8
    const-string v8, "sun6i"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2595
    const-string v8, "A31"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2596
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto/16 :goto_0

    .line 2597
    :cond_9
    const-string v8, "sun8i"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2598
    const-string v8, "AWH3"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2599
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto/16 :goto_0

    .line 2600
    :cond_a
    const-string v8, "Rockchip"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "RK3229"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2601
    const-string v8, "RK3229"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2602
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto/16 :goto_0

    .line 2603
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "rockchip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "rk3368"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2604
    const-string v8, "RK3368"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2605
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto/16 :goto_0

    .line 2606
    :cond_c
    const-string v8, "Amlogic"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2607
    new-instance v4, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2608
    .local v4, "fr2":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2609
    .local v1, "br2":Ljava/io/BufferedReader;
    const-string v7, ""

    .line 2610
    .local v7, "text2":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2611
    .local v5, "processor":I
    :cond_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 2612
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "text2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2613
    const-string v8, "processor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2614
    add-int/lit8 v5, v5, 0x1

    .line 2617
    :cond_e
    const-string v8, "aarch64"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "AArch64"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2618
    const-string v8, "AML905x64"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2619
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto/16 :goto_0

    .line 2622
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2623
    const/16 v8, 0x8

    if-lt v5, v8, :cond_10

    .line 2624
    const-string v8, "AML912"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2625
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto/16 :goto_0

    .line 2628
    :cond_10
    const-string v8, "AML905"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2629
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto/16 :goto_0

    .line 2633
    .end local v1    # "br2":Ljava/io/BufferedReader;
    .end local v4    # "fr2":Ljava/io/FileReader;
    .end local v5    # "processor":I
    .end local v7    # "text2":Ljava/lang/String;
    :cond_11
    const-string v8, "OTHER"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2634
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 2635
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2636
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2640
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v8, "OTHER"

    sput-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    .line 2641
    sget-object v8, Lcom/gemini/play/MGplayer;->cpuname_value:Ljava/lang/String;

    goto/16 :goto_0

    .line 2637
    :catch_1
    move-exception v2

    .line 2638
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDecode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3098
    sget-object v1, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v2, "data"

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "decode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3100
    .local v0, "inx":I
    return v0
.end method

.method public static getDensityDpi()I
    .locals 4

    .prologue
    .line 3153
    sget-object v2, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 3154
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3155
    .local v1, "metric":Landroid/util/DisplayMetrics;
    sget-object v2, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3156
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3157
    .local v0, "densityDpi":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "densityDpi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3160
    :goto_0
    return v0

    .end local v0    # "densityDpi":I
    .end local v1    # "metric":Landroid/util/DisplayMetrics;
    :cond_0
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method public static getFontsRate()F
    .locals 9

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 3136
    sget-object v6, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    if-eqz v6, :cond_1

    .line 3137
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3138
    .local v2, "metric":Landroid/util/DisplayMetrics;
    sget-object v6, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3139
    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3140
    .local v1, "densityDpi":I
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 3141
    .local v0, "density":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "densityDpi ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "density="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3142
    sget v6, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit16 v6, v6, 0x140

    int-to-float v6, v6

    div-float v3, v6, v0

    .line 3143
    .local v3, "rate":F
    const/16 v6, 0x1e0

    if-lt v1, v6, :cond_0

    .line 3144
    sget v6, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit16 v6, v6, 0x1e0

    int-to-float v6, v6

    div-float v3, v6, v0

    .line 3146
    :cond_0
    sget-object v6, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v7, "data"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "fontsize"

    const/16 v8, 0x64

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3147
    .local v4, "size":I
    int-to-float v6, v4

    div-float v5, v6, v5

    mul-float/2addr v5, v3

    .line 3149
    :cond_1
    return v5
.end method

.method public static getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 3165
    sget-object v0, Lcom/gemini/play/MGplayer;->typeface_tmp:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 3166
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MGplayer;->typeface_tmp:Landroid/graphics/Typeface;

    .line 3168
    :cond_0
    sget-object v0, Lcom/gemini/play/MGplayer;->typeface_tmp:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2987
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Lcom/gemini/play/MGplayer;->getHttpBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeout"    # I

    .prologue
    const/4 v7, 0x0

    .line 2993
    const/4 v0, 0x0

    .line 2995
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2996
    .local v5, "myFileURL":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 2997
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2998
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2999
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 3000
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 3001
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 3002
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 3003
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 3004
    const-string v8, "getHttpBitmap is null"

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3020
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "myFileURL":Ljava/net/URL;
    :goto_0
    return-object v7

    .line 3008
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "myFileURL":Ljava/net/URL;
    :cond_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3009
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3010
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->inputStream2ByteArr(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 3011
    .local v2, "data":[B
    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v8, v9, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3012
    const/4 v8, 0x3

    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3013
    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3014
    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v8, v9, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3015
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 3017
    goto :goto_0

    .line 3018
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "data":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "myFileURL":Ljava/net/URL;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 3019
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "lan":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLanguage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLibPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "th"    # Landroid/content/Context;

    .prologue
    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/gemini/play/ContextUtils;->getDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "librarypath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 576
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 577
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 578
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 580
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 598
    :goto_0
    return-object v2

    .line 583
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/gemini/play/ContextUtils;->getDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 586
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 587
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 588
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 590
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v1

    .line 591
    goto :goto_0

    .line 593
    :cond_5
    invoke-static {}, Lcom/gemini/play/MGplayer;->getSDPath()Ljava/lang/String;

    move-result-object v1

    .line 594
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v1

    .line 596
    goto :goto_0

    .line 598
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 3950
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3951
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 3952
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3953
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 3954
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3955
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 3962
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 3959
    :catch_0
    move-exception v2

    .line 3960
    .local v2, "ex":Ljava/net/SocketException;
    const-string v5, "getLocalIpAddress"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getLocalKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 3973
    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v1

    .line 3974
    .local v1, "port":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://127.0.0.1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/api?func=get_local_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3975
    .local v2, "xml":Ljava/lang/String;
    const-string v3, "localkey val="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3976
    .local v0, "b":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3978
    aget-object v3, v0, v5

    const/4 v4, 0x0

    aget-object v5, v0, v5

    const-string v6, "/>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gemini/play/MGplayer;->LocalKeyID:Ljava/lang/String;

    .line 3981
    :cond_0
    sget-object v3, Lcom/gemini/play/MGplayer;->LocalKeyID:Ljava/lang/String;

    return-object v3
.end method

.method public static getLocalMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1475
    sget-object v2, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1476
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1477
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMd5ByFile(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1503
    const/4 v11, 0x0

    .line 1504
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1505
    const-string v0, ""

    .line 1525
    :goto_0
    return-object v0

    .line 1507
    :cond_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1509
    .local v9, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    .line 1510
    .local v7, "byteBuffer":Ljava/nio/MappedByteBuffer;
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 1511
    .local v10, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v10, v7}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 1512
    new-instance v6, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v6, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1513
    .local v6, "bi":Ljava/math/BigInteger;
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 1517
    if-eqz v9, :cond_1

    .line 1519
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v6    # "bi":Ljava/math/BigInteger;
    .end local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v10    # "md5":Ljava/security/MessageDigest;
    :cond_1
    :goto_1
    move-object v0, v11

    .line 1525
    goto :goto_0

    .line 1520
    .restart local v6    # "bi":Ljava/math/BigInteger;
    .restart local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .restart local v10    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v8

    .line 1521
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1514
    .end local v6    # "bi":Ljava/math/BigInteger;
    .end local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "md5":Ljava/security/MessageDigest;
    :catch_1
    move-exception v8

    .line 1515
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1517
    if-eqz v9, :cond_1

    .line 1519
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1520
    :catch_2
    move-exception v8

    .line 1521
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1517
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 1519
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1522
    :cond_2
    :goto_2
    throw v0

    .line 1520
    :catch_3
    move-exception v8

    .line 1521
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static getPackName2()Ljava/lang/String;
    .locals 6

    .prologue
    .line 537
    const-string v2, "com.gemini.iptv"

    .line 539
    .local v2, "packageNames":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 540
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 541
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPreDecode()I
    .locals 4

    .prologue
    .line 3110
    sget-object v1, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "predecode"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3111
    .local v0, "inx":I
    return v0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "sdDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 552
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_0

    .line 553
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 555
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getSign(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 673
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 674
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 675
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 676
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 677
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 678
    .local v3, "packageinfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 679
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPackName2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 680
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    .line 683
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getSingInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 688
    :try_start_0
    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/gemini/play/MGplayer;->getPackName2()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 689
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 690
    .local v3, "signs":[Landroid/content/pm/Signature;
    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 691
    .local v2, "sign":Landroid/content/pm/Signature;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "huanqiu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 692
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->parseSignature([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 698
    .end local v2    # "sign":Landroid/content/pm/Signature;
    .end local v3    # "signs":[Landroid/content/pm/Signature;
    :goto_0
    return-object v4

    .line 693
    .restart local v2    # "sign":Landroid/content/pm/Signature;
    .restart local v3    # "signs":[Landroid/content/pm/Signature;
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->parseSignature([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 694
    .end local v2    # "sign":Landroid/content/pm/Signature;
    .end local v3    # "signs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 698
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getSofeVersion()I
    .locals 8

    .prologue
    .line 3417
    :try_start_0
    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3418
    .local v2, "manager":Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3419
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 3420
    .local v3, "version":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "versionName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3421
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 3424
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "version":Ljava/lang/String;
    :goto_0
    return v4

    .line 3422
    :catch_0
    move-exception v0

    .line 3423
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3424
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getSystemID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3969
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3968
    return-object v0
.end method

.method public static getTimeZone()V
    .locals 1

    .prologue
    .line 3121
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 3122
    .local v0, "tz":Ljava/util/TimeZone;
    return-void
.end method

.method public static getUidRxBytes()J
    .locals 16

    .prologue
    const-wide/16 v14, 0x400

    const-wide/16 v12, -0x1

    const-wide/16 v8, 0x0

    .line 3173
    sget-object v5, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3174
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 3176
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    sget-object v5, Lcom/gemini/play/MGplayer;->packname:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3182
    :goto_0
    sget-wide v6, Lcom/gemini/play/MGplayer;->old_RxByte:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    .line 3183
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-nez v5, :cond_1

    move-wide v6, v8

    :goto_1
    sput-wide v6, Lcom/gemini/play/MGplayer;->old_RxByte:J

    .line 3190
    :cond_0
    :goto_2
    return-wide v8

    .line 3177
    :catch_0
    move-exception v3

    .line 3179
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3183
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    div-long/2addr v6, v14

    goto :goto_1

    .line 3185
    :cond_2
    if-eqz v2, :cond_0

    .line 3186
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-nez v5, :cond_3

    move-wide v0, v8

    .line 3187
    .local v0, "RxByte":J
    :goto_3
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-nez v5, :cond_4

    :goto_4
    sput-wide v8, Lcom/gemini/play/MGplayer;->old_RxByte:J

    move-wide v8, v0

    .line 3188
    goto :goto_2

    .line 3186
    .end local v0    # "RxByte":J
    :cond_3
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    div-long/2addr v6, v14

    sget-wide v10, Lcom/gemini/play/MGplayer;->old_RxByte:J

    sub-long v0, v6, v10

    goto :goto_3

    .line 3187
    .restart local v0    # "RxByte":J
    :cond_4
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    div-long v8, v6, v14

    goto :goto_4
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 1298
    sget v0, Lcom/gemini/play/MGplayer;->current_version:I

    return v0
.end method

.method public static getWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p0, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 1449
    sput-object p0, Lcom/gemini/play/MGplayer;->mWebView:Landroid/webkit/WebView;

    .line 1450
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->gl()V

    .line 1451
    return-void
.end method

.method public static get_ip(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3581
    const/4 v0, 0x0

    .line 3583
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3588
    :goto_0
    if-eqz v0, :cond_0

    .line 3589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3590
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3592
    :goto_1
    return-object v2

    .line 3584
    :catch_0
    move-exception v1

    .line 3586
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 3592
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static get_key_value()Ljava/lang/String;
    .locals 10

    .prologue
    .line 3679
    const-string v1, ""

    .line 3680
    .local v1, "key_value":Ljava/lang/String;
    sget-wide v2, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/32 v4, 0x55d4a800

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 3681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gemini#time#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#time&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#gemini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3682
    .local v0, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/MGplayer;->current_version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3686
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2081
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->getg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getinfo2index(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "param1"    # Ljava/lang/String;
    .param p1, "param2"    # Ljava/lang/String;

    .prologue
    .line 2131
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0, p1}, Lcom/gemini/play/gcustom;->getinfo2index(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gl()V
    .locals 1

    .prologue
    .line 1467
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->gl()V

    .line 1468
    return-void
.end method

.method public static gp2ppthreadnum(III)V
    .locals 1
    .param p0, "all"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2223
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/gemini/play/gplayer;->gp2ppthreadnum(III)V

    .line 2224
    return-void
.end method

.method public static gu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->gu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hlsplugin()I
    .locals 1

    .prologue
    .line 2147
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->hlsplugin()I

    move-result v0

    return v0
.end method

.method public static httpdinit()V
    .locals 1

    .prologue
    .line 2179
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0}, Lcom/gemini/play/gplayer;->httpdinit()V

    .line 2180
    return-void
.end method

.method public static httpdpath(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 2183
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gplayer;->httpdpath(Ljava/lang/String;)V

    .line 2184
    return-void
.end method

.method private static init_epg()V
    .locals 7

    .prologue
    .line 649
    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v5, "data"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 650
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v4, "epglist"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 654
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "epgs":[Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_0

    .line 656
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 657
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .end local v1    # "ii":I
    :cond_0
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 670
    .end local v0    # "epgs":[Ljava/lang/String;
    :cond_1
    return-void

    .line 665
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "thailand"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 666
    const/4 v1, 0x0

    .restart local v1    # "ii":I
    :goto_1
    sget-object v4, Lcom/gemini/custom/thailand;->epgList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 667
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    sget-object v5, Lcom/gemini/custom/thailand;->epgList:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static inputStream2ByteArr(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3026
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3027
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 3028
    .local v0, "buff":[B
    const/4 v1, 0x0

    .line 3029
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 3030
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 3032
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 3033
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3034
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static isAmlogic()Z
    .locals 5

    .prologue
    .line 2548
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2549
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2550
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 2551
    .local v3, "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2552
    const-string v4, "Amlogic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 2553
    const/4 v4, 0x1

    .line 2560
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "text":Ljava/lang/String;
    :goto_0
    return v4

    .line 2555
    :catch_0
    move-exception v1

    .line 2556
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2560
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2557
    :catch_1
    move-exception v1

    .line 2558
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isApkInDebug(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3703
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3704
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3706
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 3705
    :catch_0
    move-exception v0

    .line 3706
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isMobile(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3926
    const-string v2, "connectivity"

    .line 3927
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3928
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3929
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 3930
    const/4 v2, 0x1

    .line 3932
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3897
    const-string v3, "connectivity"

    .line 3898
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3899
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 3910
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 3901
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3902
    .local v2, "networkInfo":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 3903
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3904
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 3905
    const/4 v3, 0x1

    goto :goto_0

    .line 3903
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2972
    if-nez p0, :cond_1

    .line 2983
    :cond_0
    :goto_0
    return v1

    .line 2975
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2978
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2979
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2978
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2983
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isWiFi(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 3915
    const-string v3, "connectivity"

    .line 3916
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3917
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3918
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 3921
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static j1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2044
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->j1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j1no(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2060
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->j1no(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2048
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2052
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0, p1}, Lcom/gemini/play/gcustom;->j3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j2no(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2056
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->j2no(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ju(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2064
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static key(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1471
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static load_forcetv(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 18
    .param p0, "th"    # Landroid/app/Activity;
    .param p1, "sofile"    # Ljava/lang/String;

    .prologue
    .line 739
    const-string v14, "data"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "libforcetv_version"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 740
    .local v10, "libforcetv_version":Ljava/lang/String;
    const-string v14, "0"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 741
    const/4 v14, 0x0

    .line 793
    :goto_0
    return v14

    .line 744
    :cond_0
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".so"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 745
    .local v11, "localPath":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BandingLib localPath:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 746
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    .local v8, "inFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 748
    const/4 v14, 0x0

    goto :goto_0

    .line 750
    :cond_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 751
    .local v6, "fis":Ljava/io/FileInputStream;
    const-string v14, "libs"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 752
    .local v4, "dir":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".so"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v4, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 753
    .local v13, "soFile":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "soFile dir:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 754
    new-instance v12, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .local v12, "soDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_2

    .line 757
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 760
    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    .line 761
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "### "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not exists"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 762
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 763
    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileOutputStream:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",tokens:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".so"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 765
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 766
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x400

    new-array v3, v14, [B

    .line 767
    .local v3, "buffer":[B
    const/4 v9, -0x1

    .line 768
    .local v9, "len":I
    :goto_1
    invoke-virtual {v6, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v14, -0x1

    if-eq v9, v14, :cond_3

    .line 769
    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 787
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "inFile":Ljava/io/File;
    .end local v9    # "len":I
    .end local v11    # "localPath":Ljava/lang/String;
    .end local v12    # "soDir":Ljava/io/File;
    .end local v13    # "soFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 788
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 772
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "inFile":Ljava/io/File;
    .restart local v9    # "len":I
    .restart local v11    # "localPath":Ljava/lang/String;
    .restart local v12    # "soDir":Ljava/io/File;
    .restart local v13    # "soFile":Ljava/io/File;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 774
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 775
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 777
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "len":I
    :cond_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 779
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 780
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "soFile "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 786
    const-string v14, "### System.load End"

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_2

    .line 783
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "soFile "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " no exists"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 784
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static mediaplayercache()I
    .locals 1

    .prologue
    .line 2231
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0}, Lcom/gemini/play/gplayer;->mediaplayercache()I

    move-result v0

    return v0
.end method

.method public static mediaplayerexit()V
    .locals 1

    .prologue
    .line 2203
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0}, Lcom/gemini/play/gplayer;->mediaplayerexit()V

    .line 2204
    return-void
.end method

.method public static mediaplayerheadertype(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 2191
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gplayer;->mediaplayerheadertype(I)V

    .line 2192
    return-void
.end method

.method public static mediaplayerinit()V
    .locals 1

    .prologue
    .line 2163
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0}, Lcom/gemini/play/gplayer;->mediaplayerinit()V

    .line 2164
    return-void
.end method

.method public static mediaplayerload(Ljava/lang/String;I)I
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "retry"    # I

    .prologue
    const/4 v1, 0x0

    .line 2195
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/gemini/play/gplayer;->mediaplayerload(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static mediaplayerload(Ljava/lang/String;III)I
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "retry"    # I
    .param p2, "ffmpeg"    # I
    .param p3, "seek"    # I

    .prologue
    .line 2175
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gemini/play/gplayer;->mediaplayerload(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static mediaplayerreopen()I
    .locals 1

    .prologue
    .line 2167
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0}, Lcom/gemini/play/gplayer;->mediaplayerreopen()I

    move-result v0

    return v0
.end method

.method public static mediaplayerstatue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2187
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gplayer;->mediaplayerstatue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mediaplayerstop(I)V
    .locals 1
    .param p0, "play"    # I

    .prologue
    .line 2207
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gplayer;->mediaplayerstop(I)V

    .line 2208
    return-void
.end method

.method public static mediaplayerunload()V
    .locals 1

    .prologue
    .line 2199
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0}, Lcom/gemini/play/gplayer;->mediaplayerunload()V

    .line 2200
    return-void
.end method

.method public static mediaplayerurl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2219
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0, p0, p1}, Lcom/gemini/play/gplayer;->mediaplayerurl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mediaplayervodheader(I)V
    .locals 1
    .param p0, "vod"    # I

    .prologue
    .line 2227
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gplayer;->mediaplayervodheader(I)V

    .line 2228
    return-void
.end method

.method public static mediareceivecount()I
    .locals 1

    .prologue
    .line 2211
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0}, Lcom/gemini/play/gplayer;->mediareceivecount()I

    move-result v0

    return v0
.end method

.method public static networkActivity()V
    .locals 3

    .prologue
    .line 2480
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2481
    return-void
.end method

.method public static openActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .param p0, "v1"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1443
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1444
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1446
    return-void
.end method

.method private static parseSignature([B)Ljava/lang/String;
    .locals 7
    .param p0, "signature"    # [B

    .prologue
    .line 703
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 704
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 705
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "pubKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, "signNumber":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "signName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pubKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 709
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "signNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 710
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subjectDN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "pubKey":Ljava/lang/String;
    .end local v4    # "signNumber":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 712
    :catch_0
    move-exception v2

    .line 713
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 715
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static percen()I
    .locals 1

    .prologue
    .line 2171
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0}, Lcom/gemini/play/gplayer;->percen()I

    move-result v0

    return v0
.end method

.method public static playlistkey(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 2155
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->playlistkey(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static port()I
    .locals 1

    .prologue
    .line 2139
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->port()I

    move-result v0

    return v0
.end method

.method private static readReverse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 494
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 495
    .local v5, "in":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 497
    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 498
    .local v1, "ch":I
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 499
    .local v0, "cbuf":[B
    :cond_0
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v2, v0, v10, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_1

    .line 500
    new-instance v7, Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-direct {v7, v0, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 501
    .local v7, "s":Ljava/lang/String;
    const-string v10, "147538240"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "313353798"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 502
    const-string v10, "147538240"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 503
    .local v8, "start":I
    const-string v10, "313353798"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 504
    .local v4, "end":I
    add-int/lit8 v10, v8, 0x9

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "k":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readReverse k = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 518
    .end local v0    # "cbuf":[B
    .end local v1    # "ch":I
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "end":I
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "k":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "start":I
    :goto_0
    return-object v6

    .restart local v0    # "cbuf":[B
    .restart local v1    # "ch":I
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :cond_1
    move-object v6, v9

    .line 509
    goto :goto_0

    .line 510
    .end local v0    # "cbuf":[B
    .end local v1    # "ch":I
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 512
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    move-object v6, v9

    .line 518
    goto :goto_0

    .line 513
    :catch_1
    move-exception v3

    .line 515
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static readSD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2752
    const-string v0, "sysinfo.dat"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->readSD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readSD(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 2790
    sget-object v10, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v11, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v10, v11}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 2791
    .local v5, "permission":I
    if-eqz v5, :cond_0

    .line 2793
    sget-object v10, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    sget-object v11, Lcom/gemini/play/MGplayer;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 2796
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2797
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v7, v9

    .line 2824
    :goto_0
    return-object v7

    .line 2800
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 2801
    .local v4, "path":Ljava/lang/String;
    const-string v8, ""

    .line 2803
    .local v8, "val":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2804
    .local v3, "fileIS":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2805
    .local v0, "buf":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 2806
    .local v6, "readString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2807
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 2809
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2810
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 readSD val = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2811
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_3

    .line 2812
    invoke-static {v8}, Lcom/gemini/play/MGplayer;->j2no(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2813
    .local v7, "v":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "2 readSD val = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2818
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "fileIS":Ljava/io/FileInputStream;
    .end local v6    # "readString":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2819
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    move-object v7, v9

    .line 2824
    goto :goto_0

    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "fileIS":Ljava/io/FileInputStream;
    .restart local v6    # "readString":Ljava/lang/String;
    :cond_3
    move-object v7, v9

    .line 2817
    goto :goto_0

    .line 2820
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "fileIS":Ljava/io/FileInputStream;
    .end local v6    # "readString":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2821
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 3077
    if-nez p0, :cond_0

    .line 3078
    const/4 v9, 0x0

    .line 3094
    :goto_0
    return-object v9

    .line 3080
    :cond_0
    move-object v0, p0

    .line 3081
    .local v0, "BitmapOrg":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 3082
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 3083
    .local v4, "height":I
    move v8, p1

    .line 3084
    .local v8, "newWidth":I
    move v7, p2

    .line 3086
    .local v7, "newHeight":I
    int-to-float v2, v8

    int-to-float v6, v3

    div-float v11, v2, v6

    .line 3087
    .local v11, "scaleWidth":F
    int-to-float v2, v7

    int-to-float v6, v4

    div-float v10, v2, v6

    .line 3089
    .local v10, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3090
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3092
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3094
    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static restart(Landroid/app/Activity;)V
    .locals 3
    .param p0, "t"    # Landroid/app/Activity;

    .prologue
    .line 3936
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3937
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3938
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3939
    return-void
.end method

.method public static runLogcat(Landroid/content/Context;)V
    .locals 2
    .param p0, "t"    # Landroid/content/Context;

    .prologue
    .line 1338
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gemini/play/MGplayer$2;

    invoke-direct {v1}, Lcom/gemini/play/MGplayer$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1359
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1360
    return-void
.end method

.method public static runTime()V
    .locals 10

    .prologue
    .line 2369
    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 2370
    sget-object v6, Lcom/gemini/play/MGplayer;->now_second:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 2371
    const/4 v0, 0x0

    .line 2372
    .local v0, "date":Ljava/util/Date;
    const/4 v5, 0x0

    .line 2374
    .local v5, "timeZone":Ljava/util/TimeZone;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2375
    .local v2, "inputFormat":Ljava/text/SimpleDateFormat;
    const-string v6, "GMT-0"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 2376
    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2378
    :try_start_0
    sget-object v6, Lcom/gemini/play/MGplayer;->now_second:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2382
    :goto_0
    if-nez v0, :cond_0

    .line 2383
    const-wide/16 v6, -0x1

    sput-wide v6, Lcom/gemini/play/MGplayer;->seconds:J

    .line 2385
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sput-wide v6, Lcom/gemini/play/MGplayer;->seconds:J

    .line 2389
    :cond_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 2390
    .local v3, "timeHander":Landroid/os/Handler;
    new-instance v4, Lcom/gemini/play/MGplayer$7;

    invoke-direct {v4, v3}, Lcom/gemini/play/MGplayer$7;-><init>(Landroid/os/Handler;)V

    .line 2396
    .local v4, "timeRunnable":Ljava/lang/Runnable;
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2397
    return-void

    .line 2379
    .end local v3    # "timeHander":Landroid/os/Handler;
    .end local v4    # "timeRunnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    .line 2380
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static runTimePRC()V
    .locals 10

    .prologue
    .line 2400
    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 2401
    sget-object v6, Lcom/gemini/play/MGplayer;->now_second_prc:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2403
    const/4 v0, 0x0

    .line 2404
    .local v0, "date":Ljava/util/Date;
    const/4 v5, 0x0

    .line 2406
    .local v5, "timeZone":Ljava/util/TimeZone;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2407
    .local v2, "inputFormat":Ljava/text/SimpleDateFormat;
    sget-object v6, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 2408
    sget-object v6, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 2409
    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2412
    :cond_0
    :try_start_0
    sget-object v6, Lcom/gemini/play/MGplayer;->now_second_prc:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2416
    :goto_0
    if-nez v0, :cond_1

    .line 2417
    const-wide/16 v6, -0x1

    sput-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    .line 2419
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sput-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    .line 2423
    :cond_2
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 2424
    .local v3, "timeHander":Landroid/os/Handler;
    new-instance v4, Lcom/gemini/play/MGplayer$8;

    invoke-direct {v4, v3}, Lcom/gemini/play/MGplayer$8;-><init>(Landroid/os/Handler;)V

    .line 2443
    .local v4, "timeRunnable":Ljava/lang/Runnable;
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2444
    return-void

    .line 2413
    .end local v3    # "timeHander":Landroid/os/Handler;
    .end local v4    # "timeRunnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    .line 2414
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "param0"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # I

    .prologue
    .line 2085
    invoke-static {}, Lcom/gemini/play/MGplayer;->deleteForcetvFiles()V

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p2p:s0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2087
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gemini/play/gcustom;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "param0"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;
    .param p4, "param4"    # I

    .prologue
    .line 2091
    invoke-static {}, Lcom/gemini/play/MGplayer;->deleteForcetvFiles()V

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p2p:s1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2093
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gemini/play/gcustom;->s1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "param0"    # Ljava/lang/String;

    .prologue
    .line 2097
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->s2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s4(Ljava/lang/String;)V
    .locals 1
    .param p0, "param0"    # Ljava/lang/String;

    .prologue
    .line 2101
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->s4(Ljava/lang/String;)Ljava/lang/String;

    .line 2102
    return-void
.end method

.method public static s5()V
    .locals 1

    .prologue
    .line 2105
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->s5()Ljava/lang/String;

    .line 2106
    return-void
.end method

.method public static scroll_every_init()V
    .locals 1

    .prologue
    .line 3371
    new-instance v0, Lcom/gemini/play/MGplayer$14;

    invoke-direct {v0}, Lcom/gemini/play/MGplayer$14;-><init>()V

    .line 3411
    invoke-virtual {v0}, Lcom/gemini/play/MGplayer$14;->start()V

    .line 3412
    return-void
.end method

.method public static scroll_every_interface(Lcom/gemini/play/ScrollViewInterface;)V
    .locals 0
    .param p0, "l"    # Lcom/gemini/play/ScrollViewInterface;

    .prologue
    .line 3343
    sput-object p0, Lcom/gemini/play/MGplayer;->scroll_iface:Lcom/gemini/play/ScrollViewInterface;

    .line 3344
    return-void
.end method

.method public static selectlan(I)V
    .locals 1
    .param p0, "select"    # I

    .prologue
    .line 2159
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0, p0}, Lcom/gemini/play/gcustom;->selectlan(I)V

    .line 2160
    return-void
.end method

.method public static sendHttpRequestpercent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "channelId"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 3318
    const/4 v6, 0x0

    .line 3319
    .local v6, "url":Ljava/net/URL;
    const/4 v5, 0x0

    .line 3321
    .local v5, "tempStr":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://127.0.0.1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cmd.xml?cmd=query_chan_p2p_info&id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3322
    .local v8, "urlInfo":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&&&&&&&&&&&&&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "**************"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3323
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3324
    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 3325
    .local v2, "huc":Ljava/net/HttpURLConnection;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 3326
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .end local v2    # "huc":Ljava/net/HttpURLConnection;
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 3327
    .restart local v2    # "huc":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 3328
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3329
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 3330
    .local v3, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3331
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3336
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "huc":Ljava/net/HttpURLConnection;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 3338
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlInfo":Ljava/lang/String;
    .local v1, "e":Ljava/io/IOException;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_1
    const-string v9, ""

    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-object v9

    .line 3333
    .end local v6    # "url":Ljava/net/URL;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "huc":Ljava/net/HttpURLConnection;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "urlInfo":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3334
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&&&&&&&&&&&&&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "**************"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    move-object v9, v5

    .line 3335
    goto :goto_2

    .line 3336
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "huc":Ljava/net/HttpURLConnection;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "urlInfo":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static sendHttpsServerCmd(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .param p2, "cookies"    # Ljava/lang/String;
    .param p3, "UserAgent"    # Ljava/lang/String;

    .prologue
    .line 1991
    const-string v4, ""

    .line 1993
    .local v4, "resultData":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1995
    .local v6, "url":Ljava/net/URL;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    move-object v6, v7

    .line 2000
    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendServerCmd Url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2001
    if-eqz v6, :cond_2

    .line 2003
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    .line 2004
    .local v8, "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v8, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 2005
    invoke-virtual {v8, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 2006
    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2007
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 2008
    const-string v9, "User-agent"

    invoke-virtual {v8, v9, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 2012
    const-string v9, "Cookie"

    invoke-virtual {v8, v9, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2015
    .local v2, "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2016
    .local v0, "buffer":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 2017
    .local v3, "inputLine":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2018
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2010
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    :cond_1
    const-string v9, "User-agent"

    const-string v10, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)"

    invoke-virtual {v8, v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2024
    .end local v8    # "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v1

    .line 2026
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    move-object v5, v4

    .line 2030
    .end local v4    # "resultData":Ljava/lang/String;
    .local v5, "resultData":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 2020
    .end local v5    # "resultData":Ljava/lang/String;
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "inputLine":Ljava/lang/String;
    .restart local v4    # "resultData":Ljava/lang/String;
    .restart local v8    # "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 2021
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 2022
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendServerCmd result :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v4

    .line 2023
    .end local v4    # "resultData":Ljava/lang/String;
    .restart local v5    # "resultData":Ljava/lang/String;
    goto :goto_3

    .line 1996
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    .end local v5    # "resultData":Ljava/lang/String;
    .end local v8    # "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4    # "resultData":Ljava/lang/String;
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method public static sendHttpsServerCookie(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "UserAgent"    # Ljava/lang/String;

    .prologue
    .line 1905
    const/4 v3, 0x0

    .line 1906
    .local v3, "url":Ljava/net/URL;
    const-string v2, ""

    .line 1909
    .local v2, "resultData":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    move-object v3, v4

    .line 1914
    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendServerCmd Url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1915
    if-eqz v3, :cond_2

    .line 1917
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 1918
    .local v5, "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v5, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 1919
    invoke-virtual {v5, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 1920
    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1921
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1922
    const-string v6, "User-agent"

    invoke-virtual {v5, v6, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1927
    const-string v6, "Cookie"

    invoke-virtual {v5, v6, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    :cond_0
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1930
    const-string v6, "set-cookie"

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1932
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v0, p2

    .line 1940
    .end local v5    # "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    .end local p2    # "cookie":Ljava/lang/String;
    .local v0, "cookie":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 1924
    .end local v0    # "cookie":Ljava/lang/String;
    .restart local v5    # "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    .restart local p2    # "cookie":Ljava/lang/String;
    :cond_1
    const-string v6, "User-agent"

    const-string v7, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)"

    invoke-virtual {v5, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1934
    .end local v5    # "urlConn":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v1

    .line 1936
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    move-object v0, p2

    .line 1940
    .end local p2    # "cookie":Ljava/lang/String;
    .restart local v0    # "cookie":Ljava/lang/String;
    goto :goto_2

    .line 1910
    .end local v0    # "cookie":Ljava/lang/String;
    .restart local p2    # "cookie":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static sendPostData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "strUrlPath"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 3783
    const/4 v0, 0x0

    .line 3784
    .local v0, "data":[B
    if-eqz p1, :cond_0

    .line 3785
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3790
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3792
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 3793
    .local v2, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 3794
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 3795
    const-string v5, "POST"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3796
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 3798
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3800
    const-string v5, "Content-Length"

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3802
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 3803
    .local v3, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 3805
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3811
    const-string v5, "-1"

    .end local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 3807
    :catch_0
    move-exception v1

    .line 3809
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static sendServerCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "httpUrl"    # Ljava/lang/String;

    .prologue
    .line 1712
    const/16 v0, 0x1388

    invoke-static {p0, v0}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "timeout"    # I

    .prologue
    const/4 v1, 0x0

    .line 1759
    const/16 v0, 0x1388

    invoke-static {p0, v0, v1, v1}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendServerCmd(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .param p2, "cookies"    # Ljava/lang/String;
    .param p3, "UserAgent"    # Ljava/lang/String;

    .prologue
    .line 1944
    const-string v4, ""

    .line 1946
    .local v4, "resultData":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1948
    .local v6, "url":Ljava/net/URL;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    move-object v6, v7

    .line 1953
    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendServerCmd Url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1954
    if-eqz v6, :cond_2

    .line 1956
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 1957
    .local v8, "urlConn":Ljava/net/HttpURLConnection;
    invoke-virtual {v8, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1958
    invoke-virtual {v8, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1959
    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1960
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 1961
    const-string v9, "User-agent"

    invoke-virtual {v8, v9, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 1969
    const-string v9, "Cookie"

    invoke-virtual {v8, v9, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1972
    .local v2, "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1973
    .local v0, "buffer":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 1974
    .local v3, "inputLine":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1975
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1963
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    :cond_1
    const-string v9, "get_prc.php"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1964
    const-string v9, "User-agent"

    invoke-static {}, Lcom/gemini/play/MGplayer;->gu()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1981
    .end local v8    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 1983
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    move-object v5, v4

    .line 1987
    .end local v4    # "resultData":Ljava/lang/String;
    .local v5, "resultData":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 1966
    .end local v5    # "resultData":Ljava/lang/String;
    .restart local v4    # "resultData":Ljava/lang/String;
    .restart local v8    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_3
    :try_start_2
    const-string v9, "User-agent"

    const-string v10, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)"

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1977
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "inputLine":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 1978
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1979
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendServerCmd result :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v4

    .line 1980
    .end local v4    # "resultData":Ljava/lang/String;
    .restart local v5    # "resultData":Ljava/lang/String;
    goto :goto_3

    .line 1949
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    .end local v5    # "resultData":Ljava/lang/String;
    .end local v8    # "urlConn":Ljava/net/HttpURLConnection;
    .restart local v4    # "resultData":Ljava/lang/String;
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method public static sendServerCmdButter(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 12
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "timeout"    # I

    .prologue
    .line 1716
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1718
    .local v5, "resultData":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 1720
    .local v7, "url":Ljava/net/URL;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v7    # "url":Ljava/net/URL;
    .local v8, "url":Ljava/net/URL;
    move-object v7, v8

    .line 1725
    .end local v8    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendServerCmdButter Url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1726
    if-eqz v7, :cond_0

    .line 1728
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 1729
    .local v9, "urlConn":Ljava/net/HttpURLConnection;
    invoke-virtual {v9, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1730
    invoke-virtual {v9, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1731
    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 1734
    .local v2, "fileSize":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendServerCmdButter fileSize:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1736
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1737
    .local v3, "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1738
    .local v0, "buffer":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1739
    .local v4, "inputLine":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1740
    .local v6, "totallength":I
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1741
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1747
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "fileSize":I
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    .end local v6    # "totallength":I
    .end local v9    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 1749
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1753
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v5

    .line 1743
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v2    # "fileSize":I
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "inputLine":Ljava/lang/String;
    .restart local v6    # "totallength":I
    .restart local v9    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 1744
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1745
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendServerCmdButter result len:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1721
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "fileSize":I
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    .end local v6    # "totallength":I
    .end local v9    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method public static sendServerCmd_https(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2039
    new-instance v0, Lcom/gemini/play/GHttps;

    invoke-direct {v0}, Lcom/gemini/play/GHttps;-><init>()V

    .line 2040
    .local v0, "httpser":Lcom/gemini/play/GHttps;
    const/16 v1, 0x1388

    invoke-virtual {v0, p0, v1}, Lcom/gemini/play/GHttps;->GetHttps(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static sendServerCmd_https(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .param p2, "cookiet"    # Ljava/lang/String;
    .param p3, "useragent"    # Ljava/lang/String;

    .prologue
    .line 2034
    new-instance v0, Lcom/gemini/play/GHttps;

    invoke-direct {v0}, Lcom/gemini/play/GHttps;-><init>()V

    .line 2035
    .local v0, "httpser":Lcom/gemini/play/GHttps;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gemini/play/GHttps;->GetHttps(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static sendServerCookie(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "UserAgent"    # Ljava/lang/String;

    .prologue
    .line 1866
    const/4 v3, 0x0

    .line 1867
    .local v3, "url":Ljava/net/URL;
    const-string v2, ""

    .line 1870
    .local v2, "resultData":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    move-object v3, v4

    .line 1875
    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendServerCmd Url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1876
    if-eqz v3, :cond_2

    .line 1878
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 1879
    .local v5, "urlConn":Ljava/net/HttpURLConnection;
    invoke-virtual {v5, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1880
    invoke-virtual {v5, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1881
    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1882
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1883
    const-string v6, "User-agent"

    invoke-virtual {v5, v6, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1888
    const-string v6, "Cookie"

    invoke-virtual {v5, v6, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    :cond_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1891
    const-string v6, "set-cookie"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1893
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, p2

    .line 1901
    .end local v5    # "urlConn":Ljava/net/HttpURLConnection;
    .end local p2    # "cookie":Ljava/lang/String;
    .local v0, "cookie":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 1885
    .end local v0    # "cookie":Ljava/lang/String;
    .restart local v5    # "urlConn":Ljava/net/HttpURLConnection;
    .restart local p2    # "cookie":Ljava/lang/String;
    :cond_1
    const-string v6, "User-agent"

    const-string v7, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1895
    .end local v5    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 1897
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    move-object v0, p2

    .line 1901
    .end local p2    # "cookie":Ljava/lang/String;
    .restart local v0    # "cookie":Ljava/lang/String;
    goto :goto_2

    .line 1871
    .end local v0    # "cookie":Ljava/lang/String;
    .restart local p2    # "cookie":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static setDecode(I)V
    .locals 4
    .param p0, "decode"    # I

    .prologue
    .line 3104
    sget-object v1, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "decode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3107
    return-void
.end method

.method public static setParam(III)V
    .locals 1
    .param p0, "param0"    # I
    .param p1, "param1"    # I
    .param p2, "param2"    # I

    .prologue
    .line 2215
    sget-object v0, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/gemini/play/gplayer;->setParam(III)V

    .line 2216
    return-void
.end method

.method public static setPreDecode(I)V
    .locals 4
    .param p0, "decode"    # I

    .prologue
    .line 3115
    sget-object v1, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3116
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "predecode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3118
    return-void
.end method

.method public static showUpdateActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 3691
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3692
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/gemini/play/UpdateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3693
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3694
    return-void
.end method

.method public static sleep(I)V
    .locals 4
    .param p0, "ms"    # I

    .prologue
    .line 2965
    int-to-long v2, p0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2969
    :goto_0
    return-void

    .line 2966
    :catch_0
    move-exception v0

    .line 2967
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static string3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2135
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->string3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static submitHttpsPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 10
    .param p0, "strUrlPath"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "useragent"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .param p5, "type"    # I

    .prologue
    const/4 v9, 0x1

    .line 3259
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3263
    .local v0, "data":[B
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3265
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 3266
    .local v2, "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v2, p4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 3267
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 3268
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 3269
    const-string v7, "POST"

    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3270
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 3271
    const-string v7, "Content-Type"

    const-string v8, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v2, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    const-string v7, "Content-Length"

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    const-string v7, "User-Agent"

    invoke-virtual {v2, v7, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3276
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 3277
    const-string v7, "Cookie"

    invoke-virtual {v2, v7, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    :cond_0
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 3280
    .local v4, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 3282
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    .line 3283
    .local v5, "response":I
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 3284
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 3286
    .local v3, "inptStream":Ljava/io/InputStream;
    if-nez p5, :cond_1

    .line 3287
    const-string v7, "set-cookie"

    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3297
    .end local v2    # "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v3    # "inptStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "response":I
    .end local v6    # "url":Ljava/net/URL;
    :goto_0
    return-object v7

    .line 3288
    .restart local v2    # "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v3    # "inptStream":Ljava/io/InputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "response":I
    .restart local v6    # "url":Ljava/net/URL;
    :cond_1
    if-ne p5, v9, :cond_2

    .line 3289
    invoke-static {v3}, Lcom/gemini/play/MGplayer;->dealResponseResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3291
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set-cookie"

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@#@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->dealResponseResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 3293
    .end local v2    # "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v3    # "inptStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "response":I
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 3295
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "err: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3297
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "response":I
    .restart local v6    # "url":Ljava/net/URL;
    :cond_3
    const-string v7, "-1"

    goto :goto_0
.end method

.method public static submitPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "strUrlPath"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "useragent"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .param p5, "type"    # I

    .prologue
    .line 3209
    const-string v5, "application/x-www-form-urlencoded; charset=UTF-8"

    .local v5, "contenttype":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    .line 3210
    invoke-static/range {v0 .. v6}, Lcom/gemini/play/MGplayer;->submitPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static submitPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "strUrlPath"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "useragent"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .param p5, "contenttype"    # Ljava/lang/String;
    .param p6, "type"    # I

    .prologue
    .line 3215
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3219
    .local v0, "data":[B
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3221
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 3222
    .local v2, "httpURLConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2, p4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3223
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 3224
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 3225
    const-string v7, "POST"

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3226
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 3228
    const-string v7, "Content-Type"

    invoke-virtual {v2, v7, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    const-string v7, "Content-Length"

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    const-string v7, "User-Agent"

    invoke-virtual {v2, v7, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 3235
    const-string v7, "Cookie"

    invoke-virtual {v2, v7, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 3238
    .local v4, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 3240
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 3241
    .local v5, "response":I
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 3242
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 3244
    .local v3, "inptStream":Ljava/io/InputStream;
    if-nez p6, :cond_1

    .line 3245
    const-string v7, "set-cookie"

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3255
    .end local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "inptStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "response":I
    .end local v6    # "url":Ljava/net/URL;
    :goto_0
    return-object v7

    .line 3246
    .restart local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "inptStream":Ljava/io/InputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "response":I
    .restart local v6    # "url":Ljava/net/URL;
    :cond_1
    const/4 v7, 0x1

    if-ne p6, v7, :cond_2

    .line 3247
    invoke-static {v3}, Lcom/gemini/play/MGplayer;->dealResponseResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3249
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set-cookie"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@#@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->dealResponseResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 3251
    .end local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "inptStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "response":I
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 3253
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "err: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3255
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "response":I
    .restart local v6    # "url":Ljava/net/URL;
    :cond_3
    const-string v7, "-1"

    goto :goto_0
.end method

.method public static t(Landroid/app/Activity;)I
    .locals 38
    .param p0, "th"    # Landroid/app/Activity;

    .prologue
    .line 799
    const-string v34, "libforcetv"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/gemini/play/MGplayer;->load_forcetv(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_0

    .line 800
    const-string v34, "forcetv"

    invoke-static/range {v34 .. v34}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 801
    const-string v34, "load_forcetv:false"

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 806
    :goto_0
    sput-object p0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    .line 807
    new-instance v34, Lcom/gemini/play/MGplayer;

    invoke-direct/range {v34 .. v34}, Lcom/gemini/play/MGplayer;-><init>()V

    sput-object v34, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    .line 809
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v34, Lcom/gemini/play/MGplayer;->debug:Ljava/lang/StringBuilder;

    .line 811
    sget-object v34, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v35, "data"

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 813
    .local v26, "settings":Landroid/content/SharedPreferences;
    sget-object v34, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->getPackName()Ljava/lang/String;

    move-result-object v34

    sput-object v34, Lcom/gemini/play/MGplayer;->packname:Ljava/lang/String;

    .line 815
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->getLibPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 816
    .local v22, "librarypath":Ljava/lang/String;
    if-nez v22, :cond_1

    .line 818
    const/16 v34, 0x1

    .line 1129
    :goto_1
    return v34

    .line 803
    .end local v22    # "librarypath":Ljava/lang/String;
    .end local v26    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    const-string v34, "load_forcetv:true"

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 821
    .restart local v22    # "librarypath":Ljava/lang/String;
    .restart local v26    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    sget-object v34, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    sget-object v35, Lcom/gemini/play/MGplayer;->packname:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/gcustom;->ds(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    sget-object v34, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v35

    const-string v36, "error"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/gemini/play/gcustom;->t3(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 824
    .local v13, "fn":Ljava/lang/String;
    sget-object v34, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    if-eqz v34, :cond_2

    sget-object v34, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->isApkInDebug(Landroid/content/Context;)Z

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2

    .line 836
    :cond_2
    :try_start_0
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 837
    .local v23, "localPath":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "BandingLib localPath:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 840
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 842
    .local v19, "inFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_3

    .line 844
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " is not fond!"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 846
    const/16 v34, 0x2

    goto/16 :goto_1

    .line 848
    :cond_3
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 850
    .local v12, "fis":Ljava/io/FileInputStream;
    const-string v34, "libs"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 852
    .local v9, "dir":Ljava/io/File;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v0, v9, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 853
    .local v28, "soFile":Ljava/io/File;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "soFile dir:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 854
    new-instance v27, Ljava/io/File;

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 855
    .local v27, "soDir":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->isDirectory()Z

    move-result v34

    if-nez v34, :cond_4

    .line 857
    const/16 v34, 0x3

    goto/16 :goto_1

    .line 860
    :cond_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_13

    .line 861
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "### "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " is not exists"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 862
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 863
    .local v15, "fos":Ljava/io/FileOutputStream;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "FileOutputStream:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ",tokens:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 866
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 867
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v34, 0x400

    move/from16 v0, v34

    new-array v6, v0, [B

    .line 868
    .local v6, "buffer":[B
    const/16 v21, -0x1

    .line 869
    .local v21, "len":I
    :goto_2
    invoke-virtual {v12, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v21

    const/16 v34, -0x1

    move/from16 v0, v21

    move/from16 v1, v34

    if-eq v0, v1, :cond_12

    .line 870
    const/16 v34, 0x0

    move/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v5, v6, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 894
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "buffer":[B
    .end local v9    # "dir":Ljava/io/File;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v19    # "inFile":Ljava/io/File;
    .end local v21    # "len":I
    .end local v23    # "localPath":Ljava/lang/String;
    .end local v27    # "soDir":Ljava/io/File;
    .end local v28    # "soFile":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 895
    .local v11, "e":Ljava/lang/Exception;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Exception "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 900
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_3
    const/16 v29, 0x2

    .line 901
    .local v29, "thread_num":I
    const/16 v31, 0x2

    .line 902
    .local v31, "thread_num_start":I
    const/16 v30, 0x2

    .line 904
    .local v30, "thread_num_end":I
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v7

    .line 906
    .local v7, "cpuinfo":Ljava/lang/String;
    const-string v34, "httpd"

    const-string v35, "0"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 908
    .local v16, "httpd_path":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "httpd_path ="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " getDecode = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "systemID = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {}, Lcom/gemini/play/MGplayer;->getSystemID()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 912
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_5

    const-string v34, "1000"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_15

    .line 921
    :cond_5
    const/16 v34, 0x8

    sput v34, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    .line 922
    const/16 v34, 0x0

    const/16 v35, 0x2

    const/16 v36, 0x1

    invoke-static/range {v34 .. v36}, Lcom/gemini/play/MGplayer;->setParam(III)V

    .line 923
    const/16 v34, 0x0

    sput v34, Lcom/gemini/play/MGplayer;->httpdstart:I

    .line 939
    :goto_4
    sget-object v34, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual/range {v34 .. v34}, Lcom/gemini/play/gcustom;->t()V

    .line 940
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "74839547"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "szntv"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "fszj"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    .line 941
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "spain1"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "smallseven"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "spainglobal"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "spain1cn"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    .line 942
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "p2p1"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "szysx"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "turbotv"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "zdiptv"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    .line 943
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "auditv"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "zuzhuang"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "familytv"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    .line 944
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "vibetv"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "huanqiu"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "andy"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    .line 945
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "pandaiptv"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "meuiptv"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 946
    :cond_6
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->selectlan(I)V

    .line 948
    :cond_7
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 949
    .local v10, "dm":Landroid/util/DisplayMetrics;
    sget-object v34, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 950
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    sput v34, Lcom/gemini/play/MGplayer;->screenWidth:I

    .line 951
    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v34, v0

    sput v34, Lcom/gemini/play/MGplayer;->screenHeight:I

    .line 953
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v35, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/icon/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    sput-object v34, Lcom/gemini/play/MGplayer;->images_icon:Ljava/lang/String;

    .line 954
    new-instance v8, Ljava/io/File;

    sget-object v34, Lcom/gemini/play/MGplayer;->images_icon:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 955
    .local v8, "destDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v34

    if-eqz v34, :cond_17

    .line 956
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 963
    :cond_8
    :goto_5
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v35, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/ad/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    sput-object v34, Lcom/gemini/play/MGplayer;->images_ad:Ljava/lang/String;

    .line 964
    new-instance v4, Ljava/io/File;

    sget-object v34, Lcom/gemini/play/MGplayer;->images_ad:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    .local v4, "adDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v34

    if-eqz v34, :cond_18

    .line 966
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 973
    :cond_9
    :goto_6
    const-string v34, "v1"

    const-string v35, "error"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 974
    .local v32, "v1":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "settings.getString v1:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 975
    const-string v34, "error"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_a

    invoke-static {}, Lcom/gemini/play/MGplayer;->string3()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_a

    const-string v34, "00:00:00:00:00:00"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 976
    :cond_a
    const/16 v34, 0x1

    sput-boolean v34, Lcom/gemini/play/MGplayer;->v1first:Z

    .line 977
    sget-object v34, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    sget-object v35, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v36, 0x7f0b0074

    invoke-virtual/range {v35 .. v36}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/Toast;->show()V

    .line 980
    :cond_b
    invoke-static {}, Lcom/gemini/play/MGplayer;->createCpuID()V

    .line 982
    invoke-static {}, Lcom/gemini/play/MGplayer;->init_epg()V

    .line 985
    sget-object v34, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v35, "activity"

    invoke-virtual/range {v34 .. v35}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager;

    .line 986
    .local v24, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual/range {v24 .. v24}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v25

    .line 987
    .local v25, "mem":I
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "mem = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 998
    sget-object v34, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v35, "data"

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    const-string v35, "decode"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 999
    .local v20, "inx":I
    sget-object v34, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v35, "data"

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    const-string v35, "forcetvcache"

    const/16 v36, 0x14

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1000
    .local v14, "forcetvcache":I
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "zhibo"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 1001
    const/4 v14, 0x0

    .line 1006
    :cond_c
    const/16 v34, 0x1

    move/from16 v0, v20

    move/from16 v1, v34

    if-ne v0, v1, :cond_1a

    .line 1007
    const/16 v34, 0x30

    move/from16 v0, v25

    move/from16 v1, v34

    if-lt v0, v1, :cond_19

    .line 1008
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1009
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    .line 1072
    :goto_7
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "quanxing"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_d

    .line 1073
    invoke-static {}, Lcom/gemini/play/MGplayer;->getSofeVersion()I

    move-result v33

    .line 1074
    .local v33, "ver":I
    if-lez v33, :cond_d

    .line 1075
    sput v33, Lcom/gemini/play/MGplayer;->current_version:I

    .line 1078
    .end local v33    # "ver":I
    :cond_d
    invoke-static {v14}, Lcom/gemini/play/MGplayer;->forcetv(I)V

    .line 1080
    invoke-static {}, Lcom/gemini/play/MGplayer;->Thread_Custom_Init()V

    .line 1082
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->urlClear()V

    .line 1083
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->typeClear()V

    .line 1084
    invoke-static {}, Lcom/gemini/play/BACKplayer;->playbackClear()V

    .line 1085
    invoke-static {}, Lcom/gemini/play/BACKplayer;->playbackTypeClear()V

    .line 1087
    invoke-static {}, Lcom/gemini/custom/custom;->chuangshi_start()V

    .line 1088
    invoke-static {}, Lcom/gemini/custom/custom;->jjm_send()V

    .line 1089
    invoke-static {}, Lcom/gemini/custom/custom;->chaoyang_start()V

    .line 1090
    invoke-static {}, Lcom/gemini/custom/custom;->newlive_start()V

    .line 1091
    invoke-static {}, Lcom/gemini/custom/custom;->spain1_start()V

    .line 1092
    sget-object v34, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-static/range {v34 .. v34}, Lcom/gemini/custom/custom;->szysx_start(Landroid/content/Context;)V

    .line 1093
    invoke-static {}, Lcom/gemini/custom/custom;->lookiptv_start()V

    .line 1094
    invoke-static {}, Lcom/gemini/custom/custom;->huanqiu_start()V

    .line 1095
    invoke-static {}, Lcom/gemini/custom/custom;->panda_start()V

    .line 1096
    invoke-static {}, Lcom/gemini/custom/custom;->goat_start()V

    .line 1098
    const/16 v34, -0x1

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    .line 1100
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "huidixing"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_e

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "woini"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_e

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "badatv"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 1101
    :cond_e
    invoke-static {}, Lcom/gemini/custom/ihdtv;->createHttpServerForHuidixing()V

    .line 1104
    :cond_f
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "spain1"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_10

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "spainglobal"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_10

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v34

    const-string v35, "spain1cn"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 1105
    :cond_10
    invoke-static {}, Lcom/gemini/play/MGplayer;->createHttpServer()V

    .line 1129
    :cond_11
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 873
    .end local v4    # "adDir":Ljava/io/File;
    .end local v7    # "cpuinfo":Ljava/lang/String;
    .end local v8    # "destDir":Ljava/io/File;
    .end local v10    # "dm":Landroid/util/DisplayMetrics;
    .end local v14    # "forcetvcache":I
    .end local v16    # "httpd_path":Ljava/lang/String;
    .end local v20    # "inx":I
    .end local v24    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v25    # "mem":I
    .end local v29    # "thread_num":I
    .end local v30    # "thread_num_end":I
    .end local v31    # "thread_num_start":I
    .end local v32    # "v1":Ljava/lang/String;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v19    # "inFile":Ljava/io/File;
    .restart local v21    # "len":I
    .restart local v23    # "localPath":Ljava/lang/String;
    .restart local v27    # "soDir":Ljava/io/File;
    .restart local v28    # "soFile":Ljava/io/File;
    :cond_12
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 875
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 876
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 878
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "buffer":[B
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v21    # "len":I
    :cond_13
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 879
    const-string v34, "### System.load start"

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_14

    .line 882
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "soFile "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " length = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->length()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 888
    :goto_8
    const-string v34, "### System.load End"

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 890
    sget-object v34, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    const/16 v35, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/gemini/play/MGplayer;->readReverse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/gcustom;->cm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 886
    :cond_14
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "soFile "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " no exists"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 925
    .end local v9    # "dir":Ljava/io/File;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v19    # "inFile":Ljava/io/File;
    .end local v23    # "localPath":Ljava/lang/String;
    .end local v27    # "soDir":Ljava/io/File;
    .end local v28    # "soFile":Ljava/io/File;
    .restart local v7    # "cpuinfo":Ljava/lang/String;
    .restart local v16    # "httpd_path":Ljava/lang/String;
    .restart local v29    # "thread_num":I
    .restart local v30    # "thread_num_end":I
    .restart local v31    # "thread_num_start":I
    :cond_15
    const/16 v34, 0x2

    sput v34, Lcom/gemini/play/MGplayer;->gp2pwaitcachecount:I

    .line 926
    const/16 v34, 0x0

    const/16 v35, 0x2

    const/16 v36, 0x1

    invoke-static/range {v34 .. v36}, Lcom/gemini/play/MGplayer;->setParam(III)V

    .line 927
    const/16 v34, 0x1

    sput v34, Lcom/gemini/play/MGplayer;->httpdstart:I

    .line 929
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v35, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual/range {v35 .. v35}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/httpd/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 931
    .local v18, "httpd_save_path":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "httpd_save_path = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 932
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 933
    .local v17, "httpd_save_dir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_16

    .line 934
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdir()Z

    .line 936
    :cond_16
    sget-object v34, Lcom/gemini/play/MGplayer;->mPlayer:Lcom/gemini/play/gplayer;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/gemini/play/gplayer;->httpdpath(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 958
    .end local v17    # "httpd_save_dir":Ljava/io/File;
    .end local v18    # "httpd_save_path":Ljava/lang/String;
    .restart local v8    # "destDir":Ljava/io/File;
    .restart local v10    # "dm":Landroid/util/DisplayMetrics;
    :cond_17
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_8

    .line 959
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_5

    .line 968
    .restart local v4    # "adDir":Ljava/io/File;
    :cond_18
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_9

    .line 969
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_6

    .line 1011
    .restart local v14    # "forcetvcache":I
    .restart local v20    # "inx":I
    .restart local v24    # "mActivityManager":Landroid/app/ActivityManager;
    .restart local v25    # "mem":I
    .restart local v32    # "v1":Ljava/lang/String;
    :cond_19
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1012
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1014
    :cond_1a
    const-string v34, "RK3128"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 1015
    const/16 v34, 0x30

    move/from16 v0, v25

    move/from16 v1, v34

    if-lt v0, v1, :cond_1b

    .line 1016
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1017
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1019
    :cond_1b
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1020
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1022
    :cond_1c
    const-string v34, "AWH3"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1e

    .line 1023
    const/16 v34, 0x30

    move/from16 v0, v25

    move/from16 v1, v34

    if-lt v0, v1, :cond_1d

    .line 1024
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1025
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1027
    :cond_1d
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1028
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1030
    :cond_1e
    const-string v34, "A20"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_20

    .line 1031
    const/16 v34, 0x30

    move/from16 v0, v25

    move/from16 v1, v34

    if-lt v0, v1, :cond_1f

    .line 1032
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1033
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1035
    :cond_1f
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1036
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1038
    :cond_20
    const-string v34, "HIK3V2"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_22

    .line 1039
    const/16 v34, 0x30

    move/from16 v0, v25

    move/from16 v1, v34

    if-lt v0, v1, :cond_21

    .line 1040
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1041
    const/16 v34, 0x1

    const/16 v35, 0x1

    const/16 v36, 0x1

    invoke-static/range {v34 .. v36}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1043
    :cond_21
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1044
    const/16 v34, 0x1

    const/16 v35, 0x1

    const/16 v36, 0x1

    invoke-static/range {v34 .. v36}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1046
    :cond_22
    const-string v34, "RK3229"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 1047
    const/16 v34, 0x30

    move/from16 v0, v25

    move/from16 v1, v34

    if-lt v0, v1, :cond_23

    .line 1048
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1049
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1051
    :cond_23
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1052
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1054
    :cond_24
    const-string v34, "AML905"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_26

    .line 1055
    const/16 v34, 0x30

    move/from16 v0, v25

    move/from16 v1, v34

    if-lt v0, v1, :cond_25

    .line 1056
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1057
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1059
    :cond_25
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1060
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1063
    :cond_26
    const/16 v34, 0x30

    move/from16 v0, v25

    move/from16 v1, v34

    if-lt v0, v1, :cond_27

    .line 1064
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1065
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7

    .line 1067
    :cond_27
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/gemini/play/MGplayer;->mediaplayerheadertype(I)V

    .line 1068
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MGplayer;->gp2ppthreadnum(III)V

    goto/16 :goto_7
.end method

.method public static timeView()V
    .locals 4

    .prologue
    .line 1386
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1387
    .local v0, "timeHander":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/MGplayer$3;

    invoke-direct {v1, v0}, Lcom/gemini/play/MGplayer$3;-><init>(Landroid/os/Handler;)V

    .line 1416
    .local v1, "timeRunnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1417
    return-void
.end method

.method public static trytimes()I
    .locals 1

    .prologue
    .line 2143
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->trytimes()I

    move-result v0

    return v0
.end method

.method public static u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2109
    sget-object v0, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v0}, Lcom/gemini/play/gcustom;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uncompress(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3612
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 3637
    .end local p0    # "str":Ljava/lang/String;
    .local v0, "buffer":[B
    .local v2, "gunzip":Ljava/util/zip/GZIPInputStream;
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 3615
    .end local v0    # "buffer":[B
    .end local v2    # "gunzip":Ljava/util/zip/GZIPInputStream;
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3617
    .restart local v6    # "out":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 3619
    .restart local v2    # "gunzip":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v7, "ISO-8859-1"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3620
    .local v4, "in":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "gunzip":Ljava/util/zip/GZIPInputStream;
    .local v3, "gunzip":Ljava/util/zip/GZIPInputStream;
    move-object v2, v3

    .line 3626
    .end local v3    # "gunzip":Ljava/util/zip/GZIPInputStream;
    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "gunzip":Ljava/util/zip/GZIPInputStream;
    :goto_1
    const/16 v7, 0x100

    new-array v0, v7, [B

    .line 3629
    .restart local v0    # "buffer":[B
    :goto_2
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    .local v5, "n":I
    if-ltz v5, :cond_2

    .line 3630
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3632
    .end local v5    # "n":I
    :catch_0
    move-exception v1

    .line 3634
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3637
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3621
    .end local v0    # "buffer":[B
    :catch_1
    move-exception v1

    .line 3623
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static upLoadByAsyncHttpClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "uploadUrl"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 3879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3881
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 3882
    .local v0, "params":Lcom/loopj/android/http/RequestParams;
    const-string v3, "uploadedfile"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 3883
    sget-object v3, Lcom/gemini/play/MGplayer;->client:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v4, Lcom/gemini/play/MGplayer$17;

    invoke-direct {v4}, Lcom/gemini/play/MGplayer$17;-><init>()V

    invoke-virtual {v3, p0, v0, v4}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v2

    .line 3894
    .local v2, "post":Lcom/loopj/android/http/RequestHandle;
    return-void
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "uploadUrl"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 3815
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3816
    .local v16, "uploadFile":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3818
    .local v14, "srcPath":Ljava/lang/String;
    const-string v8, "\r\n"

    .line 3819
    .local v8, "end":Ljava/lang/String;
    const-string v15, "--"

    .line 3820
    .local v15, "twoHyphens":Ljava/lang/String;
    const-string v2, "******"

    .line 3822
    .local v2, "boundary":Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3824
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 3826
    .local v10, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3827
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 3831
    const/high16 v18, 0x20000

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 3833
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 3834
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 3835
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 3837
    const-string v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3838
    const-string v18, "Connection"

    const-string v19, "Keep-Alive"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    const-string v18, "Charset"

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3840
    const-string v18, "Content-Type"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "multipart/form-data;boundary="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3843
    new-instance v6, Ljava/io/DataOutputStream;

    .line 3844
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3845
    .local v6, "dos":Ljava/io/DataOutputStream;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 3846
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Content-Disposition: form-data; name=\"uploadedfile\"; filename=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    .line 3847
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3846
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 3850
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 3852
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3853
    .local v9, "fis":Ljava/io/FileInputStream;
    const/16 v18, 0x2000

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 3854
    .local v4, "buffer":[B
    const/4 v5, 0x0

    .line 3856
    .local v5, "count":I
    :goto_0
    invoke-virtual {v9, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_0

    .line 3857
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v4, v0, v5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3873
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 3874
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 3876
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 3859
    .restart local v4    # "buffer":[B
    .restart local v5    # "count":I
    .restart local v6    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 3861
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 3862
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 3863
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 3865
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 3866
    .local v11, "is":Ljava/io/InputStream;
    new-instance v12, Ljava/io/InputStreamReader;

    const-string v18, "utf-8"

    move-object/from16 v0, v18

    invoke-direct {v12, v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3867
    .local v12, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3868
    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 3870
    .local v13, "result":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 3871
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static upnp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "port"    # Ljava/lang/String;
    .param p1, "pol"    # Ljava/lang/String;

    .prologue
    .line 2248
    sget-object v2, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v3, "data"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2249
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "upnp"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2250
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2271
    :cond_0
    :goto_0
    return-void

    .line 2253
    :cond_1
    new-instance v2, Lcom/gemini/play/MGplayer$5;

    invoke-direct {v2, p0, p1}, Lcom/gemini/play/MGplayer$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    invoke-virtual {v2}, Lcom/gemini/play/MGplayer$5;->start()V

    goto :goto_0
.end method

.method public static video_every_init()V
    .locals 1

    .prologue
    .line 3351
    new-instance v0, Lcom/gemini/play/MGplayer$13;

    invoke-direct {v0}, Lcom/gemini/play/MGplayer$13;-><init>()V

    .line 3367
    invoke-virtual {v0}, Lcom/gemini/play/MGplayer$13;->start()V

    .line 3368
    return-void
.end method

.method public static video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V
    .locals 0
    .param p0, "l"    # Lcom/gemini/play/ControlVideoInterface;

    .prologue
    .line 3347
    sput-object p0, Lcom/gemini/play/MGplayer;->video_iface:Lcom/gemini/play/ControlVideoInterface;

    .line 3348
    return-void
.end method

.method public static week(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 1363
    sget-object v1, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 1382
    :goto_0
    return-object v0

    .line 1366
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1368
    :pswitch_0
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1370
    :pswitch_1
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1372
    :pswitch_2
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1374
    :pswitch_3
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v1, 0x7f0b00ea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1376
    :pswitch_4
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1378
    :pswitch_5
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1380
    :pswitch_6
    sget-object v0, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static writeCpuName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2527
    const-string v0, ""

    .line 2529
    .local v0, "alltext":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2530
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2531
    .local v1, "br":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 2532
    .local v4, "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2535
    :cond_0
    const-string v5, ""

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2536
    new-instance v5, Lcom/gemini/base64/BASE64Encoder;

    invoke-direct {v5}, Lcom/gemini/base64/BASE64Encoder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gemini/base64/BASE64Encoder;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2542
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "text":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 2537
    :catch_0
    move-exception v2

    .line 2538
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2542
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const-string v5, ""

    goto :goto_1

    .line 2539
    :catch_1
    move-exception v2

    .line 2540
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static writeDebug(Ljava/lang/String;)V
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1319
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1320
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1323
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1324
    .local v2, "fileOS":Ljava/io/FileOutputStream;
    sget-object v3, Lcom/gemini/play/MGplayer;->debug:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1325
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1334
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    :goto_0
    sget-object v3, Lcom/gemini/play/MGplayer;->debug:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1335
    return-void

    .line 1326
    :catch_0
    move-exception v0

    .line 1328
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1329
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeSD(Ljava/lang/String;)V
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 2748
    const-string v0, "sysinfo.dat"

    invoke-static {v0, p0}, Lcom/gemini/play/MGplayer;->writeSD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    return-void
.end method

.method public static writeSD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 2757
    sget-object v5, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v5, v6}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 2758
    .local v3, "permission":I
    if-eqz v3, :cond_0

    .line 2760
    sget-object v5, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    sget-object v6, Lcom/gemini/play/MGplayer;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 2763
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2764
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2766
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->j1no(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2769
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2770
    .local v2, "fileOS":Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 2771
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2786
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 2779
    :catch_0
    move-exception v0

    .line 2781
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2782
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 2784
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public GetMac()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x1

    .line 1235
    const/4 v2, 0x0

    .line 1236
    .local v2, "mac":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v6, "data"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1237
    .local v3, "settings":Landroid/content/SharedPreferences;
    const-string v5, "geminisetmac"

    const-string v6, "null"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1238
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v8, :cond_9

    .line 1239
    :cond_1
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v8, :cond_4

    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v5

    const-string v6, "szysx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dhtv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v5

    const-string v6, "familytv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1240
    :cond_3
    invoke-static {}, Lcom/gemini/custom/szysx;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 1241
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_4

    .line 1242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "szysx.getMac:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/gemini/custom/szysx;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1243
    sget-object v5, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v6, "data"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1244
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "geminisetmac"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1245
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1250
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v9, :cond_8

    .line 1251
    :cond_5
    sget-object v5, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v5}, Lcom/gemini/play/gcustom;->gm()Ljava/lang/String;

    move-result-object v2

    .line 1252
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v8, :cond_6

    .line 1253
    invoke-static {}, Lcom/gemini/play/MGplayer;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 1256
    :cond_6
    const-string v5, "02:00:00:00:00:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1257
    invoke-static {}, Lcom/gemini/custom/szysx;->getMacAddrWifi7()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1258
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMacAddrWifi7:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1260
    :cond_7
    sget-object v5, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v6, "data"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1261
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "geminisetmac"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1262
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1267
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_8
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetMac:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1276
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 1265
    .restart local v3    # "settings":Landroid/content/SharedPreferences;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_9
    move-object v2, v4

    goto :goto_0

    .line 1272
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1276
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public GetMacXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1133
    sget-object v2, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v3, "data"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1134
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "geminisetmac"

    const-string v3, "null"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1135
    .local v1, "value":Ljava/lang/String;
    return-object v1
.end method

.method public GetSDPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1185
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetSDCM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/String;

    .prologue
    .line 1216
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1221
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1222
    .local v2, "fileOS":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1223
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1231
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1227
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1229
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public ShowSDCM(Ljava/lang/String;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShowSDCM v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1190
    const-string v1, "ok"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1192
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1193
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1194
    sget-object v1, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1211
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    const-string v1, "no"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1197
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1198
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1199
    sget-object v1, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1200
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    const-string v1, "get"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1202
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1203
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1204
    sget-object v1, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1205
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    const-string v1, "noget"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1207
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1208
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1209
    sget-object v1, Lcom/gemini/play/MGplayer;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public gaid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 719
    sget-object v3, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 722
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v3, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v3}, Lcom/gemini/play/MGplayer;->getPackName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 723
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 728
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v3

    .line 724
    :catch_0
    move-exception v1

    .line 726
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 728
    const-string v3, ""

    goto :goto_0
.end method

.method public getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 3945
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 560
    sget-object v2, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v3, "data"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "number"

    const-string v3, "error"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "value":Ljava/lang/String;
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    invoke-static {}, Lcom/gemini/play/MGplayer;->readSD()Ljava/lang/String;

    move-result-object v1

    .line 565
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCpuID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 569
    return-object v1
.end method

.method public getMyUUID()Ljava/lang/String;
    .locals 12

    .prologue
    .line 3642
    const/4 v2, 0x0

    .line 3644
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    sget-object v6, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 3645
    sget-object v6, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3648
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    const/4 v3, 0x0

    .line 3649
    .local v3, "tmDevice":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3651
    .local v4, "tmSerial":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3653
    .local v0, "androidId":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 3655
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3657
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3662
    :cond_1
    const/4 v1, 0x0

    .line 3663
    .local v1, "deviceUuid":Ljava/util/UUID;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 3664
    new-instance v1, Ljava/util/UUID;

    .end local v1    # "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    int-to-long v10, v10

    or-long/2addr v8, v10

    invoke-direct {v1, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 3666
    .restart local v1    # "deviceUuid":Ljava/util/UUID;
    :cond_2
    const/4 v5, 0x0

    .line 3667
    .local v5, "uniqueId":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 3668
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3670
    :cond_3
    const-string v6, "debug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uuid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    if-eqz v5, :cond_4

    .line 3675
    .end local v5    # "uniqueId":Ljava/lang/String;
    :goto_0
    return-object v5

    .restart local v5    # "uniqueId":Ljava/lang/String;
    :cond_4
    const-string v5, ""

    goto :goto_0
.end method

.method public getPackName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 523
    const-string v2, "com.gemini.iptv"

    .line 525
    .local v2, "packageNames":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 526
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 527
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public gete()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1178
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "liaoling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    const-string v0, "rtmp://22.59.49.10/live/livestream"

    .line 1181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gemini/play/MGplayer;->gete(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public gete(Z)Ljava/lang/String;
    .locals 6
    .param p1, "f"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1139
    sget v3, Lcom/gemini/play/MGplayer;->epgList_index:I

    if-ltz v3, :cond_6

    sget-object v3, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    sget-object v3, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/gemini/play/MGplayer;->epgList_index:I

    if-le v3, v4, :cond_6

    .line 1140
    sget-object v3, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    sget v4, Lcom/gemini/play/MGplayer;->epgList_index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1141
    .local v0, "epg":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    .line 1142
    :cond_0
    sget-object v3, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v3}, Lcom/gemini/play/gcustom;->epg()Ljava/lang/String;

    move-result-object v1

    .line 1172
    :goto_0
    
    #added by alexw216
    
    const-string v1, "http://goat.iaarc.com/goatcr"
    
    return-object v1

    .line 1144
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zeus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quanxing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quanxing2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v1, v0

    .line 1145
    goto :goto_0

    .line 1146
    :cond_3
    const-string v3, ".html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ".php"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ".asp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-nez p1, :cond_5

    .line 1147
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1148
    .local v2, "lastIndex":I
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "epg1":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "epg1":Ljava/lang/String;
    .end local v2    # "lastIndex":I
    :cond_5
    move-object v1, v0

    .line 1151
    goto :goto_0

    .line 1154
    .end local v0    # "epg":Ljava/lang/String;
    :cond_6
    sget-object v3, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v3}, Lcom/gemini/play/gcustom;->epg()Ljava/lang/String;

    move-result-object v0

    .line 1155
    .restart local v0    # "epg":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zhgxnet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/custom/zhgx;->epg_dir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_9

    .line 1159
    :cond_8
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yunfou"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 1162
    invoke-static {}, Lcom/gemini/play/MGplayer;->exit_app()V

    .line 1167
    :cond_9
    const-string v3, ".html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ".php"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ".asp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    if-nez p1, :cond_c

    .line 1168
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1169
    .restart local v2    # "lastIndex":I
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1170
    .restart local v1    # "epg1":Ljava/lang/String;
    goto/16 :goto_0

    .line 1165
    .end local v1    # "epg1":Ljava/lang/String;
    .end local v2    # "lastIndex":I
    :cond_b
    sget-object v3, Lcom/gemini/play/MGplayer;->mCustom:Lcom/gemini/play/gcustom;

    invoke-virtual {v3}, Lcom/gemini/play/gcustom;->epg()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    .line 1172
    goto/16 :goto_0
.end method

.method public jsendServerCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "httpUrl"    # Ljava/lang/String;

    .prologue
    .line 1708
    const/16 v0, 0x1388

    invoke-static {p1, v0}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendHttpRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 1281
    move-object v1, p1

    .line 1282
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/gemini/play/MGplayer$1;

    invoke-direct {v2, p0, v1}, Lcom/gemini/play/MGplayer$1;-><init>(Lcom/gemini/play/MGplayer;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v2}, Lcom/gemini/play/MGplayer$1;->start()V

    .line 1288
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    .line 1289
    iget-object v2, p0, Lcom/gemini/play/MGplayer;->sendHttpRequest_value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 1290
    iget-object v2, p0, Lcom/gemini/play/MGplayer;->sendHttpRequest_value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1294
    :goto_1
    return-object v2

    .line 1291
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 1288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1294
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public wl(Ljava/lang/String;)V
    .locals 3
    .param p1, "u"    # Ljava/lang/String;

    .prologue
    .line 1454
    sget-object v0, Lcom/gemini/play/MGplayer;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1455
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v1}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1457
    sget-object v0, Lcom/gemini/play/MGplayer;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v2}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    sget-object v0, Lcom/gemini/play/MGplayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
