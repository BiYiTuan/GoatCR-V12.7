.class Lcom/gemini/play/ScrollTextView$1;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/ScrollTextView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/ScrollTextView;


# direct methods
.method constructor <init>(Lcom/gemini/play/ScrollTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/ScrollTextView;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/gemini/play/ScrollTextView$1;->this$0:Lcom/gemini/play/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/gemini/play/ScrollTextView$1;->this$0:Lcom/gemini/play/ScrollTextView;

    invoke-virtual {v0}, Lcom/gemini/play/ScrollTextView;->invalidate()V

    .line 275
    return-void
.end method
