.class public Lcom/gemini/custom/goat;
.super Ljava/lang/Object;
.source "goat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 12
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "goat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 14
    sput v2, Lcom/gemini/play/MGplayer;->start_tvbus:I

    .line 15
    sput v2, Lcom/gemini/play/MGplayer;->start_tvbus_vod:I

    .line 17
    :cond_0
    return-void
.end method
