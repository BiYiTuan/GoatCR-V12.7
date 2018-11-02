.class Lcom/gemini/play/VodPlayerVideoActivity$8$1;
.super Ljava/lang/Object;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerVideoActivity$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/VodPlayerVideoActivity$8;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerVideoActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/VodPlayerVideoActivity$8;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$8$1;->this$1:Lcom/gemini/play/VodPlayerVideoActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$8$1;->this$1:Lcom/gemini/play/VodPlayerVideoActivity$8;

    iget-object v0, v0, Lcom/gemini/play/VodPlayerVideoActivity$8;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v2, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gemini/play/VODplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method
