.class Lcom/gemini/play/VodPlayerVideoActivity$4;
.super Ljava/lang/Object;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerVideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerVideoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$4;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$4;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v2, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gemini/play/VODplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/gemini/play/VodPlayerVideoActivity$4$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerVideoActivity$4$1;-><init>(Lcom/gemini/play/VodPlayerVideoActivity$4;)V

    .line 255
    invoke-virtual {v0}, Lcom/gemini/play/VodPlayerVideoActivity$4$1;->start()V

    .line 256
    return-void
.end method
