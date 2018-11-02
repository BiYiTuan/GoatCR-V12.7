.class Lcom/gemini/play/MyListView1$5;
.super Ljava/lang/Object;
.source "MyListView1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyListView1;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyListView1;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyListView1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyListView1;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/gemini/play/MyListView1$5;->this$0:Lcom/gemini/play/MyListView1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/gemini/play/MyListView1$5;->this$0:Lcom/gemini/play/MyListView1;

    invoke-static {v0}, Lcom/gemini/play/MyListView1;->access$000(Lcom/gemini/play/MyListView1;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/gemini/play/MyListView1$5;->this$0:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->showViewTimeout()V

    .line 223
    return-void
.end method
