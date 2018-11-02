.class public Lorg/succlz123/okplayer/builder/HlsRendererBuilder;
.super Ljava/lang/Object;
.source "HlsRendererBuilder.java"

# interfaces
.implements Lorg/succlz123/okplayer/builder/RendererBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;
    }
.end annotation


# static fields
.field private static final BUFFER_SEGMENTS:I = 0x100

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000


# instance fields
.field private final context:Landroid/content/Context;

.field private currentAsyncBuilder:Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;

.field private final url:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->userAgent:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->url:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public buildRenderers(Lorg/succlz123/okplayer/OkPlayer;)V
    .locals 4
    .param p1, "player"    # Lorg/succlz123/okplayer/OkPlayer;

    .prologue
    .line 68
    new-instance v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;

    iget-object v1, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->userAgent:Ljava/lang/String;

    iget-object v3, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->url:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/succlz123/okplayer/OkPlayer;)V

    iput-object v0, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->currentAsyncBuilder:Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;

    .line 69
    iget-object v0, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->currentAsyncBuilder:Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->init()V

    .line 70
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->currentAsyncBuilder:Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->currentAsyncBuilder:Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->cancel()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder;->currentAsyncBuilder:Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;

    .line 78
    :cond_0
    return-void
.end method
