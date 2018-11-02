.class Lcom/gemini/goat/ValidateActivity$PluginInterface$3;
.super Ljava/lang/Object;
.source "ValidateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 930
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface$3;->this$1:Lcom/gemini/goat/ValidateActivity$PluginInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 932
    sput-boolean v2, Lcom/gemini/play/MGplayer;->boot_launcher:Z

    .line 933
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface$3;->this$1:Lcom/gemini/goat/ValidateActivity$PluginInterface;

    iget-object v0, v0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    const-class v1, Lcom/gemini/play/Launcher2Activity;

    invoke-static {v0, v1}, Lcom/gemini/play/MGplayer;->openActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 935
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface$3;->this$1:Lcom/gemini/goat/ValidateActivity$PluginInterface;

    iget-object v0, v0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-virtual {v0}, Lcom/gemini/goat/ValidateActivity;->finish()V

    .line 937
    sput-boolean v2, Lcom/gemini/custom/lookiptv;->lookiptvloaded:Z

    .line 939
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface$3;->this$1:Lcom/gemini/goat/ValidateActivity$PluginInterface;

    iget-object v0, v0, Lcom/gemini/goat/ValidateActivity$PluginInterface;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-static {v0}, Lcom/gemini/goat/ValidateActivity;->access$100(Lcom/gemini/goat/ValidateActivity;)V

    .line 940
    return-void
.end method
