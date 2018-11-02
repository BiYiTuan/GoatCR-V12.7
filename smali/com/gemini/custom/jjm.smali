.class public Lcom/gemini/custom/jjm;
.super Ljava/lang/Object;
.source "jjm.java"


# static fields
.field public static auth_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "https://auth.tvgood.taipei/v1/auth"

    sput-object v0, Lcom/gemini/custom/jjm;->auth_url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send_checkip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jingjimu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jingjimudev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 12
    :cond_0
    sput v2, Lcom/gemini/play/MGplayer;->start_tvbus:I

    .line 13
    sput v2, Lcom/gemini/play/MGplayer;->start_tvbus_vod:I

    .line 18
    :cond_1
    return-void
.end method
