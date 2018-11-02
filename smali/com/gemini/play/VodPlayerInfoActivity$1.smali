.class Lcom/gemini/play/VodPlayerInfoActivity$1;
.super Ljava/lang/Thread;
.source "VodPlayerInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerInfoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity$1;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 76
    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity$1;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerInfoActivity;->access$000(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$1;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerInfoActivity;->access$100(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/gemini/play/VODplayer;->parseCollectXML(Ljava/lang/String;I)Lcom/gemini/play/VodListStatus;

    move-result-object v1

    .line 77
    .local v1, "ss":Lcom/gemini/play/VodListStatus;
    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity$1;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerInfoActivity;->access$200(Lcom/gemini/play/VodPlayerInfoActivity;)Lcom/gemini/play/CollectVodDB;

    move-result-object v2

    iget-object v3, v1, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/gemini/play/VodPlayerInfoActivity$1;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v4}, Lcom/gemini/play/VodPlayerInfoActivity;->access$000(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/gemini/play/CollectVodDB;->insert(Lcom/gemini/play/VodListStatus;Landroid/graphics/Bitmap;I)J

    .line 78
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 79
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 80
    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity$1;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v2, v2, Lcom/gemini/play/VodPlayerInfoActivity;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 81
    return-void
.end method
