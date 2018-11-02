.class Lcom/gemini/goat/ValidateActivity$PluginInterface$4;
.super Ljava/lang/Thread;
.source "ValidateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/goat/ValidateActivity$PluginInterface;->CTClanucherActivity2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/goat/ValidateActivity$PluginInterface;


# direct methods
.method constructor <init>(Lcom/gemini/goat/ValidateActivity$PluginInterface;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/goat/ValidateActivity$PluginInterface;

    .prologue
    .line 945
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface$4;->this$1:Lcom/gemini/goat/ValidateActivity$PluginInterface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface$4;->this$1:Lcom/gemini/goat/ValidateActivity$PluginInterface;

    iget-object v3, v3, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v3}, Lcom/gemini/goat/ValidateActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sswwtv.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "imagePath":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/gemini/custom/spain1;->sswwtv_url:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/gemini/play/MGplayer;->donwFileSswwtv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_0
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
