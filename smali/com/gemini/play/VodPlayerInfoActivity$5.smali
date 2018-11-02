.class Lcom/gemini/play/VodPlayerInfoActivity$5;
.super Ljava/lang/Object;
.source "VodPlayerInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerInfoActivity;->init(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerInfoActivity;

.field final synthetic val$s:Lcom/gemini/play/VodListStatus;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerInfoActivity;Lcom/gemini/play/VodListStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity$5;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerInfoActivity$5;->val$s:Lcom/gemini/play/VodListStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity$5;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerInfoActivity;->access$600(Lcom/gemini/play/VodPlayerInfoActivity;)Lcom/gemini/play/MyVodSelectionsView;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity$5;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity$5;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerInfoActivity;->access$500(Lcom/gemini/play/VodPlayerInfoActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyVodSelectionsView;->showSelectionsView(Lcom/gemini/play/VodListStatus;I)V

    .line 315
    return-void
.end method
