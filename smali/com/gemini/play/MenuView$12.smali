.class final Lcom/gemini/play/MenuView$12;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MenuView;->unbundlingActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/gemini/play/MenuView$12;->val$okButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 689
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/gemini/play/MenuView$12;->val$okButton:Landroid/widget/Button;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/MenuView$12;->val$okButton:Landroid/widget/Button;

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
