.class Lcom/gemini/play/MyListView1$11;
.super Ljava/lang/Object;
.source "MyListView1.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyListView1;->hidePlayList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyListView1;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyListView1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyListView1;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/gemini/play/MyListView1$11;->this$0:Lcom/gemini/play/MyListView1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/gemini/play/MyListView1$11;->this$0:Lcom/gemini/play/MyListView1;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyListView1;->setVisibility(I)V

    .line 821
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 827
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 833
    return-void
.end method
