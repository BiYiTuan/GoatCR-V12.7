.class Lcom/gemini/play/MyPreviewView$8;
.super Ljava/lang/Object;
.source "MyPreviewView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyPreviewView;->hidePreviewList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyPreviewView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyPreviewView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyPreviewView;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView$8;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView$8;->this$0:Lcom/gemini/play/MyPreviewView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyPreviewView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView$8;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v0}, Lcom/gemini/play/MyPreviewView;->access$400(Lcom/gemini/play/MyPreviewView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 514
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 520
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 526
    return-void
.end method
