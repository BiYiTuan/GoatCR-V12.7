.class Lcom/gemini/play/MyInfoView$7;
.super Ljava/lang/Object;
.source "MyInfoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyInfoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/gemini/play/MyInfoView$7;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 594
    const-string v0, "Button onTouch"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 606
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 599
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/MyInfoView$7;->this$0:Lcom/gemini/play/MyInfoView;

    const-string v1, "mius"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MyInfoView;->access$600(Lcom/gemini/play/MyInfoView;Ljava/lang/String;I)V

    goto :goto_0

    .line 603
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/MyInfoView$7;->this$0:Lcom/gemini/play/MyInfoView;

    const-string v1, "plus"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/gemini/play/MyInfoView;->access$600(Lcom/gemini/play/MyInfoView;Ljava/lang/String;I)V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x7f070000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
