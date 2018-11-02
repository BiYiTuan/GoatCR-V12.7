.class public Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;
.super Ljava/lang/Object;
.source "MySimpleAdapterVodView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MySimpleAdapterVodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1e240L


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MySimpleAdapterVodView;

.field private url:Ljava/lang/String;

.field private viewHolder:Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/gemini/play/MySimpleAdapterVodView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MySimpleAdapterVodView;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;->this$0:Lcom/gemini/play/MySimpleAdapterVodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViewHolder()Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;->viewHolder:Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "u"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;->url:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setViewHolder(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)V
    .locals 0
    .param p1, "v"    # Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;->viewHolder:Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;

    .line 336
    return-void
.end method
