.class Lcom/gemini/play/VodPlayerInfoActivity$12;
.super Ljava/lang/Object;
.source "VodPlayerInfoActivity.java"

# interfaces
.implements Lcom/gemini/play/ControlVideoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VodPlayerInfoActivity;
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
    .line 618
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity$12;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 622
    packed-switch p1, :pswitch_data_0

    .line 632
    :goto_0
    return-void

    .line 625
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

    .line 626
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 627
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity$12;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    const-class v2, Lcom/gemini/play/ControlPlayerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 628
    const-string v1, "vod_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity$12;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-virtual {v1, v0}, Lcom/gemini/play/VodPlayerInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
