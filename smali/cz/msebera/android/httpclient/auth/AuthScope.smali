.class public Lcz/msebera/android/httpclient/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field public static final ANY:Lcz/msebera/android/httpclient/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String;

.field public static final ANY_PORT:I = -0x1

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I

.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    .line 61
    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    .line 66
    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    .line 73
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthScope;

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/4 v2, -0x1

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v4, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY:Lcz/msebera/android/httpclient/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 2
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;

    .prologue
    .line 124
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "schemeName"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/auth/AuthScope;)V
    .locals 1
    .param p1, "authscope"    # Lcz/msebera/android/httpclient/auth/AuthScope;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const-string v0, "Scope"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthScope;->getPort()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    .line 168
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthScope;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthScope;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 157
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "scheme"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p1, :cond_2

    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 108
    if-gez p2, :cond_0

    const/4 p2, -0x1

    .end local p2    # "port":I
    :cond_0
    iput p2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    .line 109
    if-nez p3, :cond_1

    sget-object p3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    .end local p3    # "realm":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 110
    if-nez p4, :cond_3

    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 111
    return-void

    .line 107
    .restart local p2    # "port":I
    .restart local p3    # "realm":Ljava/lang/String;
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    .end local p2    # "port":I
    .end local p3    # "realm":Ljava/lang/String;
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    if-nez p1, :cond_1

    move v1, v2

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 248
    :cond_1
    if-eq p1, p0, :cond_0

    .line 251
    instance-of v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;

    if-nez v3, :cond_2

    .line 252
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 254
    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthScope;

    .line 255
    .local v0, "that":Lcz/msebera/android/httpclient/auth/AuthScope;
    iget-object v3, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v4, v0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 256
    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    iget v4, v0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v4, v0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 258
    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v4, v0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 259
    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 295
    const/16 v0, 0x11

    .line 296
    .local v0, "hash":I
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 297
    iget v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 298
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 299
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 300
    return v0
.end method

.method public match(Lcz/msebera/android/httpclient/auth/AuthScope;)I
    .locals 4
    .param p1, "that"    # Lcz/msebera/android/httpclient/auth/AuthScope;

    .prologue
    const/4 v1, -0x1

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "factor":I
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 216
    :cond_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    add-int/lit8 v0, v0, 0x2

    .line 223
    :cond_1
    iget v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    iget v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    if-ne v2, v3, :cond_6

    .line 224
    add-int/lit8 v0, v0, 0x4

    .line 230
    :cond_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 231
    add-int/lit8 v0, v0, 0x8

    :cond_3
    move v1, v0

    .line 237
    :goto_0
    return v1

    .line 212
    :cond_4
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 219
    :cond_5
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 226
    :cond_6
    iget v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    if-eq v2, v1, :cond_2

    iget v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    if-eq v2, v1, :cond_2

    goto :goto_0

    .line 233
    :cond_7
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :goto_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 280
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    if-ltz v1, :cond_1

    .line 283
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    iget v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 277
    :cond_2
    const-string v1, "<any realm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
