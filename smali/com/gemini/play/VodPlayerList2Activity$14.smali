.class Lcom/gemini/play/VodPlayerList2Activity$14;
.super Ljava/lang/Object;
.source "VodPlayerList2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerList2Activity;->delCollect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerList2Activity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerList2Activity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$14;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    iput p2, p0, Lcom/gemini/play/VodPlayerList2Activity$14;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$14;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerList2Activity;->access$800(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/CollectVodDB;

    move-result-object v0

    iget v1, p0, Lcom/gemini/play/VodPlayerList2Activity$14;->val$id:I

    invoke-virtual {v0, v1}, Lcom/gemini/play/CollectVodDB;->deleteData(I)Z

    .line 722
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$14;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerList2Activity;->access$402(Lcom/gemini/play/VodPlayerList2Activity;I)I

    .line 723
    sget-object v0, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 724
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity$14;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    const-string v1, "4"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddList(Ljava/lang/String;I)V

    .line 725
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 726
    return-void
.end method
