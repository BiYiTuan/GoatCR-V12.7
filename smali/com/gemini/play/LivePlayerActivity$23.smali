.class Lcom/gemini/play/LivePlayerActivity$23;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$23;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1104
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$23;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1200(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$23;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1300(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$23;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$1400(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1107
    return-void
.end method
