.class Lcom/gemini/play/LivePlayerActivity$14;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$14;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$14;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$400(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$14;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyListView;->getCurrentID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$14;->this$0:Lcom/gemini/play/LivePlayerActivity;

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v2}, Lcom/gemini/play/LivePlayerActivity;->access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V

    .line 606
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$14;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/LivePlayerActivity;->access$500(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyInfoView;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInfoView;->showInfoPanal(Ljava/lang/String;)V

    .line 607
    return-void
.end method
