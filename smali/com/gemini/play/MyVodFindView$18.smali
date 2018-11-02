.class Lcom/gemini/play/MyVodFindView$18;
.super Ljava/lang/Object;
.source "MyVodFindView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFindView;->hideFindView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFindView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFindView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFindView;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/gemini/play/MyVodFindView$18;->this$0:Lcom/gemini/play/MyVodFindView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/gemini/play/MyVodFindView$18;->this$0:Lcom/gemini/play/MyVodFindView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->setVisibility(I)V

    .line 545
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 551
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 557
    return-void
.end method
