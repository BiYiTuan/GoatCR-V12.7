.class public Lcom/gemini/play/LruBitmapCache;
.super Ljava/lang/Object;
.source "LruBitmapCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# static fields
.field public static cacheBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/gemini/play/LruBitmapCache$1;

    sget v1, Lcom/gemini/application/GeminiApplication;->memoryCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/gemini/play/LruBitmapCache$1;-><init>(Lcom/gemini/play/LruBitmapCache;I)V

    iput-object v0, p0, Lcom/gemini/play/LruBitmapCache;->mMemoryCache:Landroid/util/LruCache;

    .line 22
    return-void
.end method


# virtual methods
.method public clearBitmap()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gemini/play/LruBitmapCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 39
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gemini/play/LruBitmapCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/gemini/play/LruBitmapCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-void
.end method
