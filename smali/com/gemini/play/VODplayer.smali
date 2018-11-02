.class public Lcom/gemini/play/VODplayer;
.super Ljava/lang/Object;
.source "VODplayer.java"


# static fields
.field public static VideoViewH:Lcom/gemini/play/VideoView;

.field public static VideoViewH2:Lcom/gemini/play/ExoPlayerView;

.field public static VideoViewS:Lorg/videolan/vlc/VlcVideoView;

.field public static VideoViewS2:Lio/vov/vitamio/widget/VideoView;

.field public static VodListArray0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static VodListArray1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static VodListArray2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static VodListArray3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static VodListImageListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static VodListUrlListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListUrlListStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static VodType0:Lcom/gemini/play/VodTypeStatus;

.field public static VodType1:Lcom/gemini/play/VodTypeStatus;

.field public static VodType2:Lcom/gemini/play/VodTypeStatus;

.field public static VodType3:Lcom/gemini/play/VodTypeStatus;

.field private static check_playing_running:Z

.field private static check_playing_times:I

.field public static columner:[Lcom/gemini/play/ColumnStatus;

.field public static is_reload:Z

.field public static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static listbitmapCache:Lcom/gemini/play/LruBitmapCache;

.field public static mIsPause:Z

.field public static p2pCurrentDuration:I

.field public static p2pCurrentUrl:Ljava/lang/String;

.field public static page:I

.field public static psize:I

.field static seekHandler:Landroid/os/Handler;

.field public static type:Ljava/lang/String;

.field public static url_param:Ljava/lang/String;

.field public static video_current:I

.field public static video_pw:Ljava/lang/String;

.field public static video_seek:I

.field public static video_selections:Ljava/lang/String;

.field public static video_url:Ljava/lang/String;

.field public static vod_epg:Ljava/lang/String;

.field private static vod_inited:Z

.field public static vod_number:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->VodListArray0:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->VodListArray1:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->VodListArray2:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->VodListArray3:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Lcom/gemini/play/VodTypeStatus;

    invoke-direct {v0}, Lcom/gemini/play/VodTypeStatus;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->VodType0:Lcom/gemini/play/VodTypeStatus;

    .line 108
    new-instance v0, Lcom/gemini/play/VodTypeStatus;

    invoke-direct {v0}, Lcom/gemini/play/VodTypeStatus;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->VodType1:Lcom/gemini/play/VodTypeStatus;

    .line 109
    new-instance v0, Lcom/gemini/play/VodTypeStatus;

    invoke-direct {v0}, Lcom/gemini/play/VodTypeStatus;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->VodType2:Lcom/gemini/play/VodTypeStatus;

    .line 110
    new-instance v0, Lcom/gemini/play/VodTypeStatus;

    invoke-direct {v0}, Lcom/gemini/play/VodTypeStatus;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->VodType3:Lcom/gemini/play/VodTypeStatus;

    .line 112
    sput v2, Lcom/gemini/play/VODplayer;->page:I

    .line 113
    const/16 v0, 0xa

    sput v0, Lcom/gemini/play/VODplayer;->psize:I

    .line 114
    const-string v0, "0"

    sput-object v0, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    .line 115
    sput-object v1, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 117
    sput-object v1, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    .line 118
    sput-object v1, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    .line 119
    sput-object v1, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    .line 120
    sput-object v1, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    .line 122
    sput-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    .line 123
    sput-object v1, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    .line 124
    sput v2, Lcom/gemini/play/VODplayer;->video_current:I

    .line 125
    sput v2, Lcom/gemini/play/VODplayer;->video_seek:I

    .line 126
    sput-object v1, Lcom/gemini/play/VODplayer;->video_selections:Ljava/lang/String;

    .line 128
    sput v2, Lcom/gemini/play/VODplayer;->p2pCurrentDuration:I

    .line 129
    sput-object v1, Lcom/gemini/play/VODplayer;->p2pCurrentUrl:Ljava/lang/String;

    .line 133
    sput-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    .line 135
    sput-boolean v2, Lcom/gemini/play/VODplayer;->vod_inited:Z

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->VodListImageListArray:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    .line 139
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gemini/play/VODplayer;->vod_number:[I

    .line 141
    sput-boolean v2, Lcom/gemini/play/VODplayer;->check_playing_running:Z

    .line 142
    sput v2, Lcom/gemini/play/VODplayer;->check_playing_times:I

    .line 143
    sput-boolean v2, Lcom/gemini/play/VODplayer;->mIsPause:Z

    .line 145
    new-instance v0, Lcom/gemini/play/LruBitmapCache;

    invoke-direct {v0}, Lcom/gemini/play/LruBitmapCache;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->listbitmapCache:Lcom/gemini/play/LruBitmapCache;

    .line 147
    sput-object v1, Lcom/gemini/play/VODplayer;->vod_epg:Ljava/lang/String;

    .line 149
    sput-boolean v2, Lcom/gemini/play/VODplayer;->is_reload:Z

    .line 946
    new-instance v0, Lcom/gemini/play/VODplayer$1;

    invoke-direct {v0}, Lcom/gemini/play/VODplayer$1;-><init>()V

    sput-object v0, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    return-void

    .line 139
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method private static DrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 2139
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 2140
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 2141
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2142
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2143
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2144
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2145
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2146
    return-object v0

    .line 2141
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0, p1, p2}, Lcom/gemini/play/VODplayer;->playVideo_p2p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-static {p0, p1}, Lcom/gemini/play/VODplayer;->createPlaylist(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->DrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/gemini/play/VODplayer;->check_playing_running:Z

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/gemini/play/VODplayer;->check_playing_times:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 98
    sput p0, Lcom/gemini/play/VODplayer;->check_playing_times:I

    return p0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 98
    sget v0, Lcom/gemini/play/VODplayer;->check_playing_times:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/gemini/play/VODplayer;->check_playing_times:I

    return v0
.end method

.method public static backward(Ljava/lang/String;Landroid/os/Handler;)I
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "rHandler"    # Landroid/os/Handler;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1012
    sget v2, Lcom/gemini/play/VODplayer;->video_current:I

    if-nez v2, :cond_0

    .line 1013
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->getProgress(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/gemini/play/VODplayer;->video_current:I

    .line 1015
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vod info view key down :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/VODplayer;->video_current:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1019
    if-eqz p0, :cond_4

    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "rtsp://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "youku@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "file://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1020
    :cond_1
    sget v2, Lcom/gemini/play/VODplayer;->video_current:I

    add-int/lit16 v2, v2, -0x2710

    sput v2, Lcom/gemini/play/VODplayer;->video_current:I

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vod info view key down :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/VODplayer;->video_current:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1024
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1025
    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 1026
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1028
    :cond_2
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1057
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    sget v2, Lcom/gemini/play/VODplayer;->video_current:I

    return v2

    .line 1029
    :cond_4
    if-eqz p0, :cond_7

    const-string v2, "p2p://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "forcetv://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1030
    :cond_5
    sget v2, Lcom/gemini/play/VODplayer;->video_current:I

    add-int/lit16 v2, v2, -0x2710

    sput v2, Lcom/gemini/play/VODplayer;->video_current:I

    .line 1032
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1033
    .restart local v1    # "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1034
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1035
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1036
    :cond_6
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1037
    .end local v1    # "msg":Landroid/os/Message;
    :cond_7
    if-eqz p0, :cond_3

    const-string v2, "gp2p://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1038
    sget v2, Lcom/gemini/play/VODplayer;->video_current:I

    add-int/lit16 v2, v2, -0x2710

    sput v2, Lcom/gemini/play/VODplayer;->video_current:I

    .line 1040
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1041
    .restart local v1    # "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1042
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "currentTime"

    sget v3, Lcom/gemini/play/VODplayer;->video_current:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1043
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1044
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1045
    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1046
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1047
    :cond_8
    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static checkVideo(Landroid/content/Context;)V
    .locals 4
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 2236
    sget-boolean v2, Lcom/gemini/play/VODplayer;->check_playing_running:Z

    if-ne v2, v3, :cond_0

    .line 2314
    :goto_0
    return-void

    .line 2238
    :cond_0
    sput-boolean v3, Lcom/gemini/play/VODplayer;->check_playing_running:Z

    .line 2239
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2240
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/VODplayer$13;

    invoke-direct {v1, p0, v0}, Lcom/gemini/play/VODplayer$13;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2313
    .local v1, "mRunnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static createPlaylist(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "gplayer_port"    # I

    .prologue
    .line 1966
    :try_start_0
    const-string v4, "playlist.m3u8"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1968
    .local v2, "outStream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#EXTM3U\n#EXT-X-ALLOW-CACHE:YES\n#EXT-X-TARGETDURATION:72000\n#EXT-X-MEDIA-SEQUENCE:110236\n#EXTINF:1,\nhttp://127.0.0.1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1973
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/video.ts\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1975
    .local v3, "text":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1976
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1977
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1985
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v3    # "text":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/playlist.m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1987
    .local v1, "murl":Ljava/lang/String;
    return-object v1

    .line 1978
    .end local v1    # "murl":Ljava/lang/String;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1979
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1981
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v3    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1982
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 2152
    :try_start_0
    sget-object v3, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v4, "playlist.m3u8"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2155
    .local v2, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2156
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 2157
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2165
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/playlist.m3u8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2167
    .local v1, "murl":Ljava/lang/String;
    return-object v1

    .line 2158
    .end local v1    # "murl":Ljava/lang/String;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 2159
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2161
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 2162
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createPlaylist(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 1943
    :try_start_0
    const-string v3, "playlist.m3u8"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1944
    .local v1, "outStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#EXTM3U\n#EXT-X-TARGETDURATION:3600\n#EXT-X-VERSION:2\n#EXT-X-DISCONTINUITY\n#EXTINF:3600,\nhttp://127.0.0.1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1949
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n#EXT-X-ENDLIST\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1952
    .local v2, "text":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1953
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1954
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1961
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 1955
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1956
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1958
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .end local v2    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1959
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static forward(Ljava/lang/String;Landroid/os/Handler;)I
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "rHandler"    # Landroid/os/Handler;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 969
    sget v2, Lcom/gemini/play/VODplayer;->video_current:I

    if-nez v2, :cond_0

    .line 970
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->getProgress(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/gemini/play/VODplayer;->video_current:I

    .line 972
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vod info view key down :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/VODplayer;->video_current:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 977
    if-eqz p0, :cond_4

    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "rtsp://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "youku@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "file://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 978
    :cond_1
    sget v2, Lcom/gemini/play/VODplayer;->video_current:I

    add-int/lit16 v2, v2, 0x2710

    sput v2, Lcom/gemini/play/VODplayer;->video_current:I

    .line 980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vod info view key down :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/VODplayer;->video_current:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 982
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 983
    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 984
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 985
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 986
    :cond_2
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1008
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    sget v2, Lcom/gemini/play/VODplayer;->video_current:I

    return v2

    .line 987
    :cond_4
    if-eqz p0, :cond_7

    const-string v2, "p2p://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "forcetv://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 988
    :cond_5
    sget v2, Lcom/gemini/play/VODplayer;->video_current:I

    add-int/lit16 v2, v2, 0x2710

    sput v2, Lcom/gemini/play/VODplayer;->video_current:I

    .line 990
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 991
    .restart local v1    # "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 992
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 993
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 994
    :cond_6
    sget-object v2, Lcom/gemini/play/VODplayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 995
    .end local v1    # "msg":Landroid/os/Message;
    :cond_7
    if-eqz p0, :cond_3

    const-string v2, "gp2p://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 996
    sget v2, Lcom/gemini/play/VODplayer;->video_current:I

    add-int/lit16 v2, v2, 0x2710

    sput v2, Lcom/gemini/play/VODplayer;->video_current:I

    .line 998
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 999
    .restart local v1    # "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1001
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "currentTime"

    sget v3, Lcom/gemini/play/VODplayer;->video_current:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1002
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1003
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1004
    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1005
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1006
    :cond_8
    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static getProgress(Ljava/lang/String;)I
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1814
    if-eqz p0, :cond_4

    const-string v1, "p2p://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "forcetv://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1815
    :cond_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-nez v1, :cond_1

    .line 1816
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v1}, Lcom/gemini/play/VideoView;->getCurrentPosition()I

    move-result v1

    .line 1902
    :goto_0
    return v1

    .line 1817
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1818
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v1}, Lorg/videolan/vlc/VlcVideoView;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 1819
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1820
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v1}, Lio/vov/vitamio/widget/VideoView;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 1821
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v4, :cond_13

    .line 1822
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v1}, Lcom/gemini/play/ExoPlayerView;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 1824
    :cond_4
    if-eqz p0, :cond_e

    const-string v1, "gp2p://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1826
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v0

    .line 1827
    .local v0, "cpuname":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-nez v1, :cond_8

    .line 1828
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v1}, Lcom/gemini/play/VideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_7

    .line 1829
    const-string v1, "S805"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1830
    sget v1, Lcom/gemini/play/MGplayer;->httpdstart:I

    if-ne v1, v2, :cond_5

    .line 1831
    sget v1, Lcom/gemini/play/VODplayer;->video_seek:I

    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->getCurrentPosition()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1833
    :cond_5
    sget v1, Lcom/gemini/play/VODplayer;->video_seek:I

    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->getCurrentPosition2()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1835
    :cond_6
    sget v1, Lcom/gemini/play/VODplayer;->video_seek:I

    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->getCurrentPosition()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1837
    :cond_7
    sget v1, Lcom/gemini/play/VODplayer;->video_seek:I

    goto :goto_0

    .line 1839
    :cond_8
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 1840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_seek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/gemini/play/VODplayer;->video_seek:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VODplayer.VideoViewS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v2}, Lorg/videolan/vlc/VlcVideoView;->getCurrentPosition2()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1841
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v1}, Lorg/videolan/vlc/VlcVideoView;->getCurrentPosition2()J

    move-result-wide v2

    long-to-int v1, v2

    if-lez v1, :cond_9

    .line 1842
    sget v1, Lcom/gemini/play/VODplayer;->video_seek:I

    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v2}, Lorg/videolan/vlc/VlcVideoView;->getCurrentPosition2()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 1844
    :cond_9
    sget v1, Lcom/gemini/play/VODplayer;->video_seek:I

    goto/16 :goto_0

    .line 1846
    :cond_a
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 1847
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v1}, Lio/vov/vitamio/widget/VideoView;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    if-lez v1, :cond_b

    .line 1848
    sget v1, Lcom/gemini/play/VODplayer;->video_seek:I

    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 1850
    :cond_b
    sget v1, Lcom/gemini/play/VODplayer;->video_seek:I

    goto/16 :goto_0

    .line 1852
    :cond_c
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v4, :cond_13

    .line 1853
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v1}, Lcom/gemini/play/ExoPlayerView;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    if-lez v1, :cond_d

    .line 1854
    sget v1, Lcom/gemini/play/VODplayer;->video_seek:I

    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v2}, Lcom/gemini/play/ExoPlayerView;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 1856
    :cond_d
    sget v1, Lcom/gemini/play/VODplayer;->video_seek:I

    goto/16 :goto_0

    .line 1890
    .end local v0    # "cpuname":Ljava/lang/String;
    :cond_e
    if-eqz p0, :cond_13

    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "rtsp://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "youku@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1891
    :cond_f
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-nez v1, :cond_10

    .line 1892
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v1}, Lcom/gemini/play/VideoView;->getCurrentPosition()I

    move-result v1

    goto/16 :goto_0

    .line 1893
    :cond_10
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v2, :cond_11

    .line 1894
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v1}, Lorg/videolan/vlc/VlcVideoView;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    goto/16 :goto_0

    .line 1895
    :cond_11
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v3, :cond_12

    .line 1896
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v1}, Lio/vov/vitamio/widget/VideoView;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    goto/16 :goto_0

    .line 1897
    :cond_12
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v4, :cond_13

    .line 1898
    sget-object v1, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v1}, Lcom/gemini/play/ExoPlayerView;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v1, v2

    goto/16 :goto_0

    .line 1902
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static getTotal(Ljava/lang/String;)I
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    .line 1906
    if-eqz p0, :cond_4

    const-string v2, "p2p://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "forcetv://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1907
    :cond_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-nez v2, :cond_1

    .line 1908
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->getDuration()I

    move-result v2

    .line 1937
    :goto_0
    return v2

    .line 1909
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1910
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v2}, Lorg/videolan/vlc/VlcVideoView;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 1911
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1912
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 1913
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-ne v2, v4, :cond_a

    .line 1914
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v2}, Lcom/gemini/play/ExoPlayerView;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 1915
    :cond_4
    if-eqz p0, :cond_5

    const-string v2, "gp2p://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1916
    const-string v2, "get"

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->mediaplayerstatue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1917
    .local v0, "statue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaplayerstatue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1918
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_a

    .line 1919
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1920
    .local v1, "statues":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_a

    .line 1921
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1922
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    goto :goto_0

    .line 1926
    .end local v0    # "statue":Ljava/lang/String;
    .end local v1    # "statues":[Ljava/lang/String;
    :cond_5
    if-eqz p0, :cond_a

    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "https://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "rtsp://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "youku@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "file://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1927
    :cond_6
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-nez v2, :cond_7

    .line 1928
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->getDuration()I

    move-result v2

    goto/16 :goto_0

    .line 1929
    :cond_7
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 1930
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v2}, Lorg/videolan/vlc/VlcVideoView;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    goto/16 :goto_0

    .line 1931
    :cond_8
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-ne v2, v5, :cond_9

    .line 1932
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    goto/16 :goto_0

    .line 1933
    :cond_9
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-ne v2, v4, :cond_a

    .line 1934
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v2}, Lcom/gemini/play/ExoPlayerView;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    goto/16 :goto_0

    .line 1937
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static getVodListStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/gemini/play/VodListStatus;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 885
    invoke-static {p1}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    .line 886
    :cond_0
    const/4 v2, 0x0

    .line 896
    :cond_1
    return-object v2

    .line 888
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 889
    .local v1, "index":I
    const/4 v2, 0x0

    .line 890
    .local v2, "ss":Lcom/gemini/play/VodListStatus;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    invoke-static {v1}, Lcom/gemini/play/VODplayer;->listGet(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 891
    invoke-static {v1}, Lcom/gemini/play/VODplayer;->listGet(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gemini/play/VodListStatus;

    .line 892
    .local v3, "t":Lcom/gemini/play/VodListStatus;
    iget v4, v3, Lcom/gemini/play/VodListStatus;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 893
    move-object v2, v3

    .line 890
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getVodListUrlListBitmap(Ljava/lang/String;)Lcom/gemini/play/VodListUrlListStatus;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2172
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    sget-object v2, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2173
    sget-object v2, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListUrlListStatus;

    .line 2174
    .local v0, "VodListUrlLister":Lcom/gemini/play/VodListUrlListStatus;
    iget-object v2, v0, Lcom/gemini/play/VodListUrlListStatus;->url:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2179
    .end local v0    # "VodListUrlLister":Lcom/gemini/play/VodListUrlListStatus;
    :goto_1
    return-object v0

    .line 2172
    .restart local v0    # "VodListUrlLister":Lcom/gemini/play/VodListUrlListStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2179
    .end local v0    # "VodListUrlLister":Lcom/gemini/play/VodListUrlListStatus;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static gete()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/gemini/play/VODplayer;->vod_epg:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v0}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/VODplayer;->vod_epg:Ljava/lang/String;

    .line 159
    :cond_0
    sget-object v0, Lcom/gemini/play/VODplayer;->vod_epg:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/os/Handler;)V
    .locals 1
    .param p0, "rHandler"    # Landroid/os/Handler;

    .prologue
    .line 2193
    sget-boolean v0, Lcom/gemini/play/VODplayer;->vod_inited:Z

    if-nez v0, :cond_0

    .line 2194
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gemini/play/VODplayer;->vod_inited:Z

    .line 2195
    new-instance v0, Lcom/gemini/play/VODplayer$12;

    invoke-direct {v0, p0}, Lcom/gemini/play/VODplayer$12;-><init>(Landroid/os/Handler;)V

    .line 2230
    invoke-virtual {v0}, Lcom/gemini/play/VODplayer$12;->start()V

    .line 2232
    :cond_0
    return-void
.end method

.method public static init_Column()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 2096
    sget-object v5, Lcom/gemini/play/MGplayer;->vodcolumn:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 2135
    .local v0, "column":[Ljava/lang/String;
    .local v4, "kk":I
    :cond_0
    return-void

    .line 2099
    .end local v0    # "column":[Ljava/lang/String;
    .end local v4    # "kk":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MGplayer.vodcolumn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/MGplayer;->vodcolumn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2100
    sget-object v5, Lcom/gemini/play/MGplayer;->vodcolumn:Ljava/lang/String;

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2101
    .restart local v0    # "column":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [Lcom/gemini/play/ColumnStatus;

    sput-object v5, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    .line 2102
    const/4 v4, 0x0

    .restart local v4    # "kk":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 2103
    sget-object v5, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    new-instance v6, Lcom/gemini/play/ColumnStatus;

    invoke-direct {v6}, Lcom/gemini/play/ColumnStatus;-><init>()V

    aput-object v6, v5, v4

    .line 2104
    aget-object v5, v0, v4

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2105
    .local v1, "columnkk":[Ljava/lang/String;
    array-length v5, v1

    if-lt v5, v7, :cond_5

    .line 2106
    aget-object v5, v1, v9

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2107
    .local v2, "columnkk_name":[Ljava/lang/String;
    array-length v5, v2

    if-lt v5, v7, :cond_2

    .line 2108
    sget-object v5, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v5, v5, v4

    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/gemini/play/ColumnStatus;->id:I

    .line 2109
    :cond_2
    array-length v5, v2

    if-lt v5, v10, :cond_3

    .line 2110
    sget-object v5, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v5, v5, v4

    aget-object v6, v2, v7

    iput-object v6, v5, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    .line 2111
    :cond_3
    array-length v5, v2

    if-lt v5, v11, :cond_4

    .line 2112
    sget-object v5, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v5, v5, v4

    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/gemini/play/ColumnStatus;->needps:I

    .line 2113
    :cond_4
    array-length v5, v2

    const/4 v6, 0x4

    if-lt v5, v6, :cond_5

    .line 2114
    sget-object v5, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v5, v5, v4

    aget-object v6, v2, v11

    iput-object v6, v5, Lcom/gemini/play/ColumnStatus;->password:Ljava/lang/String;

    .line 2117
    .end local v2    # "columnkk_name":[Ljava/lang/String;
    :cond_5
    array-length v5, v1

    const/4 v6, 0x4

    if-lt v5, v6, :cond_9

    .line 2118
    const/4 v3, 0x1

    .local v3, "ii":I
    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_9

    .line 2119
    aget-object v5, v1, v3

    const-string v6, "type#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2120
    sget-object v5, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v5, v5, v4

    aget-object v6, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    .line 2118
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2121
    :cond_7
    aget-object v5, v1, v3

    const-string v6, "area#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2122
    sget-object v5, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v5, v5, v4

    aget-object v6, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/gemini/play/ColumnStatus;->type_area:Ljava/lang/String;

    goto :goto_2

    .line 2123
    :cond_8
    aget-object v5, v1, v3

    const-string v6, "year#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2124
    sget-object v5, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v5, v5, v4

    aget-object v6, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/gemini/play/ColumnStatus;->type_year:Ljava/lang/String;

    goto :goto_2

    .line 2128
    .end local v3    # "ii":I
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "columner["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "columner["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].needps = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/gemini/play/ColumnStatus;->needps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "columner["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].password = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/gemini/play/ColumnStatus;->password:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "columner["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].type_type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "columner["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].type_area = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/gemini/play/ColumnStatus;->type_area:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "columner["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].type_year = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/gemini/play/ColumnStatus;->type_year:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2102
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public static isPlaying()Z
    .locals 2

    .prologue
    .line 1800
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    if-eqz v0, :cond_0

    .line 1801
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v0

    .line 1809
    :goto_0
    return v0

    .line 1802
    :cond_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_1

    .line 1803
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 1804
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_2

    .line 1805
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/VideoView;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 1806
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    if-eqz v0, :cond_3

    .line 1807
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0}, Lcom/gemini/play/ExoPlayerView;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 1809
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static listClear()V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    sget-object v0, Lcom/gemini/play/VODplayer;->VodListArray0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    sget-object v0, Lcom/gemini/play/VODplayer;->VodListArray1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    sget-object v0, Lcom/gemini/play/VODplayer;->VodListArray2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    sget-object v0, Lcom/gemini/play/VODplayer;->VodListArray3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    return-void
.end method

.method public static listGet(I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    sget-object v0, Lcom/gemini/play/VODplayer;->VodListArray0:Ljava/util/ArrayList;

    .line 180
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 174
    sget-object v0, Lcom/gemini/play/VODplayer;->VodListArray1:Ljava/util/ArrayList;

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 176
    sget-object v0, Lcom/gemini/play/VODplayer;->VodListArray2:Ljava/util/ArrayList;

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 178
    sget-object v0, Lcom/gemini/play/VODplayer;->VodListArray3:Ljava/util/ArrayList;

    goto :goto_0

    .line 180
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static listGet(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "index":I
    if-nez v0, :cond_2

    .line 190
    sget-object v1, Lcom/gemini/play/VODplayer;->VodListArray0:Ljava/util/ArrayList;

    goto :goto_0

    .line 191
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 192
    sget-object v1, Lcom/gemini/play/VODplayer;->VodListArray1:Ljava/util/ArrayList;

    goto :goto_0

    .line 193
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 194
    sget-object v1, Lcom/gemini/play/VODplayer;->VodListArray2:Ljava/util/ArrayList;

    goto :goto_0

    .line 195
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 196
    sget-object v1, Lcom/gemini/play/VODplayer;->VodListArray3:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static parseCollectXML(Ljava/lang/String;I)Lcom/gemini/play/VodListStatus;
    .locals 37
    .param p0, "info_type"    # Ljava/lang/String;
    .param p1, "vodid"    # I

    .prologue
    .line 216
    new-instance v23, Lcom/gemini/play/MainVodDB;

    sget-object v35, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/gemini/play/MainVodDB;-><init>(Landroid/content/Context;)V

    .line 218
    .local v23, "mainvoddber":Lcom/gemini/play/MainVodDB;
    new-instance v29, Lcom/gemini/play/VodListStatus;

    invoke-direct/range {v29 .. v29}, Lcom/gemini/play/VodListStatus;-><init>()V

    .line 220
    .local v29, "s":Lcom/gemini/play/VodListStatus;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    .line 224
    .local v14, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/vod_collect.php?type="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "&id="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Lcom/gemini/play/MGplayer;->get_key_value()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, "collecturl":Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "url:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 226
    new-instance v24, Ljava/net/URL;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 227
    .local v24, "myURL":Ljava/net/URL;
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    .line 228
    .local v11, "conn":Ljava/net/URLConnection;
    const/16 v35, 0x7d0

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 229
    const/16 v35, 0x7d0

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 230
    invoke-virtual {v11}, Ljava/net/URLConnection;->connect()V

    .line 231
    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    .line 233
    .local v22, "is":Ljava/io/InputStream;
    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 234
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v12

    .line 235
    .local v12, "doc":Lorg/w3c/dom/Document;
    const-string v35, "item"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 237
    .local v26, "nl":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    move/from16 v0, v35

    if-ge v15, v0, :cond_d

    .line 239
    const/16 v16, 0x0

    .line 240
    .local v16, "id":Ljava/lang/String;
    const-string v35, "id"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 241
    const-string v35, "id"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 243
    :cond_0
    if-eqz v16, :cond_b

    invoke-static/range {v16 .. v16}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 245
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->id:I

    .line 247
    const-string v35, "name"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v25

    .line 248
    .local v25, "name":Lorg/w3c/dom/Node;
    if-eqz v25, :cond_1

    .line 249
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    .line 251
    :cond_1
    const-string v35, "image"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    .line 252
    .local v17, "image":Lorg/w3c/dom/Node;
    if-eqz v17, :cond_2

    .line 253
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    .line 254
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "http://"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 255
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/gemini/play/MGplayer;->getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 258
    :cond_2
    const-string v35, "url"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    .line 259
    .local v32, "url":Lorg/w3c/dom/Node;
    if-eqz v32, :cond_3

    .line 260
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 262
    :cond_3
    const-string v35, "area"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 263
    .local v4, "area":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_4

    .line 264
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    .line 266
    :cond_4
    const-string v35, "year"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v34

    .line 267
    .local v34, "year":Lorg/w3c/dom/Node;
    if-eqz v34, :cond_5

    .line 268
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    .line 270
    :cond_5
    const-string v35, "type"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v33

    .line 271
    .local v33, "xtype":Lorg/w3c/dom/Node;
    if-eqz v33, :cond_6

    .line 272
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    .line 274
    :cond_6
    const-string v35, "intro1"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    .line 275
    .local v18, "intro1":Lorg/w3c/dom/Node;
    if-eqz v18, :cond_7

    .line 276
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro1:Ljava/lang/String;

    .line 277
    :cond_7
    const-string v35, "intro2"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    .line 278
    .local v19, "intro2":Lorg/w3c/dom/Node;
    if-eqz v19, :cond_8

    .line 279
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro2:Ljava/lang/String;

    .line 280
    :cond_8
    const-string v35, "intro3"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v20

    .line 281
    .local v20, "intro3":Lorg/w3c/dom/Node;
    if-eqz v20, :cond_9

    .line 282
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    .line 283
    :cond_9
    const-string v35, "intro4"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    .line 284
    .local v21, "intro4":Lorg/w3c/dom/Node;
    if-eqz v21, :cond_a

    .line 285
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    .line 287
    :cond_a
    const-string v35, "clickrate"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    .line 288
    .local v8, "clickrate":Lorg/w3c/dom/Node;
    if-eqz v8, :cond_e

    .line 289
    const-string v35, "clickrate"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, "clickratev":Ljava/lang/String;
    invoke-static {v9}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 291
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->clickrate:I

    .line 298
    .end local v9    # "clickratev":Ljava/lang/String;
    :goto_1
    const-string v35, "recommend"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v27

    .line 299
    .local v27, "recommend":Lorg/w3c/dom/Node;
    if-eqz v27, :cond_10

    .line 300
    const-string v35, "recommend"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    .line 301
    .local v28, "recommendv":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_f

    .line 302
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I

    .line 309
    .end local v28    # "recommendv":Ljava/lang/String;
    :goto_2
    const-string v35, "chage"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    .line 310
    .local v6, "chage":Lorg/w3c/dom/Node;
    if-eqz v6, :cond_12

    .line 311
    const-string v35, "chage"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 312
    .local v7, "chagev":Ljava/lang/String;
    invoke-static {v7}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 313
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->chage:F

    .line 320
    .end local v7    # "chagev":Ljava/lang/String;
    :goto_3
    const-string v35, "updatetime"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v30

    .line 321
    .local v30, "updatetime":Lorg/w3c/dom/Node;
    if-eqz v30, :cond_14

    .line 322
    const-string v35, "updatetime"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v31

    .line 323
    .local v31, "updatetimev":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 324
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I

    .line 331
    .end local v31    # "updatetimev":Ljava/lang/String;
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 332
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/gemini/play/MainVodDB;->insert(Lcom/gemini/play/VodListStatus;Landroid/graphics/Bitmap;I)J

    .line 237
    .end local v4    # "area":Lorg/w3c/dom/Node;
    .end local v6    # "chage":Lorg/w3c/dom/Node;
    .end local v8    # "clickrate":Lorg/w3c/dom/Node;
    .end local v17    # "image":Lorg/w3c/dom/Node;
    .end local v18    # "intro1":Lorg/w3c/dom/Node;
    .end local v19    # "intro2":Lorg/w3c/dom/Node;
    .end local v20    # "intro3":Lorg/w3c/dom/Node;
    .end local v21    # "intro4":Lorg/w3c/dom/Node;
    .end local v25    # "name":Lorg/w3c/dom/Node;
    .end local v27    # "recommend":Lorg/w3c/dom/Node;
    .end local v30    # "updatetime":Lorg/w3c/dom/Node;
    .end local v32    # "url":Lorg/w3c/dom/Node;
    .end local v33    # "xtype":Lorg/w3c/dom/Node;
    .end local v34    # "year":Lorg/w3c/dom/Node;
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 293
    .restart local v4    # "area":Lorg/w3c/dom/Node;
    .restart local v8    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v9    # "clickratev":Ljava/lang/String;
    .restart local v17    # "image":Lorg/w3c/dom/Node;
    .restart local v18    # "intro1":Lorg/w3c/dom/Node;
    .restart local v19    # "intro2":Lorg/w3c/dom/Node;
    .restart local v20    # "intro3":Lorg/w3c/dom/Node;
    .restart local v21    # "intro4":Lorg/w3c/dom/Node;
    .restart local v25    # "name":Lorg/w3c/dom/Node;
    .restart local v32    # "url":Lorg/w3c/dom/Node;
    .restart local v33    # "xtype":Lorg/w3c/dom/Node;
    .restart local v34    # "year":Lorg/w3c/dom/Node;
    :cond_c
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->clickrate:I
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    .line 337
    .end local v4    # "area":Lorg/w3c/dom/Node;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "clickrate":Lorg/w3c/dom/Node;
    .end local v9    # "clickratev":Ljava/lang/String;
    .end local v10    # "collecturl":Ljava/lang/String;
    .end local v11    # "conn":Ljava/net/URLConnection;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "i":I
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "image":Lorg/w3c/dom/Node;
    .end local v18    # "intro1":Lorg/w3c/dom/Node;
    .end local v19    # "intro2":Lorg/w3c/dom/Node;
    .end local v20    # "intro3":Lorg/w3c/dom/Node;
    .end local v21    # "intro4":Lorg/w3c/dom/Node;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v24    # "myURL":Ljava/net/URL;
    .end local v25    # "name":Lorg/w3c/dom/Node;
    .end local v26    # "nl":Lorg/w3c/dom/NodeList;
    .end local v32    # "url":Lorg/w3c/dom/Node;
    .end local v33    # "xtype":Lorg/w3c/dom/Node;
    .end local v34    # "year":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v13

    .line 338
    .local v13, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 345
    .end local v13    # "e":Lorg/xml/sax/SAXException;
    :goto_5
    const/16 v29, 0x0

    .end local v29    # "s":Lcom/gemini/play/VodListStatus;
    :cond_d
    return-object v29

    .line 295
    .restart local v4    # "area":Lorg/w3c/dom/Node;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v10    # "collecturl":Ljava/lang/String;
    .restart local v11    # "conn":Ljava/net/URLConnection;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v15    # "i":I
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v17    # "image":Lorg/w3c/dom/Node;
    .restart local v18    # "intro1":Lorg/w3c/dom/Node;
    .restart local v19    # "intro2":Lorg/w3c/dom/Node;
    .restart local v20    # "intro3":Lorg/w3c/dom/Node;
    .restart local v21    # "intro4":Lorg/w3c/dom/Node;
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v24    # "myURL":Ljava/net/URL;
    .restart local v25    # "name":Lorg/w3c/dom/Node;
    .restart local v26    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v29    # "s":Lcom/gemini/play/VodListStatus;
    .restart local v32    # "url":Lorg/w3c/dom/Node;
    .restart local v33    # "xtype":Lorg/w3c/dom/Node;
    .restart local v34    # "year":Lorg/w3c/dom/Node;
    :cond_e
    const/16 v35, 0x0

    :try_start_1
    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->clickrate:I
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 339
    .end local v4    # "area":Lorg/w3c/dom/Node;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "clickrate":Lorg/w3c/dom/Node;
    .end local v10    # "collecturl":Ljava/lang/String;
    .end local v11    # "conn":Ljava/net/URLConnection;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "i":I
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "image":Lorg/w3c/dom/Node;
    .end local v18    # "intro1":Lorg/w3c/dom/Node;
    .end local v19    # "intro2":Lorg/w3c/dom/Node;
    .end local v20    # "intro3":Lorg/w3c/dom/Node;
    .end local v21    # "intro4":Lorg/w3c/dom/Node;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v24    # "myURL":Ljava/net/URL;
    .end local v25    # "name":Lorg/w3c/dom/Node;
    .end local v26    # "nl":Lorg/w3c/dom/NodeList;
    .end local v32    # "url":Lorg/w3c/dom/Node;
    .end local v33    # "xtype":Lorg/w3c/dom/Node;
    .end local v34    # "year":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v13

    .line 340
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 304
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v4    # "area":Lorg/w3c/dom/Node;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v10    # "collecturl":Ljava/lang/String;
    .restart local v11    # "conn":Ljava/net/URLConnection;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v15    # "i":I
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v17    # "image":Lorg/w3c/dom/Node;
    .restart local v18    # "intro1":Lorg/w3c/dom/Node;
    .restart local v19    # "intro2":Lorg/w3c/dom/Node;
    .restart local v20    # "intro3":Lorg/w3c/dom/Node;
    .restart local v21    # "intro4":Lorg/w3c/dom/Node;
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v24    # "myURL":Ljava/net/URL;
    .restart local v25    # "name":Lorg/w3c/dom/Node;
    .restart local v26    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v27    # "recommend":Lorg/w3c/dom/Node;
    .restart local v28    # "recommendv":Ljava/lang/String;
    .restart local v32    # "url":Lorg/w3c/dom/Node;
    .restart local v33    # "xtype":Lorg/w3c/dom/Node;
    .restart local v34    # "year":Lorg/w3c/dom/Node;
    :cond_f
    const/16 v35, 0x0

    :try_start_2
    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 341
    .end local v4    # "area":Lorg/w3c/dom/Node;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "clickrate":Lorg/w3c/dom/Node;
    .end local v10    # "collecturl":Ljava/lang/String;
    .end local v11    # "conn":Ljava/net/URLConnection;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "i":I
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "image":Lorg/w3c/dom/Node;
    .end local v18    # "intro1":Lorg/w3c/dom/Node;
    .end local v19    # "intro2":Lorg/w3c/dom/Node;
    .end local v20    # "intro3":Lorg/w3c/dom/Node;
    .end local v21    # "intro4":Lorg/w3c/dom/Node;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v24    # "myURL":Ljava/net/URL;
    .end local v25    # "name":Lorg/w3c/dom/Node;
    .end local v26    # "nl":Lorg/w3c/dom/NodeList;
    .end local v27    # "recommend":Lorg/w3c/dom/Node;
    .end local v28    # "recommendv":Ljava/lang/String;
    .end local v32    # "url":Lorg/w3c/dom/Node;
    .end local v33    # "xtype":Lorg/w3c/dom/Node;
    .end local v34    # "year":Lorg/w3c/dom/Node;
    :catch_2
    move-exception v13

    .line 342
    .local v13, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v13}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_5

    .line 306
    .end local v13    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v4    # "area":Lorg/w3c/dom/Node;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v10    # "collecturl":Ljava/lang/String;
    .restart local v11    # "conn":Ljava/net/URLConnection;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v15    # "i":I
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v17    # "image":Lorg/w3c/dom/Node;
    .restart local v18    # "intro1":Lorg/w3c/dom/Node;
    .restart local v19    # "intro2":Lorg/w3c/dom/Node;
    .restart local v20    # "intro3":Lorg/w3c/dom/Node;
    .restart local v21    # "intro4":Lorg/w3c/dom/Node;
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v24    # "myURL":Ljava/net/URL;
    .restart local v25    # "name":Lorg/w3c/dom/Node;
    .restart local v26    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v27    # "recommend":Lorg/w3c/dom/Node;
    .restart local v32    # "url":Lorg/w3c/dom/Node;
    .restart local v33    # "xtype":Lorg/w3c/dom/Node;
    .restart local v34    # "year":Lorg/w3c/dom/Node;
    :cond_10
    const/16 v35, 0x0

    :try_start_3
    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I

    goto/16 :goto_2

    .line 315
    .restart local v6    # "chage":Lorg/w3c/dom/Node;
    .restart local v7    # "chagev":Ljava/lang/String;
    :cond_11
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->chage:F

    goto/16 :goto_3

    .line 317
    .end local v7    # "chagev":Ljava/lang/String;
    :cond_12
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->chage:F

    goto/16 :goto_3

    .line 326
    .restart local v30    # "updatetime":Lorg/w3c/dom/Node;
    .restart local v31    # "updatetimev":Ljava/lang/String;
    :cond_13
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I

    goto :goto_4

    .line 328
    .end local v31    # "updatetimev":Ljava/lang/String;
    :cond_14
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4
.end method

.method public static parseGzipXML(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "gurl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "purl":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/vod_gzip.php?type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/VODplayer;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    :goto_0
    const/16 v2, 0x1388

    invoke-static {v0, v2}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "xml":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 653
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->uncompress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 663
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 648
    .end local v1    # "xml":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static parseMainDB()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    sget-object v2, Lcom/gemini/play/VODplayer;->VodListArray0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 351
    new-instance v0, Lcom/gemini/play/MainVodDB;

    sget-object v2, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/gemini/play/MainVodDB;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, "mainvoddber":Lcom/gemini/play/MainVodDB;
    invoke-virtual {v0}, Lcom/gemini/play/MainVodDB;->parseAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 353
    .local v1, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    sput-object v1, Lcom/gemini/play/VODplayer;->VodListArray0:Ljava/util/ArrayList;

    .line 354
    return-object v1
.end method

.method public static parseMainXML()Ljava/util/ArrayList;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v4, "VodListArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    new-instance v24, Lcom/gemini/play/MainVodDB;

    sget-object v36, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/gemini/play/MainVodDB;-><init>(Landroid/content/Context;)V

    .line 363
    .local v24, "mainvoddber":Lcom/gemini/play/MainVodDB;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    .line 367
    .local v14, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "vod_main:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "/vod_main.php?type="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {}, Lcom/gemini/play/MGplayer;->get_key_value()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 368
    new-instance v25, Ljava/net/URL;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "/vod_main.php?type="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {}, Lcom/gemini/play/MGplayer;->get_key_value()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 369
    .local v25, "myURL":Ljava/net/URL;
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    .line 370
    .local v11, "conn":Ljava/net/URLConnection;
    const/16 v36, 0x7d0

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 371
    const/16 v36, 0x7d0

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 372
    invoke-virtual {v11}, Ljava/net/URLConnection;->connect()V

    .line 373
    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    .line 374
    .local v23, "is":Ljava/io/InputStream;
    if-nez v23, :cond_1

    .line 375
    const/4 v4, 0x0

    .line 512
    .end local v4    # "VodListArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    .end local v11    # "conn":Ljava/net/URLConnection;
    .end local v23    # "is":Ljava/io/InputStream;
    .end local v25    # "myURL":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v4

    .line 377
    .restart local v4    # "VodListArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    .restart local v11    # "conn":Ljava/net/URLConnection;
    .restart local v23    # "is":Ljava/io/InputStream;
    .restart local v25    # "myURL":Ljava/net/URL;
    :cond_1
    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 378
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v12

    .line 379
    .local v12, "doc":Lorg/w3c/dom/Document;
    if-nez v12, :cond_2

    .line 380
    const/4 v4, 0x0

    goto :goto_0

    .line 382
    :cond_2
    const-string v36, "item"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 383
    .local v27, "nl":Lorg/w3c/dom/NodeList;
    if-nez v27, :cond_3

    .line 384
    const/4 v4, 0x0

    goto :goto_0

    .line 386
    :cond_3
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v36

    move/from16 v0, v36

    if-ge v15, v0, :cond_0

    .line 387
    const/16 v16, 0x0

    .line 388
    .local v16, "id":Ljava/lang/String;
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    if-eqz v36, :cond_4

    .line 389
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 391
    :cond_4
    if-eqz v16, :cond_f

    invoke-static/range {v16 .. v16}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_f

    .line 392
    new-instance v30, Lcom/gemini/play/VodListStatus;

    invoke-direct/range {v30 .. v30}, Lcom/gemini/play/VodListStatus;-><init>()V

    .line 393
    .local v30, "s":Lcom/gemini/play/VodListStatus;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->id:I

    .line 395
    const-string v36, "name"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v26

    .line 396
    .local v26, "name":Lorg/w3c/dom/Node;
    if-eqz v26, :cond_5

    .line 397
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    .line 399
    :cond_5
    const-string v36, "image"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    .line 400
    .local v18, "image":Lorg/w3c/dom/Node;
    if-eqz v18, :cond_6

    .line 401
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    .line 402
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "http://"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_11

    .line 403
    const/16 v17, 0x0

    .local v17, "ii":I
    :goto_2
    const/16 v36, 0xa

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_6

    .line 404
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x2710

    invoke-static/range {v36 .. v37}, Lcom/gemini/play/MGplayer;->getHttpBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 405
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    if-eqz v36, :cond_10

    .line 419
    .end local v17    # "ii":I
    :cond_6
    const-string v36, "url"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v33

    .line 420
    .local v33, "url":Lorg/w3c/dom/Node;
    if-eqz v33, :cond_7

    .line 421
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 423
    :cond_7
    const-string v36, "area"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .line 424
    .local v5, "area":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_8

    .line 425
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    .line 427
    :cond_8
    const-string v36, "year"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    .line 428
    .local v35, "year":Lorg/w3c/dom/Node;
    if-eqz v35, :cond_9

    .line 429
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    .line 431
    :cond_9
    const-string v36, "type"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v34

    .line 432
    .local v34, "xtype":Lorg/w3c/dom/Node;
    if-eqz v34, :cond_a

    .line 433
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    .line 435
    :cond_a
    const-string v36, "intro1"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    .line 436
    .local v19, "intro1":Lorg/w3c/dom/Node;
    if-eqz v19, :cond_b

    .line 437
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro1:Ljava/lang/String;

    .line 438
    :cond_b
    const-string v36, "intro2"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v20

    .line 439
    .local v20, "intro2":Lorg/w3c/dom/Node;
    if-eqz v20, :cond_c

    .line 440
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro2:Ljava/lang/String;

    .line 441
    :cond_c
    const-string v36, "intro3"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    .line 442
    .local v21, "intro3":Lorg/w3c/dom/Node;
    if-eqz v21, :cond_d

    .line 443
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    .line 444
    :cond_d
    const-string v36, "intro4"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v22

    .line 445
    .local v22, "intro4":Lorg/w3c/dom/Node;
    if-eqz v22, :cond_e

    .line 446
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    .line 448
    :cond_e
    const-string v36, "clickrate"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    .line 449
    .local v9, "clickrate":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_13

    .line 450
    const-string v36, "clickrate"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 451
    .local v10, "clickratev":Ljava/lang/String;
    invoke-static {v10}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_12

    .line 452
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->clickrate:I

    .line 459
    .end local v10    # "clickratev":Ljava/lang/String;
    :goto_3
    const-string v36, "recommend"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v28

    .line 460
    .local v28, "recommend":Lorg/w3c/dom/Node;
    if-eqz v28, :cond_15

    .line 461
    const-string v36, "recommend"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v29

    .line 462
    .local v29, "recommendv":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_14

    .line 463
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I

    .line 470
    .end local v29    # "recommendv":Ljava/lang/String;
    :goto_4
    const-string v36, "chage"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    .line 471
    .local v7, "chage":Lorg/w3c/dom/Node;
    if-eqz v7, :cond_17

    .line 472
    const-string v36, "chage"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 473
    .local v8, "chagev":Ljava/lang/String;
    invoke-static {v8}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_16

    .line 474
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->chage:F

    .line 481
    .end local v8    # "chagev":Ljava/lang/String;
    :goto_5
    const-string v36, "updatetime"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v31

    .line 482
    .local v31, "updatetime":Lorg/w3c/dom/Node;
    if-eqz v31, :cond_19

    .line 483
    const-string v36, "updatetime"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v32

    .line 484
    .local v32, "updatetimev":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_18

    .line 485
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I

    .line 492
    .end local v32    # "updatetimev":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v30

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    move/from16 v36, v0

    if-eqz v36, :cond_f

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_f

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    const/16 v37, 0x7

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_f

    .line 493
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/gemini/play/MainVodDB;->insert(Lcom/gemini/play/VodListStatus;Landroid/graphics/Bitmap;I)J

    .line 494
    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v36, Lcom/gemini/play/VODplayer;->VodListArray0:Ljava/util/ArrayList;

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-le v0, v15, :cond_1a

    .line 496
    sget-object v36, Lcom/gemini/play/VODplayer;->VodListArray0:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    .end local v5    # "area":Lorg/w3c/dom/Node;
    .end local v7    # "chage":Lorg/w3c/dom/Node;
    .end local v9    # "clickrate":Lorg/w3c/dom/Node;
    .end local v18    # "image":Lorg/w3c/dom/Node;
    .end local v19    # "intro1":Lorg/w3c/dom/Node;
    .end local v20    # "intro2":Lorg/w3c/dom/Node;
    .end local v21    # "intro3":Lorg/w3c/dom/Node;
    .end local v22    # "intro4":Lorg/w3c/dom/Node;
    .end local v26    # "name":Lorg/w3c/dom/Node;
    .end local v28    # "recommend":Lorg/w3c/dom/Node;
    .end local v30    # "s":Lcom/gemini/play/VodListStatus;
    .end local v31    # "updatetime":Lorg/w3c/dom/Node;
    .end local v33    # "url":Lorg/w3c/dom/Node;
    .end local v34    # "xtype":Lorg/w3c/dom/Node;
    .end local v35    # "year":Lorg/w3c/dom/Node;
    :cond_f
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 403
    .restart local v17    # "ii":I
    .restart local v18    # "image":Lorg/w3c/dom/Node;
    .restart local v26    # "name":Lorg/w3c/dom/Node;
    .restart local v30    # "s":Lcom/gemini/play/VodListStatus;
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 411
    .end local v17    # "ii":I
    :cond_11
    const/16 v17, 0x0

    .restart local v17    # "ii":I
    :goto_8
    const/16 v36, 0xa

    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_6

    .line 412
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "/images/vodpic/"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x2710

    invoke-static/range {v36 .. v37}, Lcom/gemini/play/MGplayer;->getHttpBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 413
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    if-nez v36, :cond_6

    .line 411
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 454
    .end local v17    # "ii":I
    .restart local v5    # "area":Lorg/w3c/dom/Node;
    .restart local v9    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v10    # "clickratev":Ljava/lang/String;
    .restart local v19    # "intro1":Lorg/w3c/dom/Node;
    .restart local v20    # "intro2":Lorg/w3c/dom/Node;
    .restart local v21    # "intro3":Lorg/w3c/dom/Node;
    .restart local v22    # "intro4":Lorg/w3c/dom/Node;
    .restart local v33    # "url":Lorg/w3c/dom/Node;
    .restart local v34    # "xtype":Lorg/w3c/dom/Node;
    .restart local v35    # "year":Lorg/w3c/dom/Node;
    :cond_12
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->clickrate:I
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_3

    .line 504
    .end local v5    # "area":Lorg/w3c/dom/Node;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "clickrate":Lorg/w3c/dom/Node;
    .end local v10    # "clickratev":Ljava/lang/String;
    .end local v11    # "conn":Ljava/net/URLConnection;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "i":I
    .end local v16    # "id":Ljava/lang/String;
    .end local v18    # "image":Lorg/w3c/dom/Node;
    .end local v19    # "intro1":Lorg/w3c/dom/Node;
    .end local v20    # "intro2":Lorg/w3c/dom/Node;
    .end local v21    # "intro3":Lorg/w3c/dom/Node;
    .end local v22    # "intro4":Lorg/w3c/dom/Node;
    .end local v23    # "is":Ljava/io/InputStream;
    .end local v25    # "myURL":Ljava/net/URL;
    .end local v26    # "name":Lorg/w3c/dom/Node;
    .end local v27    # "nl":Lorg/w3c/dom/NodeList;
    .end local v30    # "s":Lcom/gemini/play/VodListStatus;
    .end local v33    # "url":Lorg/w3c/dom/Node;
    .end local v34    # "xtype":Lorg/w3c/dom/Node;
    .end local v35    # "year":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v13

    .line 505
    .local v13, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 512
    .end local v13    # "e":Lorg/xml/sax/SAXException;
    :goto_9
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 456
    .restart local v5    # "area":Lorg/w3c/dom/Node;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v11    # "conn":Ljava/net/URLConnection;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v15    # "i":I
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v18    # "image":Lorg/w3c/dom/Node;
    .restart local v19    # "intro1":Lorg/w3c/dom/Node;
    .restart local v20    # "intro2":Lorg/w3c/dom/Node;
    .restart local v21    # "intro3":Lorg/w3c/dom/Node;
    .restart local v22    # "intro4":Lorg/w3c/dom/Node;
    .restart local v23    # "is":Ljava/io/InputStream;
    .restart local v25    # "myURL":Ljava/net/URL;
    .restart local v26    # "name":Lorg/w3c/dom/Node;
    .restart local v27    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v30    # "s":Lcom/gemini/play/VodListStatus;
    .restart local v33    # "url":Lorg/w3c/dom/Node;
    .restart local v34    # "xtype":Lorg/w3c/dom/Node;
    .restart local v35    # "year":Lorg/w3c/dom/Node;
    :cond_13
    const/16 v36, 0x0

    :try_start_1
    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->clickrate:I
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    .line 506
    .end local v5    # "area":Lorg/w3c/dom/Node;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "clickrate":Lorg/w3c/dom/Node;
    .end local v11    # "conn":Ljava/net/URLConnection;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "i":I
    .end local v16    # "id":Ljava/lang/String;
    .end local v18    # "image":Lorg/w3c/dom/Node;
    .end local v19    # "intro1":Lorg/w3c/dom/Node;
    .end local v20    # "intro2":Lorg/w3c/dom/Node;
    .end local v21    # "intro3":Lorg/w3c/dom/Node;
    .end local v22    # "intro4":Lorg/w3c/dom/Node;
    .end local v23    # "is":Ljava/io/InputStream;
    .end local v25    # "myURL":Ljava/net/URL;
    .end local v26    # "name":Lorg/w3c/dom/Node;
    .end local v27    # "nl":Lorg/w3c/dom/NodeList;
    .end local v30    # "s":Lcom/gemini/play/VodListStatus;
    .end local v33    # "url":Lorg/w3c/dom/Node;
    .end local v34    # "xtype":Lorg/w3c/dom/Node;
    .end local v35    # "year":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v13

    .line 507
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 465
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v5    # "area":Lorg/w3c/dom/Node;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v11    # "conn":Ljava/net/URLConnection;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v15    # "i":I
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v18    # "image":Lorg/w3c/dom/Node;
    .restart local v19    # "intro1":Lorg/w3c/dom/Node;
    .restart local v20    # "intro2":Lorg/w3c/dom/Node;
    .restart local v21    # "intro3":Lorg/w3c/dom/Node;
    .restart local v22    # "intro4":Lorg/w3c/dom/Node;
    .restart local v23    # "is":Ljava/io/InputStream;
    .restart local v25    # "myURL":Ljava/net/URL;
    .restart local v26    # "name":Lorg/w3c/dom/Node;
    .restart local v27    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v28    # "recommend":Lorg/w3c/dom/Node;
    .restart local v29    # "recommendv":Ljava/lang/String;
    .restart local v30    # "s":Lcom/gemini/play/VodListStatus;
    .restart local v33    # "url":Lorg/w3c/dom/Node;
    .restart local v34    # "xtype":Lorg/w3c/dom/Node;
    .restart local v35    # "year":Lorg/w3c/dom/Node;
    :cond_14
    const/16 v36, 0x0

    :try_start_2
    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 508
    .end local v5    # "area":Lorg/w3c/dom/Node;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "clickrate":Lorg/w3c/dom/Node;
    .end local v11    # "conn":Ljava/net/URLConnection;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "i":I
    .end local v16    # "id":Ljava/lang/String;
    .end local v18    # "image":Lorg/w3c/dom/Node;
    .end local v19    # "intro1":Lorg/w3c/dom/Node;
    .end local v20    # "intro2":Lorg/w3c/dom/Node;
    .end local v21    # "intro3":Lorg/w3c/dom/Node;
    .end local v22    # "intro4":Lorg/w3c/dom/Node;
    .end local v23    # "is":Ljava/io/InputStream;
    .end local v25    # "myURL":Ljava/net/URL;
    .end local v26    # "name":Lorg/w3c/dom/Node;
    .end local v27    # "nl":Lorg/w3c/dom/NodeList;
    .end local v28    # "recommend":Lorg/w3c/dom/Node;
    .end local v29    # "recommendv":Ljava/lang/String;
    .end local v30    # "s":Lcom/gemini/play/VodListStatus;
    .end local v33    # "url":Lorg/w3c/dom/Node;
    .end local v34    # "xtype":Lorg/w3c/dom/Node;
    .end local v35    # "year":Lorg/w3c/dom/Node;
    :catch_2
    move-exception v13

    .line 509
    .local v13, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v13}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_9

    .line 467
    .end local v13    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v5    # "area":Lorg/w3c/dom/Node;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v11    # "conn":Ljava/net/URLConnection;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v15    # "i":I
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v18    # "image":Lorg/w3c/dom/Node;
    .restart local v19    # "intro1":Lorg/w3c/dom/Node;
    .restart local v20    # "intro2":Lorg/w3c/dom/Node;
    .restart local v21    # "intro3":Lorg/w3c/dom/Node;
    .restart local v22    # "intro4":Lorg/w3c/dom/Node;
    .restart local v23    # "is":Ljava/io/InputStream;
    .restart local v25    # "myURL":Ljava/net/URL;
    .restart local v26    # "name":Lorg/w3c/dom/Node;
    .restart local v27    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v28    # "recommend":Lorg/w3c/dom/Node;
    .restart local v30    # "s":Lcom/gemini/play/VodListStatus;
    .restart local v33    # "url":Lorg/w3c/dom/Node;
    .restart local v34    # "xtype":Lorg/w3c/dom/Node;
    .restart local v35    # "year":Lorg/w3c/dom/Node;
    :cond_15
    const/16 v36, 0x0

    :try_start_3
    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I

    goto/16 :goto_4

    .line 476
    .restart local v7    # "chage":Lorg/w3c/dom/Node;
    .restart local v8    # "chagev":Ljava/lang/String;
    :cond_16
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->chage:F

    goto/16 :goto_5

    .line 478
    .end local v8    # "chagev":Ljava/lang/String;
    :cond_17
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->chage:F

    goto/16 :goto_5

    .line 487
    .restart local v31    # "updatetime":Lorg/w3c/dom/Node;
    .restart local v32    # "updatetimev":Ljava/lang/String;
    :cond_18
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I

    goto/16 :goto_6

    .line 489
    .end local v32    # "updatetimev":Ljava/lang/String;
    :cond_19
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I

    goto/16 :goto_6

    .line 498
    :cond_1a
    sget-object v36, Lcom/gemini/play/VODplayer;->VodListArray0:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7
.end method

.method public static parseTypeXML(Ljava/lang/String;)V
    .locals 17
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 516
    const/4 v8, 0x0

    .line 517
    .local v8, "index":I
    if-eqz p0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 518
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 519
    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v15, :cond_1

    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    if-le v8, v15, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    new-instance v12, Lcom/gemini/play/VodTypeStatus;

    invoke-direct {v12}, Lcom/gemini/play/VodTypeStatus;-><init>()V

    .line 526
    .local v12, "s":Lcom/gemini/play/VodTypeStatus;
    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v15, :cond_9

    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-nez v15, :cond_2

    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    if-nez v15, :cond_2

    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/gemini/play/ColumnStatus;->type_year:Ljava/lang/String;

    if-nez v15, :cond_2

    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/gemini/play/ColumnStatus;->type_area:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 527
    :cond_2
    const-string v15, "GET VOD TYPE FOR MEN"

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 528
    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    if-eqz v15, :cond_3

    .line 529
    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    const-string v16, "\\|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    .line 531
    :cond_3
    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/gemini/play/ColumnStatus;->type_year:Ljava/lang/String;

    if-eqz v15, :cond_4

    .line 532
    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/gemini/play/ColumnStatus;->type_year:Ljava/lang/String;

    const-string v16, "\\|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    .line 534
    :cond_4
    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/gemini/play/ColumnStatus;->type_area:Ljava/lang/String;

    if-eqz v15, :cond_5

    .line 535
    sget-object v15, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/gemini/play/ColumnStatus;->type_area:Ljava/lang/String;

    const-string v16, "\\|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    .line 537
    :cond_5
    if-nez v8, :cond_6

    .line 538
    sput-object v12, Lcom/gemini/play/VODplayer;->VodType0:Lcom/gemini/play/VodTypeStatus;

    .line 539
    :cond_6
    const/4 v15, 0x1

    if-ne v8, v15, :cond_7

    .line 540
    sput-object v12, Lcom/gemini/play/VODplayer;->VodType1:Lcom/gemini/play/VodTypeStatus;

    .line 541
    :cond_7
    const/4 v15, 0x2

    if-ne v8, v15, :cond_8

    .line 542
    sput-object v12, Lcom/gemini/play/VODplayer;->VodType2:Lcom/gemini/play/VodTypeStatus;

    .line 543
    :cond_8
    const/4 v15, 0x3

    if-ne v8, v15, :cond_0

    .line 544
    sput-object v12, Lcom/gemini/play/VODplayer;->VodType3:Lcom/gemini/play/VodTypeStatus;

    goto/16 :goto_0

    .line 546
    :cond_9
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 550
    .local v6, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/vod_type_xml.php?type="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/gemini/play/MGplayer;->get_key_value()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 551
    .local v10, "myURL":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 552
    .local v3, "conn":Ljava/net/URLConnection;
    const/16 v15, 0x7d0

    invoke-virtual {v3, v15}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 553
    const/16 v15, 0x7d0

    invoke-virtual {v3, v15}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 554
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 555
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 557
    .local v9, "is":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 558
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 559
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v15, "item"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 562
    .local v11, "nl":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v7, v15, :cond_d

    .line 564
    const-string v15, "type"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    invoke-interface {v15, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 565
    const-string v15, "type"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    invoke-interface {v15, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    .line 566
    .local v13, "xtype":Lorg/w3c/dom/Node;
    if-eqz v13, :cond_a

    .line 567
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\\|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    .line 570
    .end local v13    # "xtype":Lorg/w3c/dom/Node;
    :cond_a
    const-string v15, "year"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    invoke-interface {v15, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 571
    const-string v15, "year"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    invoke-interface {v15, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    .line 572
    .local v14, "year":Lorg/w3c/dom/Node;
    if-eqz v14, :cond_b

    .line 573
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\\|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    .line 576
    .end local v14    # "year":Lorg/w3c/dom/Node;
    :cond_b
    const-string v15, "area"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    invoke-interface {v15, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 577
    const-string v15, "area"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    invoke-interface {v15, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 578
    .local v1, "area":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_c

    .line 579
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\\|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    .line 562
    .end local v1    # "area":Lorg/w3c/dom/Node;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 587
    :cond_d
    if-nez v8, :cond_e

    .line 588
    sput-object v12, Lcom/gemini/play/VODplayer;->VodType0:Lcom/gemini/play/VodTypeStatus;

    .line 589
    :cond_e
    const/4 v15, 0x1

    if-ne v8, v15, :cond_f

    .line 590
    sput-object v12, Lcom/gemini/play/VODplayer;->VodType1:Lcom/gemini/play/VodTypeStatus;

    .line 591
    :cond_f
    const/4 v15, 0x2

    if-ne v8, v15, :cond_10

    .line 592
    sput-object v12, Lcom/gemini/play/VODplayer;->VodType2:Lcom/gemini/play/VodTypeStatus;

    .line 593
    :cond_10
    const/4 v15, 0x3

    if-ne v8, v15, :cond_0

    .line 594
    sput-object v12, Lcom/gemini/play/VODplayer;->VodType3:Lcom/gemini/play/VodTypeStatus;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 595
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "i":I
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "myURL":Ljava/net/URL;
    .end local v11    # "nl":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v5

    .line 597
    .local v5, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    .line 598
    .end local v5    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v5

    .line 600
    .local v5, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .line 601
    .end local v5    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v5

    .line 603
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static parseXML(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/VODplayer;->parseXML(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static parseXML(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 37
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "gurl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    const/16 v17, 0x0

    .line 669
    .local v17, "index":I
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 670
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 671
    const/16 v35, 0x3

    move/from16 v0, v17

    move/from16 v1, v35

    if-le v0, v1, :cond_3

    .line 672
    const/4 v2, 0x0

    .line 849
    :cond_0
    :goto_0
    return-object v2

    .line 674
    :cond_1
    const-string v35, "find"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_2

    const-string v35, "hot"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_2

    const-string v35, "collect"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 676
    :cond_2
    const/16 v17, 0x0

    .line 682
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v2, "VodListArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 689
    .local v12, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v26, 0x0

    .line 690
    .local v26, "purl":Ljava/lang/String;
    if-nez p1, :cond_5

    .line 691
    :try_start_0
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "/vod_xml.php?type="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "&page="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget v36, Lcom/gemini/play/VODplayer;->page:I

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Lcom/gemini/play/MGplayer;->get_key_value()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 696
    :goto_1
    const-string v35, "http://"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_6

    const-string v35, "https://"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_6

    .line 697
    const/4 v2, 0x0

    goto :goto_0

    .line 679
    .end local v2    # "VodListArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    .end local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v26    # "purl":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 693
    .restart local v2    # "VodListArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/VodListStatus;>;"
    .restart local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v26    # "purl":Ljava/lang/String;
    :cond_5
    move-object/from16 v26, p1

    goto :goto_1

    .line 699
    :cond_6
    invoke-static/range {v26 .. v26}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 700
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 701
    .local v23, "myURL":Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 702
    .local v9, "conn":Ljava/net/HttpURLConnection;
    const/16 v35, 0x1388

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 703
    const/16 v35, 0x1388

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 704
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 705
    const/4 v15, 0x0

    .local v15, "ii":I
    :goto_2
    const/16 v35, 0x5

    move/from16 v0, v35

    if-ge v15, v0, :cond_7

    .line 706
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "connect = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v35

    const/16 v36, 0xc8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_7

    .line 708
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 705
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 713
    :cond_7
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v35

    const/16 v36, 0xc8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_8

    .line 714
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 716
    :cond_8
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    .line 717
    .local v22, "is":Ljava/io/InputStream;
    if-nez v22, :cond_9

    .line 718
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 719
    :cond_9
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 720
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 721
    .local v10, "doc":Lorg/w3c/dom/Document;
    if-nez v10, :cond_a

    .line 722
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 723
    :cond_a
    const-string v35, "item"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 724
    .local v25, "nl":Lorg/w3c/dom/NodeList;
    if-nez v25, :cond_b

    .line 725
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 727
    :cond_b
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    move/from16 v0, v35

    if-ge v13, v0, :cond_0

    .line 731
    if-eqz v10, :cond_c

    const-string v35, "id"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    if-eqz v35, :cond_c

    const-string v35, "id"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    if-eqz v35, :cond_c

    const-string v35, "id"

    .line 732
    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    if-nez v35, :cond_d

    .line 733
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 735
    :cond_d
    const-string v35, "id"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 736
    .local v14, "id":Ljava/lang/String;
    invoke-static {v14}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 737
    new-instance v29, Lcom/gemini/play/VodListStatus;

    invoke-direct/range {v29 .. v29}, Lcom/gemini/play/VodListStatus;-><init>()V

    .line 738
    .local v29, "s":Lcom/gemini/play/VodListStatus;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->id:I

    .line 740
    const-string v35, "name"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v24

    .line 741
    .local v24, "name":Lorg/w3c/dom/Node;
    if-eqz v24, :cond_e

    .line 742
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    .line 744
    :cond_e
    const-string v35, "image"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    .line 745
    .local v16, "image":Lorg/w3c/dom/Node;
    if-eqz v16, :cond_f

    .line 746
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    .line 749
    :cond_f
    const-string v35, "url"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    .line 750
    .local v32, "url":Lorg/w3c/dom/Node;
    if-eqz v32, :cond_10

    .line 751
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 753
    :cond_10
    const-string v35, "area"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 754
    .local v3, "area":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_11

    .line 755
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    .line 757
    :cond_11
    const-string v35, "year"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v34

    .line 758
    .local v34, "year":Lorg/w3c/dom/Node;
    if-eqz v34, :cond_12

    .line 759
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    .line 761
    :cond_12
    const-string v35, "type"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v33

    .line 762
    .local v33, "xtype":Lorg/w3c/dom/Node;
    if-eqz v33, :cond_13

    .line 763
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    .line 765
    :cond_13
    const-string v35, "intro1"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    .line 766
    .local v18, "intro1":Lorg/w3c/dom/Node;
    if-eqz v18, :cond_14

    .line 767
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro1:Ljava/lang/String;

    .line 768
    :cond_14
    const-string v35, "intro2"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    .line 769
    .local v19, "intro2":Lorg/w3c/dom/Node;
    if-eqz v19, :cond_15

    .line 770
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro2:Ljava/lang/String;

    .line 771
    :cond_15
    const-string v35, "intro3"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v20

    .line 772
    .local v20, "intro3":Lorg/w3c/dom/Node;
    if-eqz v20, :cond_16

    .line 773
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    .line 774
    :cond_16
    const-string v35, "intro4"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    .line 775
    .local v21, "intro4":Lorg/w3c/dom/Node;
    if-eqz v21, :cond_17

    .line 776
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    .line 778
    :cond_17
    const-string v35, "clickrate"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    .line 779
    .local v7, "clickrate":Lorg/w3c/dom/Node;
    if-eqz v7, :cond_1d

    .line 780
    const-string v35, "clickrate"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 781
    .local v8, "clickratev":Ljava/lang/String;
    invoke-static {v8}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1c

    .line 782
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->clickrate:I

    .line 789
    .end local v8    # "clickratev":Ljava/lang/String;
    :goto_4
    const-string v35, "recommend"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v27

    .line 790
    .local v27, "recommend":Lorg/w3c/dom/Node;
    if-eqz v27, :cond_1f

    .line 791
    const-string v35, "recommend"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    .line 792
    .local v28, "recommendv":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1e

    .line 793
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I

    .line 800
    .end local v28    # "recommendv":Ljava/lang/String;
    :goto_5
    const-string v35, "chage"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .line 801
    .local v5, "chage":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_21

    .line 802
    const-string v35, "chage"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 803
    .local v6, "chagev":Ljava/lang/String;
    invoke-static {v6}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_20

    .line 804
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->chage:F

    .line 811
    .end local v6    # "chagev":Ljava/lang/String;
    :goto_6
    const-string v35, "updatetime"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v30

    .line 812
    .local v30, "updatetime":Lorg/w3c/dom/Node;
    if-eqz v30, :cond_23

    .line 813
    const-string v35, "updatetime"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v31

    .line 814
    .local v31, "updatetimev":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_22

    .line 815
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I

    .line 822
    .end local v31    # "updatetimev":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    if-nez v17, :cond_18

    .line 825
    sget-object v35, Lcom/gemini/play/VODplayer;->VodListArray0:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_18
    const/16 v35, 0x1

    move/from16 v0, v17

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    .line 827
    sget-object v35, Lcom/gemini/play/VODplayer;->VodListArray1:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_19
    const/16 v35, 0x2

    move/from16 v0, v17

    move/from16 v1, v35

    if-ne v0, v1, :cond_1a

    .line 829
    sget-object v35, Lcom/gemini/play/VODplayer;->VodListArray2:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_1a
    const/16 v35, 0x3

    move/from16 v0, v17

    move/from16 v1, v35

    if-ne v0, v1, :cond_1b

    .line 831
    sget-object v35, Lcom/gemini/play/VODplayer;->VodListArray3:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .end local v3    # "area":Lorg/w3c/dom/Node;
    .end local v5    # "chage":Lorg/w3c/dom/Node;
    .end local v7    # "clickrate":Lorg/w3c/dom/Node;
    .end local v16    # "image":Lorg/w3c/dom/Node;
    .end local v18    # "intro1":Lorg/w3c/dom/Node;
    .end local v19    # "intro2":Lorg/w3c/dom/Node;
    .end local v20    # "intro3":Lorg/w3c/dom/Node;
    .end local v21    # "intro4":Lorg/w3c/dom/Node;
    .end local v24    # "name":Lorg/w3c/dom/Node;
    .end local v27    # "recommend":Lorg/w3c/dom/Node;
    .end local v29    # "s":Lcom/gemini/play/VodListStatus;
    .end local v30    # "updatetime":Lorg/w3c/dom/Node;
    .end local v32    # "url":Lorg/w3c/dom/Node;
    .end local v33    # "xtype":Lorg/w3c/dom/Node;
    .end local v34    # "year":Lorg/w3c/dom/Node;
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 784
    .restart local v3    # "area":Lorg/w3c/dom/Node;
    .restart local v7    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v8    # "clickratev":Ljava/lang/String;
    .restart local v16    # "image":Lorg/w3c/dom/Node;
    .restart local v18    # "intro1":Lorg/w3c/dom/Node;
    .restart local v19    # "intro2":Lorg/w3c/dom/Node;
    .restart local v20    # "intro3":Lorg/w3c/dom/Node;
    .restart local v21    # "intro4":Lorg/w3c/dom/Node;
    .restart local v24    # "name":Lorg/w3c/dom/Node;
    .restart local v29    # "s":Lcom/gemini/play/VodListStatus;
    .restart local v32    # "url":Lorg/w3c/dom/Node;
    .restart local v33    # "xtype":Lorg/w3c/dom/Node;
    .restart local v34    # "year":Lorg/w3c/dom/Node;
    :cond_1c
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->clickrate:I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_4

    .line 834
    .end local v3    # "area":Lorg/w3c/dom/Node;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "clickrate":Lorg/w3c/dom/Node;
    .end local v8    # "clickratev":Ljava/lang/String;
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "i":I
    .end local v14    # "id":Ljava/lang/String;
    .end local v15    # "ii":I
    .end local v16    # "image":Lorg/w3c/dom/Node;
    .end local v18    # "intro1":Lorg/w3c/dom/Node;
    .end local v19    # "intro2":Lorg/w3c/dom/Node;
    .end local v20    # "intro3":Lorg/w3c/dom/Node;
    .end local v21    # "intro4":Lorg/w3c/dom/Node;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v23    # "myURL":Ljava/net/URL;
    .end local v24    # "name":Lorg/w3c/dom/Node;
    .end local v25    # "nl":Lorg/w3c/dom/NodeList;
    .end local v29    # "s":Lcom/gemini/play/VodListStatus;
    .end local v32    # "url":Lorg/w3c/dom/Node;
    .end local v33    # "xtype":Lorg/w3c/dom/Node;
    .end local v34    # "year":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v11

    .line 836
    .local v11, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 837
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 786
    .end local v11    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v3    # "area":Lorg/w3c/dom/Node;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "i":I
    .restart local v14    # "id":Ljava/lang/String;
    .restart local v15    # "ii":I
    .restart local v16    # "image":Lorg/w3c/dom/Node;
    .restart local v18    # "intro1":Lorg/w3c/dom/Node;
    .restart local v19    # "intro2":Lorg/w3c/dom/Node;
    .restart local v20    # "intro3":Lorg/w3c/dom/Node;
    .restart local v21    # "intro4":Lorg/w3c/dom/Node;
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v23    # "myURL":Ljava/net/URL;
    .restart local v24    # "name":Lorg/w3c/dom/Node;
    .restart local v25    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v29    # "s":Lcom/gemini/play/VodListStatus;
    .restart local v32    # "url":Lorg/w3c/dom/Node;
    .restart local v33    # "xtype":Lorg/w3c/dom/Node;
    .restart local v34    # "year":Lorg/w3c/dom/Node;
    :cond_1d
    const/16 v35, 0x0

    :try_start_1
    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->clickrate:I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_4

    .line 838
    .end local v3    # "area":Lorg/w3c/dom/Node;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "clickrate":Lorg/w3c/dom/Node;
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "i":I
    .end local v14    # "id":Ljava/lang/String;
    .end local v15    # "ii":I
    .end local v16    # "image":Lorg/w3c/dom/Node;
    .end local v18    # "intro1":Lorg/w3c/dom/Node;
    .end local v19    # "intro2":Lorg/w3c/dom/Node;
    .end local v20    # "intro3":Lorg/w3c/dom/Node;
    .end local v21    # "intro4":Lorg/w3c/dom/Node;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v23    # "myURL":Ljava/net/URL;
    .end local v24    # "name":Lorg/w3c/dom/Node;
    .end local v25    # "nl":Lorg/w3c/dom/NodeList;
    .end local v29    # "s":Lcom/gemini/play/VodListStatus;
    .end local v32    # "url":Lorg/w3c/dom/Node;
    .end local v33    # "xtype":Lorg/w3c/dom/Node;
    .end local v34    # "year":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v11

    .line 840
    .local v11, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 841
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 795
    .end local v11    # "e":Lorg/xml/sax/SAXException;
    .restart local v3    # "area":Lorg/w3c/dom/Node;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "i":I
    .restart local v14    # "id":Ljava/lang/String;
    .restart local v15    # "ii":I
    .restart local v16    # "image":Lorg/w3c/dom/Node;
    .restart local v18    # "intro1":Lorg/w3c/dom/Node;
    .restart local v19    # "intro2":Lorg/w3c/dom/Node;
    .restart local v20    # "intro3":Lorg/w3c/dom/Node;
    .restart local v21    # "intro4":Lorg/w3c/dom/Node;
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v23    # "myURL":Ljava/net/URL;
    .restart local v24    # "name":Lorg/w3c/dom/Node;
    .restart local v25    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v27    # "recommend":Lorg/w3c/dom/Node;
    .restart local v28    # "recommendv":Ljava/lang/String;
    .restart local v29    # "s":Lcom/gemini/play/VodListStatus;
    .restart local v32    # "url":Lorg/w3c/dom/Node;
    .restart local v33    # "xtype":Lorg/w3c/dom/Node;
    .restart local v34    # "year":Lorg/w3c/dom/Node;
    :cond_1e
    const/16 v35, 0x0

    :try_start_2
    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 842
    .end local v3    # "area":Lorg/w3c/dom/Node;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "clickrate":Lorg/w3c/dom/Node;
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "i":I
    .end local v14    # "id":Ljava/lang/String;
    .end local v15    # "ii":I
    .end local v16    # "image":Lorg/w3c/dom/Node;
    .end local v18    # "intro1":Lorg/w3c/dom/Node;
    .end local v19    # "intro2":Lorg/w3c/dom/Node;
    .end local v20    # "intro3":Lorg/w3c/dom/Node;
    .end local v21    # "intro4":Lorg/w3c/dom/Node;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v23    # "myURL":Ljava/net/URL;
    .end local v24    # "name":Lorg/w3c/dom/Node;
    .end local v25    # "nl":Lorg/w3c/dom/NodeList;
    .end local v27    # "recommend":Lorg/w3c/dom/Node;
    .end local v28    # "recommendv":Ljava/lang/String;
    .end local v29    # "s":Lcom/gemini/play/VodListStatus;
    .end local v32    # "url":Lorg/w3c/dom/Node;
    .end local v33    # "xtype":Lorg/w3c/dom/Node;
    .end local v34    # "year":Lorg/w3c/dom/Node;
    :catch_2
    move-exception v11

    .line 844
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 845
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 797
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v3    # "area":Lorg/w3c/dom/Node;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "clickrate":Lorg/w3c/dom/Node;
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "i":I
    .restart local v14    # "id":Ljava/lang/String;
    .restart local v15    # "ii":I
    .restart local v16    # "image":Lorg/w3c/dom/Node;
    .restart local v18    # "intro1":Lorg/w3c/dom/Node;
    .restart local v19    # "intro2":Lorg/w3c/dom/Node;
    .restart local v20    # "intro3":Lorg/w3c/dom/Node;
    .restart local v21    # "intro4":Lorg/w3c/dom/Node;
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v23    # "myURL":Ljava/net/URL;
    .restart local v24    # "name":Lorg/w3c/dom/Node;
    .restart local v25    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v27    # "recommend":Lorg/w3c/dom/Node;
    .restart local v29    # "s":Lcom/gemini/play/VodListStatus;
    .restart local v32    # "url":Lorg/w3c/dom/Node;
    .restart local v33    # "xtype":Lorg/w3c/dom/Node;
    .restart local v34    # "year":Lorg/w3c/dom/Node;
    :cond_1f
    const/16 v35, 0x0

    :try_start_3
    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->recommend:I

    goto/16 :goto_5

    .line 806
    .restart local v5    # "chage":Lorg/w3c/dom/Node;
    .restart local v6    # "chagev":Ljava/lang/String;
    :cond_20
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->chage:F

    goto/16 :goto_6

    .line 808
    .end local v6    # "chagev":Ljava/lang/String;
    :cond_21
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->chage:F

    goto/16 :goto_6

    .line 817
    .restart local v30    # "updatetime":Lorg/w3c/dom/Node;
    .restart local v31    # "updatetimev":Ljava/lang/String;
    :cond_22
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I

    goto/16 :goto_7

    .line 819
    .end local v31    # "updatetimev":Ljava/lang/String;
    :cond_23
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/gemini/play/VodListStatus;->updatetime:I
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7
.end method

.method public static pauseVideo(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1663
    if-eqz p0, :cond_0

    const-string v0, "gp2p://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->mediaplayerstop(I)V

    .line 1667
    :cond_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1668
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->pause()V

    .line 1692
    :cond_1
    :goto_0
    return-void

    .line 1669
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1670
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    goto :goto_0

    .line 1671
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1672
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/VideoView;->pause()V

    goto :goto_0

    .line 1673
    :cond_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1674
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0}, Lcom/gemini/play/ExoPlayerView;->pause()V

    goto :goto_0
.end method

.method public static playVideo(ILandroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "inx"    # I
    .param p1, "_this"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "seek"    # I
    .param p4, "pw"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 904
    if-nez p0, :cond_1

    .line 905
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 906
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 907
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 908
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 909
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/gemini/play/VODplayer;->playVideoForHard(Landroid/content/Context;Lcom/gemini/play/VideoView;Ljava/lang/String;ILjava/lang/String;)V

    .line 930
    :cond_0
    :goto_0
    sput p3, Lcom/gemini/play/VODplayer;->video_seek:I

    .line 931
    return-void

    .line 910
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 911
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 912
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 913
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 914
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 915
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/gemini/play/VODplayer;->playVideoForHard2(Landroid/content/Context;Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 916
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 917
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 918
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 919
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 920
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 921
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/gemini/play/VODplayer;->playVideoForSoft(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 922
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 923
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 924
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 925
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 926
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0, v2}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 927
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/gemini/play/VODplayer;->playVideoForSoft2(Landroid/content/Context;Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static playVideo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "seek"    # I
    .param p3, "pw"    # Ljava/lang/String;

    .prologue
    .line 939
    invoke-static {p1, p3}, Lcom/gemini/play/VODplayer;->selectDecode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 941
    .local v0, "inx":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vod inx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 942
    invoke-static {v0, p0, p1, p2, p3}, Lcom/gemini/play/VODplayer;->playVideo(ILandroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 944
    return-void
.end method

.method public static playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;

    .prologue
    .line 900
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/gemini/play/VODplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 901
    return-void
.end method

.method public static playVideoForHard(Landroid/content/Context;Lcom/gemini/play/VideoView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "mVideoView"    # Lcom/gemini/play/VideoView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "seek"    # I
    .param p4, "pw"    # Ljava/lang/String;

    .prologue
    .line 1284
    invoke-virtual {p1}, Lcom/gemini/play/VideoView;->pause()V

    .line 1288
    invoke-virtual {p1}, Lcom/gemini/play/VideoView;->reset()V

    .line 1291
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1292
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 1294
    if-nez p2, :cond_0

    .line 1362
    :goto_0
    return-void

    .line 1297
    :cond_0
    new-instance v0, Lcom/gemini/play/VODplayer$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gemini/play/VODplayer$4;-><init>(Landroid/content/Context;Lcom/gemini/play/VideoView;Ljava/lang/String;I)V

    .line 1361
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, p3, p4}, Lcom/gemini/play/VODplayer;->playVideoMessage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static playVideoForHard2(Landroid/content/Context;Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "mVideoView"    # Lcom/gemini/play/ExoPlayerView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "seek"    # I
    .param p4, "pw"    # Ljava/lang/String;

    .prologue
    .line 1365
    invoke-virtual {p1}, Lcom/gemini/play/ExoPlayerView;->pause()V

    .line 1366
    invoke-virtual {p1}, Lcom/gemini/play/ExoPlayerView;->release()V

    .line 1369
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1371
    if-nez p2, :cond_0

    .line 1410
    :goto_0
    return-void

    .line 1374
    :cond_0
    new-instance v0, Lcom/gemini/play/VODplayer$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gemini/play/VODplayer$5;-><init>(Landroid/content/Context;Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;I)V

    .line 1409
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, p3, p4}, Lcom/gemini/play/VODplayer;->playVideoMessage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static playVideoForSoft(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "seek"    # I
    .param p4, "pw"    # Ljava/lang/String;

    .prologue
    .line 1159
    invoke-virtual {p1}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    .line 1161
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1163
    if-nez p2, :cond_0

    .line 1226
    :goto_0
    return-void

    .line 1166
    :cond_0
    new-instance v0, Lcom/gemini/play/VODplayer$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gemini/play/VODplayer$2;-><init>(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;I)V

    .line 1225
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, p3, p4}, Lcom/gemini/play/VODplayer;->playVideoMessage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static playVideoForSoft2(Landroid/content/Context;Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "mVideoView"    # Lio/vov/vitamio/widget/VideoView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "seek"    # I
    .param p4, "pw"    # Ljava/lang/String;

    .prologue
    .line 1229
    invoke-virtual {p1}, Lio/vov/vitamio/widget/VideoView;->pause()V

    .line 1232
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1234
    if-nez p2, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1237
    :cond_0
    new-instance v0, Lcom/gemini/play/VODplayer$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gemini/play/VODplayer$3;-><init>(Landroid/content/Context;Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;I)V

    .line 1280
    .local v0, "pHandler":Landroid/os/Handler;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, p3, p4}, Lcom/gemini/play/VODplayer;->playVideoMessage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static playVideoMessage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V
    .locals 3
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pHandler"    # Landroid/os/Handler;
    .param p3, "seek"    # I
    .param p4, "pw"    # Ljava/lang/String;

    .prologue
    .line 1413
    if-nez p1, :cond_1

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ".bsbt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1418
    :cond_2
    const-string v1, "p2p://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "forcetv://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1419
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gemini/play/VODplayer$6;

    invoke-direct {v2, p1, p4, p3, p2}, Lcom/gemini/play/VODplayer$6;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1433
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1434
    :cond_4
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "rtsp://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1435
    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gemini/play/VODplayer$7;

    invoke-direct {v2, p1, p3, p2}, Lcom/gemini/play/VODplayer$7;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1448
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1449
    :cond_6
    const-string v1, "youku@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1450
    move-object v0, p1

    .line 1451
    .local v0, "gurl":Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gemini/play/VODplayer$8;

    invoke-direct {v2, v0, p1, p3, p2}, Lcom/gemini/play/VODplayer$8;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1497
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1498
    .end local v0    # "gurl":Ljava/lang/String;
    :cond_7
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1499
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gemini/play/VODplayer$9;

    invoke-direct {v2, p1, p3, p2}, Lcom/gemini/play/VODplayer$9;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1513
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1514
    :cond_8
    const-string v1, "gp2p://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1515
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gemini/play/VODplayer$10;

    invoke-direct {v2, p1, p3, p2}, Lcom/gemini/play/VODplayer$10;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1572
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1574
    :cond_9
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gemini/play/VODplayer$11;

    invoke-direct {v2, p1, p3, p2, p0}, Lcom/gemini/play/VODplayer$11;-><init>(Ljava/lang/String;ILandroid/os/Handler;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1618
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private static playVideo_p2p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;

    .prologue
    .line 1992
    const/4 v3, 0x0

    .line 1994
    .local v3, "murl":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1995
    .local v0, "arrs":[Ljava/lang/String;
    const/4 v6, 0x3

    aget-object v6, v0, v6

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1996
    .local v4, "opts":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    .line 1997
    const/4 v6, 0x0

    .line 2062
    :goto_0
    return-object v6

    .line 1999
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p2p video = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pw = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2001
    sget-object v6, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v6}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v5

    .line 2002
    .local v5, "userid":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "szysx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dhtv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "familytv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2003
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "turbotv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "anko"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2004
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$user=$mac="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v7}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$playkey=$username=$channelid=$columnid=$vodid=$key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    .line 2005
    invoke-virtual {v8}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v8}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2010
    :cond_2
    :goto_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "lookiptv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "xiaoqi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 2011
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "aikanvip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "52home"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2012
    :cond_3
    sget-object v6, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v6}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v2

    .line 2013
    .local v2, "mac":Ljava/lang/String;
    sget-object v6, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v6}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v1

    .line 2014
    .local v1, "cpuid":Ljava/lang/String;
    sget-object v6, Lcom/gemini/custom/lookiptv;->mac:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 2015
    sget-object v2, Lcom/gemini/custom/lookiptv;->mac:Ljava/lang/String;

    .line 2017
    :cond_4
    sget-object v6, Lcom/gemini/custom/lookiptv;->cpuid:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 2018
    sget-object v1, Lcom/gemini/custom/lookiptv;->cpuid:Ljava/lang/String;

    .line 2020
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$user=$mac="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$username=$channelid=$columnid=$vodid=$key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/MGplayer;->ip:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2021
    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$playkey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/gemini/play/MGplayer;->seconds:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2024
    .end local v1    # "cpuid":Ljava/lang/String;
    .end local v2    # "mac":Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_7

    const-string v6, ""

    if-eq p2, v6, :cond_7

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_9

    .line 2025
    :cond_7
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x2

    aget-object v7, v0, v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v8}, Lcom/gemini/play/MGplayer;->s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 2032
    :goto_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AML8726"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2033
    array-length v6, v4

    const/4 v7, 0x2

    if-lt v6, v7, :cond_a

    .line 2034
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://127.0.0.1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2061
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playVideo_p2p = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    move-object v6, v3

    .line 2062
    goto/16 :goto_0

    .line 2006
    :cond_8
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "huanqiu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2007
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$user=$mac="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v7}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$playkey=$username=$channelid=$columnid=$vodid=$key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    .line 2008
    invoke-virtual {v8}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v8}, Lcom/gemini/play/MGplayer;->getCpuID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/gemini/play/MGplayer;->seconds:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 2027
    :cond_9
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x2

    aget-object v7, v0, v7

    const/4 v8, 0x0

    invoke-static {v6, v7, p2, v5, v8}, Lcom/gemini/play/MGplayer;->s1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto/16 :goto_2

    .line 2036
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://127.0.0.1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 2055
    :cond_b
    array-length v6, v4

    const/4 v7, 0x2

    if-lt v6, v7, :cond_c

    .line 2056
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://127.0.0.1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 2058
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://127.0.0.1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3
.end method

.method public static ppVideo(Ljava/lang/String;)I
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1695
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-nez v2, :cond_2

    .line 1696
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v2}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1697
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->pauseVideo(Ljava/lang/String;)V

    .line 1698
    sput-boolean v1, Lcom/gemini/play/VODplayer;->mIsPause:Z

    .line 1736
    :cond_0
    :goto_0
    return v0

    .line 1701
    :cond_1
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->resumeVideo(Ljava/lang/String;)V

    .line 1702
    sput-boolean v0, Lcom/gemini/play/VODplayer;->mIsPause:Z

    move v0, v1

    .line 1703
    goto :goto_0

    .line 1705
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1706
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v2}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1707
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->pauseVideo(Ljava/lang/String;)V

    .line 1708
    sput-boolean v1, Lcom/gemini/play/VODplayer;->mIsPause:Z

    goto :goto_0

    .line 1711
    :cond_3
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->resumeVideo(Ljava/lang/String;)V

    .line 1712
    sput-boolean v0, Lcom/gemini/play/VODplayer;->mIsPause:Z

    move v0, v1

    .line 1713
    goto :goto_0

    .line 1715
    :cond_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1716
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1717
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->pauseVideo(Ljava/lang/String;)V

    .line 1718
    sput-boolean v1, Lcom/gemini/play/VODplayer;->mIsPause:Z

    goto :goto_0

    .line 1721
    :cond_5
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->resumeVideo(Ljava/lang/String;)V

    .line 1722
    sput-boolean v0, Lcom/gemini/play/VODplayer;->mIsPause:Z

    move v0, v1

    .line 1723
    goto :goto_0

    .line 1725
    :cond_6
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1726
    sget-object v2, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v2}, Lcom/gemini/play/ExoPlayerView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1727
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->pauseVideo(Ljava/lang/String;)V

    .line 1728
    sput-boolean v1, Lcom/gemini/play/VODplayer;->mIsPause:Z

    goto :goto_0

    .line 1731
    :cond_7
    invoke-static {p0}, Lcom/gemini/play/VODplayer;->resumeVideo(Ljava/lang/String;)V

    .line 1732
    sput-boolean v0, Lcom/gemini/play/VODplayer;->mIsPause:Z

    move v0, v1

    .line 1733
    goto :goto_0
.end method

.method public static putVodListUrlList(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2183
    new-instance v0, Lcom/gemini/play/VodListUrlListStatus;

    invoke-direct {v0}, Lcom/gemini/play/VodListUrlListStatus;-><init>()V

    .line 2184
    .local v0, "VodListUrlLister2":Lcom/gemini/play/VodListUrlListStatus;
    iput-object p0, v0, Lcom/gemini/play/VodListUrlListStatus;->url:Ljava/lang/String;

    .line 2185
    sget-object v1, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putVodListUrlList url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2188
    sget-object v1, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 2189
    sget-object v1, Lcom/gemini/play/VODplayer;->VodListUrlListArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2190
    :cond_0
    return-void
.end method

.method public static resumeDecode()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2369
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2370
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->stopVideoForHard2(Lcom/gemini/play/ExoPlayerView;)V

    .line 2371
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2372
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    .line 2373
    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    .line 2390
    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    .line 2391
    return-void

    .line 2374
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2375
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_0

    .line 2377
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 2378
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 2380
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2381
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_0

    .line 2383
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2384
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 2386
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2387
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_0
.end method

.method public static resumeVideo(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1624
    if-eqz p0, :cond_0

    const-string v0, "gp2p://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->mediaplayerstop(I)V

    .line 1628
    :cond_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1629
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->start()V

    .line 1660
    :cond_1
    :goto_0
    return-void

    .line 1630
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1631
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->start()V

    goto :goto_0

    .line 1632
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1633
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/VideoView;->start()V

    goto :goto_0

    .line 1634
    :cond_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1635
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0}, Lcom/gemini/play/ExoPlayerView;->start()V

    goto :goto_0
.end method

.method public static secondToData(J)Ljava/lang/String;
    .locals 10
    .param p0, "seconds"    # J

    .prologue
    .line 853
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 854
    .local v0, "calendar":Ljava/util/Calendar;
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-lez v8, :cond_0

    .line 855
    new-instance v1, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p0

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 856
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 858
    .end local v1    # "date":Ljava/util/Date;
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 859
    .local v7, "year":I
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 860
    .local v5, "month":I
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 861
    .local v2, "day":I
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 862
    .local v3, "hour":I
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 863
    .local v4, "minute":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 865
    .local v6, "v":Ljava/lang/String;
    return-object v6
.end method

.method public static secondToData2(J)Ljava/lang/String;
    .locals 10
    .param p0, "seconds"    # J

    .prologue
    .line 869
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 870
    .local v0, "calendar":Ljava/util/Calendar;
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-lez v8, :cond_0

    .line 871
    new-instance v1, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p0

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 872
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 874
    .end local v1    # "date":Ljava/util/Date;
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 875
    .local v7, "year":I
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 876
    .local v5, "month":I
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 877
    .local v2, "day":I
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 878
    .local v3, "hour":I
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 879
    .local v4, "minute":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 881
    .local v6, "v":Ljava/lang/String;
    return-object v6
.end method

.method public static seekVideo(Ljava/lang/String;I)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "seek"    # I

    .prologue
    .line 1086
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1087
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-static {v0, p0, p1}, Lcom/gemini/play/VODplayer;->seekVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;I)V

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1089
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v0, p0, p1}, Lcom/gemini/play/VODplayer;->seekVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;I)V

    goto :goto_0

    .line 1090
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1091
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v0, p0, p1}, Lcom/gemini/play/VODplayer;->seekVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;I)V

    goto :goto_0

    .line 1092
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1093
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-static {v0, p0, p1}, Lcom/gemini/play/VODplayer;->seekVideoForHard2(Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static seekVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;I)V
    .locals 2
    .param p0, "mVideoView"    # Lcom/gemini/play/VideoView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "seek"    # I

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1099
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rtsp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "youku@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-lez p2, :cond_2

    .line 1100
    invoke-virtual {p0, p2}, Lcom/gemini/play/VideoView;->seekTo(I)V

    .line 1117
    :cond_1
    :goto_0
    return-void

    .line 1101
    :cond_2
    const-string v0, "p2p://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "forcetv://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    :cond_3
    invoke-virtual {p0, p2}, Lcom/gemini/play/VideoView;->seekTo(I)V

    goto :goto_0
.end method

.method public static seekVideoForHard2(Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;I)V
    .locals 2
    .param p0, "mVideoView"    # Lcom/gemini/play/ExoPlayerView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "seek"    # I

    .prologue
    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1121
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rtsp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "youku@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-lez p2, :cond_2

    .line 1122
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/ExoPlayerView;->seekTo(J)V

    .line 1126
    :cond_1
    :goto_0
    return-void

    .line 1123
    :cond_2
    const-string v0, "p2p://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "forcetv://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    :cond_3
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/ExoPlayerView;->seekTo(J)V

    goto :goto_0
.end method

.method public static seekVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;I)V
    .locals 2
    .param p0, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "seek"    # I

    .prologue
    .line 1129
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rtsp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "youku@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-lez p2, :cond_2

    .line 1130
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/VlcVideoView;->seekTo(J)V

    .line 1144
    :cond_1
    :goto_0
    return-void

    .line 1131
    :cond_2
    const-string v0, "p2p://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "forcetv://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1132
    :cond_3
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/VlcVideoView;->seekTo(J)V

    goto :goto_0

    .line 1133
    :cond_4
    const-string v0, "gp2p://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public static seekVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;I)V
    .locals 2
    .param p0, "mVideoView"    # Lio/vov/vitamio/widget/VideoView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "seek"    # I

    .prologue
    .line 1147
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rtsp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "youku@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-lez p2, :cond_2

    .line 1148
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lio/vov/vitamio/widget/VideoView;->seekTo(J)V

    .line 1154
    :cond_1
    :goto_0
    return-void

    .line 1149
    :cond_2
    const-string v0, "p2p://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "forcetv://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1150
    :cond_3
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lio/vov/vitamio/widget/VideoView;->seekTo(J)V

    goto :goto_0

    .line 1151
    :cond_4
    const-string v0, "gp2p://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public static selectDecode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 2317
    const/4 v0, -0x1

    .line 2318
    .local v0, "inx":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDecode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getPreDecode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 2319
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 2320
    sget-object v1, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-static {v1}, Lcom/gemini/play/VODplayer;->stopVideoForHard2(Lcom/gemini/play/ExoPlayerView;)V

    .line 2321
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 2322
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    .line 2323
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    .line 2337
    :cond_0
    :goto_0
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    const-string v1, "passwordexo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2338
    const/4 v0, 0x3

    .line 2339
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 2340
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    .line 2344
    :goto_1
    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    .line 2365
    :goto_2
    return v0

    .line 2324
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2325
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_0

    .line 2327
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 2328
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 2330
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2331
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_0

    .line 2333
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    if-eq v1, v4, :cond_4

    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2334
    :cond_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    goto :goto_0

    .line 2342
    :cond_5
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    goto :goto_1

    .line 2345
    :cond_6
    if-eqz p0, :cond_8

    const-string v1, "p2p://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 2346
    :cond_7
    const/4 v0, 0x2

    .line 2347
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->setPreDecode(I)V

    .line 2348
    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_2

    .line 2358
    :cond_8
    invoke-static {}, Lcom/gemini/play/MGplayer;->getPreDecode()I

    move-result v0

    .line 2359
    if-ltz v0, :cond_9

    .line 2360
    invoke-static {v0}, Lcom/gemini/play/MGplayer;->setDecode(I)V

    goto :goto_2

    .line 2362
    :cond_9
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    goto :goto_2
.end method

.method public static sendHttpRequesttotal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p0, "channelId"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 2067
    const/4 v7, 0x0

    .line 2068
    .local v7, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 2070
    .local v6, "tempStr":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://127.0.0.1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cmd.xml?cmd=query_chan_data_info&id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2071
    .local v9, "urlInfo":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2072
    .end local v7    # "url":Ljava/net/URL;
    .local v8, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 2073
    .local v2, "huc":Ljava/net/HttpURLConnection;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2074
    .local v5, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .end local v2    # "huc":Ljava/net/HttpURLConnection;
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 2075
    .restart local v2    # "huc":Ljava/net/HttpURLConnection;
    const/16 v10, 0x1f4

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2076
    const/16 v10, 0x1f4

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2077
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 2078
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2079
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 2080
    .local v4, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2081
    .local v3, "ii":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2082
    const/16 v10, 0xa

    if-le v3, v10, :cond_1

    .line 2087
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v8

    .end local v8    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    move-object v10, v6

    .line 2090
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "huc":Ljava/net/HttpURLConnection;
    .end local v3    # "ii":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v9    # "urlInfo":Ljava/lang/String;
    :goto_1
    return-object v10

    .line 2084
    .end local v7    # "url":Ljava/net/URL;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "huc":Ljava/net/HttpURLConnection;
    .restart local v3    # "ii":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v9    # "urlInfo":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 2085
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2089
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "huc":Ljava/net/HttpURLConnection;
    .end local v3    # "ii":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    move-object v7, v8

    .line 2090
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "urlInfo":Ljava/lang/String;
    .local v1, "e":Ljava/io/IOException;
    .restart local v7    # "url":Ljava/net/URL;
    :goto_2
    const-string v10, ""

    goto :goto_1

    .line 2089
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static stopVideo()V
    .locals 1

    .prologue
    .line 1740
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    .line 1741
    .local v0, "inx":I
    invoke-static {v0}, Lcom/gemini/play/VODplayer;->stopVideo(I)V

    .line 1742
    return-void
.end method

.method public static stopVideo(I)V
    .locals 1
    .param p0, "inx"    # I

    .prologue
    .line 1745
    if-nez p0, :cond_1

    .line 1746
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VODplayer;->stopVideoForHard(Lcom/gemini/play/VideoView;)V

    .line 1755
    :cond_0
    :goto_0
    invoke-static {}, Lcom/gemini/play/VODplayer;->resumeDecode()V

    .line 1756
    return-void

    .line 1747
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 1748
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-static {v0}, Lcom/gemini/play/VODplayer;->stopVideoForHard2(Lcom/gemini/play/ExoPlayerView;)V

    goto :goto_0

    .line 1749
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 1750
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v0}, Lcom/gemini/play/VODplayer;->stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V

    goto :goto_0

    .line 1751
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1752
    sget-object v0, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v0}, Lcom/gemini/play/VODplayer;->stopVideoForSoft2(Lio/vov/vitamio/widget/VideoView;)V

    goto :goto_0
.end method

.method public static stopVideoForHard(Lcom/gemini/play/VideoView;)V
    .locals 0
    .param p0, "mVideoView"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 1780
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1782
    invoke-static {}, Lcom/gemini/play/MGplayer;->s5()V

    .line 1784
    if-eqz p0, :cond_0

    .line 1785
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->pause()V

    .line 1788
    :cond_0
    return-void
.end method

.method public static stopVideoForHard2(Lcom/gemini/play/ExoPlayerView;)V
    .locals 0
    .param p0, "mVideoView"    # Lcom/gemini/play/ExoPlayerView;

    .prologue
    .line 1791
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1793
    invoke-static {}, Lcom/gemini/play/MGplayer;->s5()V

    .line 1795
    invoke-virtual {p0}, Lcom/gemini/play/ExoPlayerView;->pause()V

    .line 1796
    invoke-virtual {p0}, Lcom/gemini/play/ExoPlayerView;->onDestroy()V

    .line 1797
    return-void
.end method

.method public static stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V
    .locals 0
    .param p0, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 1759
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1761
    invoke-static {}, Lcom/gemini/play/MGplayer;->s5()V

    .line 1763
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    .line 1764
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->stopTimeout()V

    .line 1766
    return-void
.end method

.method public static stopVideoForSoft2(Lio/vov/vitamio/widget/VideoView;)V
    .locals 1
    .param p0, "mVideoView"    # Lio/vov/vitamio/widget/VideoView;

    .prologue
    .line 1769
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 1771
    invoke-static {}, Lcom/gemini/play/MGplayer;->s5()V

    .line 1773
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->pause()V

    .line 1776
    :cond_0
    return-void
.end method

.method public static typeGet(I)Lcom/gemini/play/VodTypeStatus;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 202
    if-nez p0, :cond_0

    .line 203
    sget-object v0, Lcom/gemini/play/VODplayer;->VodType0:Lcom/gemini/play/VodTypeStatus;

    .line 211
    :goto_0
    return-object v0

    .line 204
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 205
    sget-object v0, Lcom/gemini/play/VODplayer;->VodType1:Lcom/gemini/play/VodTypeStatus;

    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 207
    sget-object v0, Lcom/gemini/play/VODplayer;->VodType2:Lcom/gemini/play/VodTypeStatus;

    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 209
    sget-object v0, Lcom/gemini/play/VODplayer;->VodType3:Lcom/gemini/play/VodTypeStatus;

    goto :goto_0

    .line 211
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
