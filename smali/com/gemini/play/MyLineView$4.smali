.class Lcom/gemini/play/MyLineView$4;
.super Ljava/lang/Object;
.source "MyLineView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyLineView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyLineView;

.field final synthetic val$_this:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyLineView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyLineView;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/gemini/play/MyLineView$4;->this$0:Lcom/gemini/play/MyLineView;

    iput-object p2, p0, Lcom/gemini/play/MyLineView$4;->val$_this:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 85
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/gemini/play/MyLineView$4;->val$_this:Landroid/content/Context;

    const v2, 0x7f060061

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/gemini/play/MyLineView$4;->this$0:Lcom/gemini/play/MyLineView;

    invoke-static {v1}, Lcom/gemini/play/MyLineView;->access$100(Lcom/gemini/play/MyLineView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v1, "listview onfocus"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/gemini/play/MyLineView$4;->this$0:Lcom/gemini/play/MyLineView;

    invoke-static {v1}, Lcom/gemini/play/MyLineView;->access$100(Lcom/gemini/play/MyLineView;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
