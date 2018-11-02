.class Lcom/gemini/play/Launcher2Activity$5;
.super Ljava/lang/Object;
.source "Launcher2Activity.java"

# interfaces
.implements Lcom/gemini/play/ScrollViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/Launcher2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/Launcher2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/Launcher2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/Launcher2Activity;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/gemini/play/Launcher2Activity$5;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;I)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "times"    # I

    .prologue
    .line 311
    packed-switch p1, :pswitch_data_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 315
    :pswitch_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 316
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v2, "times"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 320
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 321
    iget-object v2, p0, Lcom/gemini/play/Launcher2Activity$5;->this$0:Lcom/gemini/play/Launcher2Activity;

    iget-object v2, v2, Lcom/gemini/play/Launcher2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 325
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_1
    sget-object v2, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 327
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 328
    .restart local v1    # "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .restart local v0    # "data":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 330
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 331
    iget-object v2, p0, Lcom/gemini/play/Launcher2Activity$5;->this$0:Lcom/gemini/play/Launcher2Activity;

    iget-object v2, v2, Lcom/gemini/play/Launcher2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
