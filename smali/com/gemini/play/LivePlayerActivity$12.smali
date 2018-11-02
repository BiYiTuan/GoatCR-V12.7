.class Lcom/gemini/play/LivePlayerActivity$12;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 570
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$12;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 572
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$12;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$200(Lcom/gemini/play/LivePlayerActivity;)V

    .line 573
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$12;->this$0:Lcom/gemini/play/LivePlayerActivity;

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v2}, Lcom/gemini/play/LivePlayerActivity;->access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    .line 575
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huanqiu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Lcom/gemini/custom/huanqiu;->ss()V

    .line 578
    :cond_0
    return-void
.end method
