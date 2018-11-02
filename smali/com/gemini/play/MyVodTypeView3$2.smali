.class Lcom/gemini/play/MyVodTypeView3$2;
.super Ljava/lang/Object;
.source "MyVodTypeView3.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTypeView3;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTypeView3;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTypeView3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTypeView3;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView3$2;->this$0:Lcom/gemini/play/MyVodTypeView3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x1

    .line 101
    if-ne p2, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3$2;->this$0:Lcom/gemini/play/MyVodTypeView3;

    iget-object v1, v1, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 104
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3$2;->this$0:Lcom/gemini/play/MyVodTypeView3;

    iget-object v1, v1, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 105
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3$2;->this$0:Lcom/gemini/play/MyVodTypeView3;

    iget-object v1, v1, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 106
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3$2;->this$0:Lcom/gemini/play/MyVodTypeView3;

    iget-object v1, v1, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 108
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3$2;->this$0:Lcom/gemini/play/MyVodTypeView3;

    invoke-static {v1}, Lcom/gemini/play/MyVodTypeView3;->access$100(Lcom/gemini/play/MyVodTypeView3;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060061

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView3$2;->this$0:Lcom/gemini/play/MyVodTypeView3;

    iget-object v1, v1, Lcom/gemini/play/MyVodTypeView3;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 114
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
