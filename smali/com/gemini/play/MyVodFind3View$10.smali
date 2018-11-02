.class Lcom/gemini/play/MyVodFind3View$10;
.super Ljava/lang/Object;
.source "MyVodFind3View.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFind3View;->hideFindView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFind3View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind3View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind3View;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3View$10;->this$0:Lcom/gemini/play/MyVodFind3View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/gemini/play/MyVodFind3View$10;->this$0:Lcom/gemini/play/MyVodFind3View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFind3View;->setVisibility(I)V

    .line 299
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 305
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 311
    return-void
.end method
