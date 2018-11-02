.class Lcom/gemini/play/LivePlayerActivity$30;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->inputPasswordTypeView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$30;->this$0:Lcom/gemini/play/LivePlayerActivity;

    iput-object p2, p0, Lcom/gemini/play/LivePlayerActivity$30;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1621
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    .line 1622
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$30;->val$id:Ljava/lang/String;

    sput-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    .line 1623
    return-void
.end method
