.class Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
.super Ljava/lang/Object;
.source "MySimpleAdapterVodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MySimpleAdapterVodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private ItemInfo:Landroid/widget/TextView;

.field private ItemTitle:Landroid/widget/TextView;

.field private ItemView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/gemini/play/MySimpleAdapterVodView;


# direct methods
.method private constructor <init>(Lcom/gemini/play/MySimpleAdapterVodView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->this$0:Lcom/gemini/play/MySimpleAdapterVodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gemini/play/MySimpleAdapterVodView;Lcom/gemini/play/MySimpleAdapterVodView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/gemini/play/MySimpleAdapterVodView;
    .param p2, "x1"    # Lcom/gemini/play/MySimpleAdapterVodView$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;-><init>(Lcom/gemini/play/MySimpleAdapterVodView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->ItemView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->ItemView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->ItemInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->ItemInfo:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->ItemTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->ItemTitle:Landroid/widget/TextView;

    return-object p1
.end method
