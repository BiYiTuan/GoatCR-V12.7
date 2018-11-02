.class Lcom/gemini/play/MyLineView$1;
.super Ljava/lang/Object;
.source "MyLineView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/gemini/play/MyLineView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyLineView;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/gemini/play/MyLineView$1;->this$0:Lcom/gemini/play/MyLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/gemini/play/MyLineView$1;->this$0:Lcom/gemini/play/MyLineView;

    invoke-static {v0}, Lcom/gemini/play/MyLineView;->access$000(Lcom/gemini/play/MyLineView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 54
    return-void
.end method
