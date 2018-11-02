.class Lcom/gemini/play/BackPlayer2Activity$6;
.super Ljava/lang/Object;
.source "BackPlayer2Activity.java"

# interfaces
.implements Lcom/gemini/play/ListViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/BackPlayer2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayer2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayer2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/gemini/play/BackPlayer2Activity$6;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 273
    packed-switch p1, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 277
    :pswitch_1
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "111 callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, "time":I
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$6;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    sget-object v2, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/gemini/play/BACKplayer;->playVideo(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 282
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$6;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-virtual {v1}, Lcom/gemini/play/BackPlayer2Activity;->hideBackListLayout()V

    .line 283
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$6;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v1}, Lcom/gemini/play/BackPlayer2Activity;->access$000(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackTypeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyBackTypeView;->hideTypeList()V

    goto :goto_0

    .line 289
    .end local v0    # "time":I
    :pswitch_2
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity$6;->this$0:Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v1}, Lcom/gemini/play/BackPlayer2Activity;->access$200(Lcom/gemini/play/BackPlayer2Activity;)V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
