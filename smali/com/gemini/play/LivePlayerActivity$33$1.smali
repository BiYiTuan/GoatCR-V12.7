.class Lcom/gemini/play/LivePlayerActivity$33$1;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/LivePlayerActivity$33;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity$33;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/LivePlayerActivity$33;

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$33$1;->this$1:Lcom/gemini/play/LivePlayerActivity$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$33$1;->this$1:Lcom/gemini/play/LivePlayerActivity$33;

    iget-object v0, v0, Lcom/gemini/play/LivePlayerActivity$33;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1800(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1773
    return-void
.end method
