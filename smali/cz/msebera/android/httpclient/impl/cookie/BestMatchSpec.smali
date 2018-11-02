.class public Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;
.super Ljava/lang/Object;
.source "BestMatchSpec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpec;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private compat:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

.field private final oneHeader:Z

.field private strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    .line 66
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->oneHeader:Z

    .line 67
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private getCompat()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->compat:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->compat:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    .line 91
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->compat:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    return-object v0
.end method

.method private getObsoleteStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    .line 84
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    return-object v0
.end method

.method private getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    .line 77
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    return-object v0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    const-string v3, "List of cookies"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    const v2, 0x7fffffff

    .line 174
    .local v2, "version":I
    const/4 v1, 0x1

    .line 175
    .local v1, "isSetCookie2":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 176
    .local v0, "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    instance-of v4, v0, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-nez v4, :cond_1

    .line 177
    const/4 v1, 0x0

    .line 179
    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v2, :cond_0

    .line 180
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v2

    goto :goto_0

    .line 183
    .end local v0    # "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    :cond_2
    if-lez v2, :cond_4

    .line 184
    if-eqz v1, :cond_3

    .line 185
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 190
    :goto_1
    return-object v3

    .line 187
    :cond_3
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 190
    :cond_4
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getCompat()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_1
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v0

    return v0
.end method

.method public getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->getVersionHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 1
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    .prologue
    .line 158
    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getCompat()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 12
    .param p1, "header"    # Lcz/msebera/android/httpclient/Header;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 97
    const-string v8, "Header"

    invoke-static {p1, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v8, "Cookie origin"

    invoke-static {p2, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    .line 100
    .local v3, "helems":[Lcz/msebera/android/httpclient/HeaderElement;
    const/4 v7, 0x0

    .line 101
    .local v7, "versioned":Z
    const/4 v4, 0x0

    .line 102
    .local v4, "netscape":Z
    array-length v10, v3

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v2, v3, v8

    .line 103
    .local v2, "helem":Lcz/msebera/android/httpclient/HeaderElement;
    const-string v11, "version"

    invoke-interface {v2, v11}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 104
    const/4 v7, 0x1

    .line 106
    :cond_0
    const-string v11, "expires"

    invoke-interface {v2, v11}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 107
    const/4 v4, 0x1

    .line 102
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "helem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_2
    if-nez v4, :cond_3

    if-nez v7, :cond_6

    .line 113
    :cond_3
    sget-object v5, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    .line 116
    .local v5, "parser":Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;
    instance-of v8, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v8, :cond_4

    move-object v8, p1

    .line 117
    check-cast v8, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v8}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    .line 118
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    .line 119
    .end local p1    # "header":Lcz/msebera/android/httpclient/Header;
    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v8

    .line 120
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v10

    invoke-direct {v1, v8, v10}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 130
    .local v1, "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    :goto_1
    const/4 v8, 0x1

    new-array v3, v8, [Lcz/msebera/android/httpclient/HeaderElement;

    .end local v3    # "helems":[Lcz/msebera/android/httpclient/HeaderElement;
    invoke-virtual {v5, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v8

    aput-object v8, v3, v9

    .line 131
    .restart local v3    # "helems":[Lcz/msebera/android/httpclient/HeaderElement;
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getCompat()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v8

    invoke-virtual {v8, v3, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v8

    .line 136
    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local v1    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    .end local v5    # "parser":Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;
    :goto_2
    return-object v8

    .line 122
    .restart local v5    # "parser":Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;
    .restart local p1    # "header":Lcz/msebera/android/httpclient/Header;
    :cond_4
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "s":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 124
    new-instance v8, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v9, "Header value is null"

    invoke-direct {v8, v9}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 126
    :cond_5
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 127
    .restart local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 128
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v8

    invoke-direct {v1, v9, v8}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .restart local v1    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    goto :goto_1

    .line 133
    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .end local v1    # "cursor":Lcz/msebera/android/httpclient/message/ParserCursor;
    .end local v5    # "parser":Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;
    .end local v6    # "s":Ljava/lang/String;
    :cond_6
    const-string v8, "Set-Cookie2"

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 134
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v8

    invoke-virtual {v8, v3, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v8

    goto :goto_2

    .line 136
    :cond_7
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v8

    invoke-virtual {v8, v3, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v8

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "best-match"

    return-object v0
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 1
    .param p1, "cookie"    # Lcz/msebera/android/httpclient/cookie/Cookie;
    .param p2, "origin"    # Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 147
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getCompat()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_0
.end method
