.class Lcom/gemini/play/MyHomeBar$3;
.super Ljava/lang/Object;
.source "MyHomeBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyHomeBar;->selectIndex(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyHomeBar;

.field final synthetic val$index2:I

.field final synthetic val$len:I


# direct methods
.method constructor <init>(Lcom/gemini/play/MyHomeBar;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyHomeBar;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar$3;->this$0:Lcom/gemini/play/MyHomeBar;

    iput p2, p0, Lcom/gemini/play/MyHomeBar$3;->val$index2:I

    iput p3, p0, Lcom/gemini/play/MyHomeBar$3;->val$len:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 189
    iget v4, p0, Lcom/gemini/play/MyHomeBar$3;->val$index2:I

    rsub-int/lit8 v4, v4, 0x0

    iget v5, p0, Lcom/gemini/play/MyHomeBar$3;->val$len:I

    mul-int v1, v4, v5

    .line 190
    .local v1, "left":I
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar$3;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v4}, Lcom/gemini/play/MyHomeBar;->access$200(Lcom/gemini/play/MyHomeBar;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    .line 191
    .local v2, "top":I
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar$3;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v4}, Lcom/gemini/play/MyHomeBar;->access$200(Lcom/gemini/play/MyHomeBar;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    .line 192
    .local v3, "width":I
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar$3;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v4}, Lcom/gemini/play/MyHomeBar;->access$200(Lcom/gemini/play/MyHomeBar;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 193
    .local v0, "height":I
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar$3;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v4}, Lcom/gemini/play/MyHomeBar;->access$200(Lcom/gemini/play/MyHomeBar;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 194
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar$3;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v4}, Lcom/gemini/play/MyHomeBar;->access$200(Lcom/gemini/play/MyHomeBar;)Landroid/widget/LinearLayout;

    move-result-object v4

    add-int v5, v1, v3

    add-int v6, v2, v0

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 195
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 201
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 207
    return-void
.end method
