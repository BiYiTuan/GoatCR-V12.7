.class Lcom/gemini/play/LivePlayerActivity$6;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 438
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$6;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 442
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$6;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    .line 450
    :goto_0
    return-void

    .line 444
    :cond_1
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$6;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$6;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;Z)V

    goto :goto_0
.end method
