.class Lcom/gemini/play/Launcher2Activity$1;
.super Ljava/lang/Object;
.source "Launcher2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/Launcher2Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/Launcher2Activity;

.field final synthetic val$imagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/Launcher2Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/Launcher2Activity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/gemini/play/Launcher2Activity$1;->this$0:Lcom/gemini/play/Launcher2Activity;

    iput-object p2, p0, Lcom/gemini/play/Launcher2Activity$1;->val$imagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 81
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/images/background/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/MGplayer;->Background:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/Launcher2Activity$1;->val$imagePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/gemini/play/MGplayer;->donwFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 83
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "imagePath"

    iget-object v4, p0, Lcom/gemini/play/Launcher2Activity$1;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 86
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 87
    iget-object v3, p0, Lcom/gemini/play/Launcher2Activity$1;->this$0:Lcom/gemini/play/Launcher2Activity;

    iget-object v3, v3, Lcom/gemini/play/Launcher2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
