.class Lcom/gemini/play/LivePlayerActivity$16;
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
    .line 922
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$16;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 924
    packed-switch p1, :pswitch_data_0

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 926
    :pswitch_0
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$16;->this$0:Lcom/gemini/play/LivePlayerActivity;

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sget v2, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/gemini/play/LivePlayerActivity;->access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    goto :goto_0

    .line 924
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
