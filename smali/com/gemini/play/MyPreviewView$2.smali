.class Lcom/gemini/play/MyPreviewView$2;
.super Ljava/lang/Object;
.source "MyPreviewView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 162
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView$2;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView$2;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MyPreviewView;->showViewTimeout()V

    .line 168
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView$2;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MyPreviewView;->showViewTimeout()V

    .line 174
    return-void
.end method
