.class Lcom/gemini/play/Launcher2Activity$4;
.super Ljava/lang/Object;
.source "Launcher2Activity.java"

# interfaces
.implements Lcom/gemini/play/LauncherInterface;


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
    .line 259
    iput-object p1, p0, Lcom/gemini/play/Launcher2Activity$4;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(I)V
    .locals 3
    .param p1, "data"    # I

    .prologue
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 262
    packed-switch p1, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 266
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity$4;->this$0:Lcom/gemini/play/Launcher2Activity;

    const-class v2, Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ui_type"

    sget v2, Lcom/gemini/play/MGplayer;->live_ui_type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity$4;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-virtual {v1, v0}, Lcom/gemini/play/Launcher2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msiptv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity$4;->this$0:Lcom/gemini/play/Launcher2Activity;

    const-class v2, Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v1, v2}, Lcom/gemini/play/MGplayer;->openActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity$4;->this$0:Lcom/gemini/play/Launcher2Activity;

    const-class v2, Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1, v2}, Lcom/gemini/play/MGplayer;->openActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity$4;->this$0:Lcom/gemini/play/Launcher2Activity;

    const-class v2, Lcom/gemini/play/BackPlayer2Activity;

    invoke-static {v1, v2}, Lcom/gemini/play/MGplayer;->openActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 291
    :pswitch_3
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity$4;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;)V

    .line 292
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity$4;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 296
    :pswitch_4
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity$4;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-virtual {v1}, Lcom/gemini/play/Launcher2Activity;->exitActivity()V

    goto :goto_0

    .line 300
    :pswitch_5
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity$4;->this$0:Lcom/gemini/play/Launcher2Activity;

    const-class v2, Lcom/gemini/play/AppsActivity;

    invoke-static {v1, v2}, Lcom/gemini/play/MGplayer;->openActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
