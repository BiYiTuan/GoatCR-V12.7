.class public Lorg/cybergarage/xml/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/cybergarage/xml/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/cybergarage/xml/AttributeList;

.field private e:Lorg/cybergarage/xml/NodeList;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/xml/b;->a:Lorg/cybergarage/xml/b;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/b;->c:Ljava/lang/String;

    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/b;->d:Lorg/cybergarage/xml/AttributeList;

    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/b;->e:Lorg/cybergarage/xml/NodeList;

    iput-object v1, p0, Lorg/cybergarage/xml/b;->f:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/b;->a(Lorg/cybergarage/xml/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/xml/b;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p2}, Lorg/cybergarage/xml/b;->a(Ljava/io/PrintWriter;IZ)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->a:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 5

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->e()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/b;->b(I)Lorg/cybergarage/xml/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/cybergarage/xml/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/cybergarage/xml/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/xml/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/io/PrintWriter;IZ)V
    .locals 7

    invoke-virtual {p0, p2}, Lorg/cybergarage/xml/b;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p3, :cond_3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/b;->a(Ljava/io/PrintWriter;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "></"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lorg/cybergarage/xml/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/b;->a(Ljava/io/PrintWriter;)V

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->g()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v5, v6}, Lorg/cybergarage/xml/b;->a(Ljava/io/PrintWriter;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/xml/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/xml/b;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/xml/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/xml/b;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/cybergarage/xml/a;)V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->d:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/cybergarage/xml/b;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/xml/b;->a:Lorg/cybergarage/xml/b;

    return-void
.end method

.method public a(Lorg/cybergarage/xml/b;I)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/cybergarage/xml/b;->a(Lorg/cybergarage/xml/b;)V

    iget-object v0, p0, Lorg/cybergarage/xml/b;->e:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/xml/NodeList;->insertElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(I)Lorg/cybergarage/xml/a;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->d:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(I)Lorg/cybergarage/xml/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/cybergarage/xml/b;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->a()Lorg/cybergarage/xml/b;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/xml/b;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/cybergarage/xml/a;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/b;->a(Lorg/cybergarage/xml/a;)V

    return-void
.end method

.method public b(Lorg/cybergarage/xml/b;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/xml/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->f()V

    invoke-virtual {p1}, Lorg/cybergarage/xml/b;->e()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/cybergarage/xml/b;->b(I)Lorg/cybergarage/xml/a;

    move-result-object v3

    new-instance v4, Lorg/cybergarage/xml/a;

    invoke-direct {v4, v3}, Lorg/cybergarage/xml/a;-><init>(Lorg/cybergarage/xml/a;)V

    invoke-virtual {p0, v4}, Lorg/cybergarage/xml/b;->a(Lorg/cybergarage/xml/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->h()V

    invoke-virtual {p1}, Lorg/cybergarage/xml/b;->g()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v2

    new-instance v3, Lorg/cybergarage/xml/b;

    invoke-direct {v3}, Lorg/cybergarage/xml/b;-><init>()V

    invoke-virtual {v3, v2}, Lorg/cybergarage/xml/b;->b(Lorg/cybergarage/xml/b;)Z

    invoke-virtual {p0, v3}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->e:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/b;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/cybergarage/xml/b;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/cybergarage/xml/b;->c:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/cybergarage/xml/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/xml/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/b;->d(Ljava/lang/String;)Lorg/cybergarage/xml/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/cybergarage/xml/a;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/b;->a(Lorg/cybergarage/xml/a;)V

    goto :goto_0
.end method

.method public c(Lorg/cybergarage/xml/b;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/cybergarage/xml/b;->a(Lorg/cybergarage/xml/b;)V

    iget-object v0, p0, Lorg/cybergarage/xml/b;->e:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    const-string v0, "   "

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/xml/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lorg/cybergarage/xml/a;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->d:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/a;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cybergarage/xml/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->d:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/AttributeList;->size()I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/b;->d(Ljava/lang/String;)Lorg/cybergarage/xml/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/xml/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/xml/b;

    invoke-direct {v0, p1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    :cond_0
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->d:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/AttributeList;->clear()V

    return-void
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->e:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->e:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->e:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->e:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->clear()V

    return-void
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->g()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/cybergarage/xml/b;->e:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/xml/b;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "utf-8"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
