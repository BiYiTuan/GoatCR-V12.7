.class final Lcom/gemini/play/MenuView$16;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MenuView;->unbundlingActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelButton:Landroid/widget/Button;

.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/gemini/play/MenuView$16;->val$okButton:Landroid/widget/Button;

    iput-object p2, p0, Lcom/gemini/play/MenuView$16;->val$cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 730
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 732
    const-string v0, "KeyEvent KEYCODE_DPAD"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 733
    packed-switch p2, :pswitch_data_0

    .line 753
    :cond_0
    :goto_0
    return v2

    .line 736
    :pswitch_0
    const-string v0, "KeyEvent KEYCODE_DPAD_LEFT"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/gemini/play/MenuView$16;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 738
    iget-object v0, p0, Lcom/gemini/play/MenuView$16;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 739
    iget-object v0, p0, Lcom/gemini/play/MenuView$16;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 740
    iget-object v0, p0, Lcom/gemini/play/MenuView$16;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0

    .line 744
    :pswitch_1
    const-string v0, "KeyEvent KEYCODE_DPAD_RIGHT"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/gemini/play/MenuView$16;->val$cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 746
    iget-object v0, p0, Lcom/gemini/play/MenuView$16;->val$cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 747
    iget-object v0, p0, Lcom/gemini/play/MenuView$16;->val$cancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 748
    iget-object v0, p0, Lcom/gemini/play/MenuView$16;->val$cancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
