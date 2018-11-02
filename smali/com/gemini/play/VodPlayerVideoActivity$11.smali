.class Lcom/gemini/play/VodPlayerVideoActivity$11;
.super Ljava/lang/Object;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerVideoActivity;->openDBActivity()V
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
    .line 552
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 554
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->access$702(Lcom/gemini/play/VodPlayerVideoActivity;Z)Z

    .line 555
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1400(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/VodPositionStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1400(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/VodPositionStatus;

    move-result-object v1

    iget v1, v1, Lcom/gemini/play/VodPositionStatus;->num:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->access$602(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerVideoActivity;->access$900(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/VodListStatus;

    move-result-object v2

    iget-object v2, v2, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerVideoActivity;->access$600(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1500(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1100(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1400(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/VodPositionStatus;

    move-result-object v2

    iget v2, v2, Lcom/gemini/play/VodPositionStatus;->position:I

    sget-object v3, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/gemini/play/VODplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity$11;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1400(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/VodPositionStatus;

    move-result-object v1

    iget v1, v1, Lcom/gemini/play/VodPositionStatus;->position:I

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1602(Lcom/gemini/play/VodPlayerVideoActivity;I)I

    .line 561
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 562
    return-void
.end method
