.class Lcom/gemini/goat/ValidateActivity$PluginInterface$5;
.super Ljava/lang/Object;
.source "ValidateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/goat/ValidateActivity$PluginInterface;->CTCNetWorkSetting()V
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
    .line 1102
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$PluginInterface$5;->this$1:Lcom/gemini/goat/ValidateActivity$PluginInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1104
    invoke-static {}, Lcom/gemini/play/MGplayer;->networkActivity()V

    .line 1105
    return-void
.end method
