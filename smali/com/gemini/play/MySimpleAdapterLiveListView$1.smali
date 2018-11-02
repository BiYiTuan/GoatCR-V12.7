.class Lcom/gemini/play/MySimpleAdapterLiveListView$1;
.super Ljava/lang/Object;
.source "MySimpleAdapterLiveListView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MySimpleAdapterLiveListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MySimpleAdapterLiveListView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MySimpleAdapterLiveListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MySimpleAdapterLiveListView;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterLiveListView$1;->this$0:Lcom/gemini/play/MySimpleAdapterLiveListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 51
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 53
    :pswitch_0
    const v1, 0x7f06005f

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 56
    :pswitch_1
    const v1, 0x7f040057

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
