.class public Lorg/cybergarage/xml/parser/JaxpParser;
.super Lorg/cybergarage/xml/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/xml/c;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/b;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/xml/parser/JaxpParser;->parse(Lorg/cybergarage/xml/b;Lorg/w3c/dom/Node;)Lorg/cybergarage/xml/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/cybergarage/xml/ParserException;

    invoke-direct {v1, v0}, Lorg/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public parse(Lorg/cybergarage/xml/b;Lorg/w3c/dom/Node;)Lorg/cybergarage/xml/b;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/xml/parser/JaxpParser;->parse(Lorg/cybergarage/xml/b;Lorg/w3c/dom/Node;I)Lorg/cybergarage/xml/b;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/cybergarage/xml/b;Lorg/w3c/dom/Node;I)Lorg/cybergarage/xml/b;
    .locals 6

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v3}, Lorg/cybergarage/xml/b;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v1, Lorg/cybergarage/xml/b;

    invoke-direct {v1}, Lorg/cybergarage/xml/b;-><init>()V

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/cybergarage/xml/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lorg/cybergarage/xml/parser/JaxpParser;->parse(Lorg/cybergarage/xml/b;Lorg/w3c/dom/Node;I)Lorg/cybergarage/xml/b;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_5

    move-object p1, v1

    goto :goto_0
.end method
