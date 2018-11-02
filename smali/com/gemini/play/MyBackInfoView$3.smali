.class Lcom/gemini/play/MyBackInfoView$3;
.super Ljava/lang/Object;
.source "MyBackInfoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackInfoView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackInfoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackInfoView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/gemini/play/MyBackInfoView$3;->this$0:Lcom/gemini/play/MyBackInfoView;

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

    .line 170
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView$3;->this$0:Lcom/gemini/play/MyBackInfoView;

    invoke-static {v0}, Lcom/gemini/play/MyBackInfoView;->access$300(Lcom/gemini/play/MyBackInfoView;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView$3;->this$0:Lcom/gemini/play/MyBackInfoView;

    invoke-static {v0}, Lcom/gemini/play/MyBackInfoView;->access$500(Lcom/gemini/play/MyBackInfoView;)V

    .line 172
    :cond_0
    return v1
.end method
