.class Lcom/gemini/play/VodPlayerList2Activity$9;
.super Ljava/lang/Object;
.source "VodPlayerList2Activity.java"

# interfaces
.implements Lcom/gemini/play/ControlVideoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VodPlayerList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerList2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerList2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$9;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 611
    packed-switch p1, :pswitch_data_0

    .line 620
    :goto_0
    return-void

    .line 613
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControlVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 614
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 615
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity$9;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    const-class v2, Lcom/gemini/play/ControlPlayerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 616
    const-string v1, "vod_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity$9;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-virtual {v1, v0}, Lcom/gemini/play/VodPlayerList2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
