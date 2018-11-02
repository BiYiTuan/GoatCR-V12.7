.class Lcom/gemini/play/MyLiveCollectView$6;
.super Ljava/lang/Object;
.source "MyLiveCollectView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyLiveCollectView;->showView(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyLiveCollectView;

.field final synthetic val$_this:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyLiveCollectView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyLiveCollectView;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/gemini/play/MyLiveCollectView$6;->this$0:Lcom/gemini/play/MyLiveCollectView;

    iput-object p2, p0, Lcom/gemini/play/MyLiveCollectView$6;->val$_this:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 156
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/gemini/play/MyLiveCollectView$6;->val$_this:Landroid/content/Context;

    const v2, 0x7f0a0044

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/gemini/play/MyLiveCollectView$6;->this$0:Lcom/gemini/play/MyLiveCollectView;

    invoke-static {v1}, Lcom/gemini/play/MyLiveCollectView;->access$300(Lcom/gemini/play/MyLiveCollectView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 166
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v1, "listview onfocus"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/gemini/play/MyLiveCollectView$6;->this$0:Lcom/gemini/play/MyLiveCollectView;

    invoke-static {v1}, Lcom/gemini/play/MyLiveCollectView;->access$300(Lcom/gemini/play/MyLiveCollectView;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
