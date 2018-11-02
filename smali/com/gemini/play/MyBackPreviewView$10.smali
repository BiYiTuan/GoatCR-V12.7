.class Lcom/gemini/play/MyBackPreviewView$10;
.super Ljava/lang/Object;
.source "MyBackPreviewView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackPreviewView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackPreviewView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackPreviewView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackPreviewView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/gemini/play/MyBackPreviewView$10;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 210
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView$10;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v1}, Lcom/gemini/play/MyBackPreviewView;->access$400(Lcom/gemini/play/MyBackPreviewView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060061

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView$10;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v1}, Lcom/gemini/play/MyBackPreviewView;->access$000(Lcom/gemini/play/MyBackPreviewView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_0
    return-void

    .line 216
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView$10;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v1}, Lcom/gemini/play/MyBackPreviewView;->access$400(Lcom/gemini/play/MyBackPreviewView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040057

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView$10;->this$0:Lcom/gemini/play/MyBackPreviewView;

    invoke-static {v1}, Lcom/gemini/play/MyBackPreviewView;->access$000(Lcom/gemini/play/MyBackPreviewView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
