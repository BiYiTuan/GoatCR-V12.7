.class public Lorg/succlz123/okplayer/utils/OkPlayerUtils;
.super Ljava/lang/Object;
.source "OkPlayerUtils.java"


# static fields
.field public static final CONTENT_EXT_EXTRA:Ljava/lang/String; = "type"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final EXT_DASH:Ljava/lang/String; = ".mpd"

.field public static final EXT_HLS:Ljava/lang/String; = ".m3u8"

.field public static final EXT_SS:Ljava/lang/String; = ".ism"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_DASH:I = 0x0

.field public static final TYPE_HLS:I = 0x2

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_SS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRendererBuilder(Landroid/content/Context;Landroid/net/Uri;I)Lorg/succlz123/okplayer/builder/RendererBuilder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentType"    # I

    .prologue
    .line 58
    const-string v1, "OkPlayer"

    invoke-static {p0, v1}, Lcom/google/android/exoplayer/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "userAgent":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :pswitch_0
    new-instance v1, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-object v1

    :pswitch_1
    new-instance v1, Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;

    invoke-direct {v1, p0, v0, p1}, Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static inferContentType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "fileExtension"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "lastPathSegment":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    .line 45
    :cond_0
    :goto_1
    return v1

    .line 35
    .end local v0    # "lastPathSegment":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    .restart local v0    # "lastPathSegment":Ljava/lang/String;
    :cond_2
    const-string v2, ".mpd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    const/4 v1, 0x0

    goto :goto_1

    .line 40
    :cond_3
    const-string v2, ".ism"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    const/4 v1, 0x1

    goto :goto_1

    .line 42
    :cond_4
    const-string v2, ".m3u8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v1, 0x2

    goto :goto_1
.end method
