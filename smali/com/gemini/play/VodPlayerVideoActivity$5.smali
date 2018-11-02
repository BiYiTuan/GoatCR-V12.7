.class Lcom/gemini/play/VodPlayerVideoActivity$5;
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

.field final synthetic val$mHandler:Landroid/os/Handler;

.field final synthetic val$progressLayout:Landroid/widget/FrameLayout;

.field final synthetic val$speedView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerVideoActivity;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$5;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerVideoActivity$5;->val$progressLayout:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/gemini/play/VodPlayerVideoActivity$5;->val$speedView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/gemini/play/VodPlayerVideoActivity$5;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VODplayer.isPlaying():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gemini/play/VODplayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/gemini/play/VODplayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$5;->val$progressLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$5;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$100(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/MyVodImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyVodImageView;->hideView()V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$5;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$200(Lcom/gemini/play/VodPlayerVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$5;->val$mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    :cond_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$5;->val$progressLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$5;->val$speedView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/MGplayer;->getUidRxBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K/S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
