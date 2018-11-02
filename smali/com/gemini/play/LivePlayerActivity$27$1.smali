.class Lcom/gemini/play/LivePlayerActivity$27$1;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity$27;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/LivePlayerActivity$27;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity$27;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/LivePlayerActivity$27;

    .prologue
    .line 1523
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$27$1;->this$1:Lcom/gemini/play/LivePlayerActivity$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$27$1;->this$1:Lcom/gemini/play/LivePlayerActivity$27;

    iget-object v0, v0, Lcom/gemini/play/LivePlayerActivity$27;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/gemini/play/LivePlayerActivity;->finish()V

    .line 1526
    return-void
.end method
