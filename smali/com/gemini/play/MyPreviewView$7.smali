.class Lcom/gemini/play/MyPreviewView$7;
.super Ljava/lang/Object;
.source "MyPreviewView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyPreviewView;->scrollPreviewList(I)V
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
    .line 454
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView$7;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView$7;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MyPreviewView;->clearAnimation()V

    .line 465
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView$7;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MyPreviewView;->listFocus()V

    .line 466
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 472
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 478
    return-void
.end method
