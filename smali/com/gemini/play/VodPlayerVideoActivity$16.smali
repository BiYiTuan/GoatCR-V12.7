.class Lcom/gemini/play/VodPlayerVideoActivity$16;
.super Ljava/lang/Object;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VodPlayerVideoActivity;
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
    .line 655
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$16;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 659
    packed-switch p1, :pswitch_data_0

    .line 668
    :goto_0
    return-void

    .line 661
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$16;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity$16;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity$16;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerVideoActivity;->access$900(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/VodListStatus;

    move-result-object v2

    iget-object v2, v2, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1500(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1100(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$16;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0, p2}, Lcom/gemini/play/VodPlayerVideoActivity;->access$602(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$16;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    sget-object v2, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gemini/play/VODplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$16;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1800(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/MyVodSelectionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyVodSelectionsView;->hideSelectionsView()V

    .line 665
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$16;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$1900(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/MyVodInfoView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity$16;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerVideoActivity;->access$900(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/VodListStatus;

    move-result-object v2

    iget-object v2, v2, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity$16;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerVideoActivity;->access$600(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodInfoView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
