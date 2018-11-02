.class Lcom/gemini/play/LivePlayerActivity$19;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/LivePlayerActivity;
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
    .line 998
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$19;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1002
    packed-switch p1, :pswitch_data_0

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1004
    :pswitch_0
    if-eqz p2, :cond_1

    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    :cond_1
    if-nez p2, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$19;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    .line 1013
    :goto_1
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$19;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$900(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyTypeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyTypeView;->hideTypeList()V

    goto :goto_0

    .line 1009
    :cond_2
    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1010
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$19;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto :goto_1

    .line 1012
    :cond_3
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$19;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;)V

    goto :goto_1

    .line 1016
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$19;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$19;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyListView;->listFocus()V

    goto :goto_0

    .line 1021
    :pswitch_2
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$19;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gemini/play/MyListView;->showFindPlayList(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$19;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$900(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyTypeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyTypeView;->hideTypeList()V

    goto :goto_0

    .line 1002
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
