.class Lcom/gemini/play/MyInfoView$2;
.super Ljava/lang/Object;
.source "MyInfoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyInfoView;->init_ui()V
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
    .line 193
    iput-object p1, p0, Lcom/gemini/play/MyInfoView$2;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 197
    iget-object v0, p0, Lcom/gemini/play/MyInfoView$2;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-static {v0}, Lcom/gemini/play/MyInfoView;->access$300(Lcom/gemini/play/MyInfoView;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/gemini/play/MyInfoView$2;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-static {v0}, Lcom/gemini/play/MyInfoView;->access$400(Lcom/gemini/play/MyInfoView;)V

    .line 199
    :cond_0
    return v1
.end method
