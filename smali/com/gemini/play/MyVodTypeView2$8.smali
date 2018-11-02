.class Lcom/gemini/play/MyVodTypeView2$8;
.super Ljava/lang/Object;
.source "MyVodTypeView2.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTypeView2;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTypeView2;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTypeView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTypeView2;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView2$8;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 240
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2$8;->this$0:Lcom/gemini/play/MyVodTypeView2;

    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2$8;->this$0:Lcom/gemini/play/MyVodTypeView2;

    invoke-static {v1}, Lcom/gemini/play/MyVodTypeView2;->access$300(Lcom/gemini/play/MyVodTypeView2;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/gemini/play/MyVodTypeView2;->access$400(Lcom/gemini/play/MyVodTypeView2;I)V

    goto :goto_0
.end method
