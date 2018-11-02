.class Lcom/gemini/play/MyDialog2$Builder$5;
.super Ljava/lang/Object;
.source "MyDialog2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyDialog2$Builder;->create()Lcom/gemini/play/MyDialog2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyDialog2$Builder;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyDialog2$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyDialog2$Builder;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/gemini/play/MyDialog2$Builder$5;->this$0:Lcom/gemini/play/MyDialog2$Builder;

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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, "KeyEvent KEYCODE_DPAD"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 232
    packed-switch p2, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return v1

    .line 238
    :pswitch_0
    const-string v0, "KeyEvent KEYCODE_DPAD_LEFT"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder$5;->this$0:Lcom/gemini/play/MyDialog2$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog2$Builder;->access$200(Lcom/gemini/play/MyDialog2$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 240
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder$5;->this$0:Lcom/gemini/play/MyDialog2$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog2$Builder;->access$200(Lcom/gemini/play/MyDialog2$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 241
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder$5;->this$0:Lcom/gemini/play/MyDialog2$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog2$Builder;->access$200(Lcom/gemini/play/MyDialog2$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 242
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder$5;->this$0:Lcom/gemini/play/MyDialog2$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialog2$Builder;->access$200(Lcom/gemini/play/MyDialog2$Builder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
