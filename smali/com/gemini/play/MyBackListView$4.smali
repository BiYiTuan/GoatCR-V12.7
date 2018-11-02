.class Lcom/gemini/play/MyBackListView$4;
.super Ljava/lang/Object;
.source "MyBackListView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackListView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackListView;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/gemini/play/MyBackListView$4;->this$0:Lcom/gemini/play/MyBackListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 119
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/gemini/play/MyBackListView$4;->this$0:Lcom/gemini/play/MyBackListView;

    invoke-static {v2}, Lcom/gemini/play/MyBackListView;->access$200(Lcom/gemini/play/MyBackListView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060061

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/gemini/play/MyBackListView$4;->this$0:Lcom/gemini/play/MyBackListView;

    invoke-static {v2}, Lcom/gemini/play/MyBackListView;->access$100(Lcom/gemini/play/MyBackListView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 123
    sget-object v2, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    sget-object v2, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/gemini/play/BACKplayer;->playbackGetVideoNum(IZ)I

    move-result v1

    .line 126
    .local v1, "i":I
    iget-object v2, p0, Lcom/gemini/play/MyBackListView$4;->this$0:Lcom/gemini/play/MyBackListView;

    invoke-static {v2}, Lcom/gemini/play/MyBackListView;->access$100(Lcom/gemini/play/MyBackListView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 133
    .end local v1    # "i":I
    :cond_0
    :goto_0
    return-void

    .line 130
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Lcom/gemini/play/MyBackListView$4;->this$0:Lcom/gemini/play/MyBackListView;

    invoke-static {v2}, Lcom/gemini/play/MyBackListView;->access$200(Lcom/gemini/play/MyBackListView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040057

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/gemini/play/MyBackListView$4;->this$0:Lcom/gemini/play/MyBackListView;

    invoke-static {v2}, Lcom/gemini/play/MyBackListView;->access$100(Lcom/gemini/play/MyBackListView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
