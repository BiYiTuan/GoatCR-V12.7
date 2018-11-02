.class Lcom/gemini/play/MyVodClassify2View$5;
.super Ljava/lang/Object;
.source "MyVodClassify2View.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodClassify2View;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodClassify2View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodClassify2View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View$5;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 164
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View$5;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v1}, Lcom/gemini/play/MyVodClassify2View;->access$700(Lcom/gemini/play/MyVodClassify2View;)Lcom/gemini/play/MySimpleAdapterTypeListView2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MySimpleAdapterTypeListView2;->notifyDataSetChanged()V

    .line 167
    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View$5;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodClassify2View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View$5;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v1}, Lcom/gemini/play/MyVodClassify2View;->access$800(Lcom/gemini/play/MyVodClassify2View;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 174
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View$5;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v1}, Lcom/gemini/play/MyVodClassify2View;->access$700(Lcom/gemini/play/MyVodClassify2View;)Lcom/gemini/play/MySimpleAdapterTypeListView2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MySimpleAdapterTypeListView2;->notifyDataSetChanged()V

    .line 172
    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View$5;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v1}, Lcom/gemini/play/MyVodClassify2View;->access$800(Lcom/gemini/play/MyVodClassify2View;)Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f040057

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    goto :goto_0
.end method
