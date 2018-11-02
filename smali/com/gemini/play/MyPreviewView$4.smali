.class Lcom/gemini/play/MyPreviewView$4;
.super Ljava/lang/Object;
.source "MyPreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyPreviewView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyPreviewView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyPreviewView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyPreviewView;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView$4;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView$4;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v0}, Lcom/gemini/play/MyPreviewView;->access$400(Lcom/gemini/play/MyPreviewView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView$4;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MyPreviewView;->showViewTimeout()V

    .line 196
    return-void
.end method
