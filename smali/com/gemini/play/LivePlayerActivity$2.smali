.class Lcom/gemini/play/LivePlayerActivity$2;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$2;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 378
    sput v1, Lcom/gemini/play/LIVEplayer;->check_playing_times:I

    .line 379
    sput v1, Lcom/gemini/play/LIVEplayer;->speed_nothings_times:I

    .line 380
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/gemini/play/LIVEplayer;->check_currentposition:J

    .line 382
    const-string v1, "VideoViewH setOnCompletionListener"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$2;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, v1, Lcom/gemini/play/LivePlayerActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$2;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, v1, Lcom/gemini/play/LivePlayerActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 388
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 389
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$2;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, v1, Lcom/gemini/play/LivePlayerActivity;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 390
    return-void
.end method
