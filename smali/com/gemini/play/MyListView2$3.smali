.class Lcom/gemini/play/MyListView2$3;
.super Ljava/lang/Object;
.source "MyListView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyListView2;->showPlayList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyListView2;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/gemini/play/MyListView2;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyListView2;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/gemini/play/MyListView2$3;->this$0:Lcom/gemini/play/MyListView2;

    iput p2, p0, Lcom/gemini/play/MyListView2$3;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/gemini/play/MyListView2$3;->this$0:Lcom/gemini/play/MyListView2;

    invoke-static {v0}, Lcom/gemini/play/MyListView2;->access$000(Lcom/gemini/play/MyListView2;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocusFromTouch()Z

    .line 269
    iget-object v0, p0, Lcom/gemini/play/MyListView2$3;->this$0:Lcom/gemini/play/MyListView2;

    invoke-static {v0}, Lcom/gemini/play/MyListView2;->access$000(Lcom/gemini/play/MyListView2;)Landroid/widget/GridView;

    move-result-object v0

    iget v1, p0, Lcom/gemini/play/MyListView2$3;->val$i:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 270
    return-void
.end method
