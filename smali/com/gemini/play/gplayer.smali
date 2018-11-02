.class Lcom/gemini/play/gplayer;
.super Ljava/lang/Object;
.source "MGplayer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-string v0, "ghttp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 136
    const-string v0, "hls"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 137
    const-string v0, "gp2p"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 138
    const-string v0, "rtmp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 139
    const-string v0, "mms"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 140
    const-string v0, "udp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 141
    const-string v0, "gemini"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 143
    const-string v0, "miniupnp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 145
    const-string v0, "mediaplayer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native gp2ppthreadnum(III)V
.end method

.method public native httpdinit()V
.end method

.method public native httpdpath(Ljava/lang/String;)V
.end method

.method public native mediaplayercache()I
.end method

.method public native mediaplayerexit()V
.end method

.method public native mediaplayerheadertype(I)V
.end method

.method public native mediaplayerinit()V
.end method

.method public native mediaplayerload(Ljava/lang/String;III)I
.end method

.method public native mediaplayerreopen()I
.end method

.method public native mediaplayerstatue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native mediaplayerstop(I)V
.end method

.method public native mediaplayerunload()V
.end method

.method public native mediaplayerurl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native mediaplayervodheader(I)V
.end method

.method public native mediareceivecount()I
.end method

.method public native percen()I
.end method

.method public native setParam(III)V
.end method

.method public native upnp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
