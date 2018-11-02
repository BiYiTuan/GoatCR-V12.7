.class Lcom/gemini/play/MyListView1$9;
.super Ljava/lang/Object;
.source "MyListView1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyListView1;->showPlayList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyListView1;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/gemini/play/MyListView1;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyListView1;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/gemini/play/MyListView1$9;->this$0:Lcom/gemini/play/MyListView1;

    iput p2, p0, Lcom/gemini/play/MyListView1$9;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/gemini/play/MyListView1$9;->this$0:Lcom/gemini/play/MyListView1;

    invoke-static {v0}, Lcom/gemini/play/MyListView1;->access$100(Lcom/gemini/play/MyListView1;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 752
    iget-object v0, p0, Lcom/gemini/play/MyListView1$9;->this$0:Lcom/gemini/play/MyListView1;

    invoke-static {v0}, Lcom/gemini/play/MyListView1;->access$100(Lcom/gemini/play/MyListView1;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/gemini/play/MyListView1$9;->val$i:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 753
    return-void
.end method
