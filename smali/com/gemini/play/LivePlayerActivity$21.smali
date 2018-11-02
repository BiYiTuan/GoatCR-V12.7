.class Lcom/gemini/play/LivePlayerActivity$21;
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
    .line 1055
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$21;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1057
    packed-switch p1, :pswitch_data_0

    .line 1072
    :goto_0
    return-void

    .line 1059
    :pswitch_0
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$21;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$21;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->currentID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lcom/gemini/play/LivePlayerActivity;->access$1000(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    goto :goto_0

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$21;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$21;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->currentID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/gemini/play/LivePlayerActivity;->access$1000(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    goto :goto_0

    .line 1065
    :cond_1
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$21;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$21;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->currentID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lcom/gemini/play/LivePlayerActivity;->access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$21;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$21;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->currentID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/gemini/play/LivePlayerActivity;->access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    goto :goto_0

    .line 1057
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
