.class Lcom/gemini/play/MyDialog$Builder$5;
.super Ljava/lang/Object;
.source "MyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyDialog$Builder;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyDialog$Builder;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/gemini/play/MyDialog$Builder$5;->this$0:Lcom/gemini/play/MyDialog$Builder;

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

    .line 234
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const-string v0, "KeyEvent KEYCODE_DPAD"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 237
    packed-switch p2, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    return v2

    .line 242
    :pswitch_0
    const-string v0, "KeyEvent KEYCODE_DPAD_LEFT"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder$5;->this$0:Lcom/gemini/play/MyDialog$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog$Builder;->access$200(Lcom/gemini/play/MyDialog$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 244
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder$5;->this$0:Lcom/gemini/play/MyDialog$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog$Builder;->access$200(Lcom/gemini/play/MyDialog$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 245
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder$5;->this$0:Lcom/gemini/play/MyDialog$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog$Builder;->access$200(Lcom/gemini/play/MyDialog$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 246
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder$5;->this$0:Lcom/gemini/play/MyDialog$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog$Builder;->access$200(Lcom/gemini/play/MyDialog$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0

    .line 250
    :pswitch_1
    const-string v0, "KeyEvent KEYCODE_DPAD_RIGHT"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder$5;->this$0:Lcom/gemini/play/MyDialog$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog$Builder;->access$300(Lcom/gemini/play/MyDialog$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 252
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder$5;->this$0:Lcom/gemini/play/MyDialog$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog$Builder;->access$300(Lcom/gemini/play/MyDialog$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 253
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder$5;->this$0:Lcom/gemini/play/MyDialog$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog$Builder;->access$300(Lcom/gemini/play/MyDialog$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 254
    iget-object v0, p0, Lcom/gemini/play/MyDialog$Builder$5;->this$0:Lcom/gemini/play/MyDialog$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog$Builder;->access$300(Lcom/gemini/play/MyDialog$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
