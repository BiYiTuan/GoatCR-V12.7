.class Lcom/gemini/play/LivePlayerActivity$20;
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
    .line 1029
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$20;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1033
    packed-switch p1, :pswitch_data_0

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1035
    :pswitch_0
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gemini/play/LIVEplayer;->currentSeek:I

    .line 1037
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$20;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity$20;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v1}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->currentID()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/gemini/play/LIVEplayer;->currentLine:I

    sget v3, Lcom/gemini/play/LIVEplayer;->currentSeek:I

    invoke-static {v0, v1, v2, v3}, Lcom/gemini/play/LivePlayerActivity;->access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    .line 1038
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$20;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1100(Lcom/gemini/play/LivePlayerActivity;)Z

    goto :goto_0

    .line 1042
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$20;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$20;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyListView;->listFocus()V

    goto :goto_0

    .line 1048
    :pswitch_2
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$20;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$100(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyPreviewView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyPreviewView;->hidePreviewList()V

    goto :goto_0

    .line 1033
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
