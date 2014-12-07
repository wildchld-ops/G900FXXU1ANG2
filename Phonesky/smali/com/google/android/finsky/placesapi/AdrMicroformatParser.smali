.class public Lcom/google/android/finsky/placesapi/AdrMicroformatParser;
.super Ljava/lang/Object;
.source "AdrMicroformatParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/placesapi/AdrMicroformatParser$1;,
        Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;,
        Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;,
        Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;
    }
.end annotation


# static fields
.field private static final ADR_TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->ADR_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->values()[Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->getAdrClass()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->ADR_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->getAdrClass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->ADR_TYPE_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method private appendXmlHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\"?><root>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</root>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getFirstAndRemove(Ljava/util/LinkedList;Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;)Ljava/lang/String;
    .locals 5
    .param p2    # Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;",
            ">;",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;

    iget-object v3, v2, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;->type:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    if-ne v3, p2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;

    iget-object v3, v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;->type:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    sget-object v4, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->SEPARATOR:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    if-ne v3, v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    iget-object v3, v2, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;->text:Ljava/lang/String;

    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method join(Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    iget-object v2, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->mContext:Landroid/content/Context;

    const v3, 0x7f09033b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcom/google/android/finsky/protos/BillingAddress$Address;
    .locals 9
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/placesapi/AdrMicroformatParserException;
        }
    .end annotation

    const/4 v8, 0x1

    new-instance v0, Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/BillingAddress$Address;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->split(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    sget-object v7, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->UNKNOWN:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    invoke-virtual {p0, v4, v7}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->removeAll(Ljava/util/LinkedList;Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;)V

    sget-object v7, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_STREET_ADDRESS:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    invoke-virtual {p0, v4, v7}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->getFirstAndRemove(Ljava/util/LinkedList;Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iput-object v1, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    iput-boolean v8, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine1:Z

    :cond_0
    sget-object v7, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_LOCALITY:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    invoke-virtual {p0, v4, v7}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->getFirstAndRemove(Ljava/util/LinkedList;Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iput-object v3, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    iput-boolean v8, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasCity:Z

    :cond_1
    sget-object v7, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_POSTAL_CODE:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    invoke-virtual {p0, v4, v7}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->getFirstAndRemove(Ljava/util/LinkedList;Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iput-object v5, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCode:Ljava/lang/String;

    iput-boolean v8, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCode:Z

    :cond_2
    sget-object v7, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_REGION:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    invoke-virtual {p0, v4, v7}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->getFirstAndRemove(Ljava/util/LinkedList;Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iput-object v6, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->state:Ljava/lang/String;

    iput-boolean v8, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasState:Z

    :cond_3
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->removeTrailingSeparators(Ljava/util/LinkedList;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->join(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iput-object v2, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine2:Ljava/lang/String;

    iput-boolean v8, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine2:Z

    :cond_4
    return-object v0
.end method

.method removeAll(Ljava/util/LinkedList;Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;)V
    .locals 1
    .param p2    # Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;",
            ">;",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;",
            ")V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->getFirstAndRemove(Ljava/util/LinkedList;Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method

.method removeTrailingSeparators(Ljava/util/LinkedList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;

    iget-object v1, v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;->type:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    sget-object v2, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->SEPARATOR:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method split(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 7
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser$AnnotatedPart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/placesapi/AdrMicroformatParserException;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    new-instance v2, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;-><init>(Lcom/google/android/finsky/placesapi/AdrMicroformatParser$1;)V

    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->appendXmlHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v4, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    iget-object v4, v2, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$MicroformatAdrHandler;->parts:Ljava/util/LinkedList;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Lcom/google/android/finsky/placesapi/AdrMicroformatParserException;

    invoke-direct {v4, v0}, Lcom/google/android/finsky/placesapi/AdrMicroformatParserException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v0

    new-instance v4, Lcom/google/android/finsky/placesapi/AdrMicroformatParserException;

    invoke-direct {v4, v0}, Lcom/google/android/finsky/placesapi/AdrMicroformatParserException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v0

    new-instance v4, Lcom/google/android/finsky/placesapi/AdrMicroformatParserException;

    invoke-direct {v4, v0}, Lcom/google/android/finsky/placesapi/AdrMicroformatParserException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
