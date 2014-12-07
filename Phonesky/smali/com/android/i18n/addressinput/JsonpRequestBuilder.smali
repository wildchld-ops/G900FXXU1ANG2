.class Lcom/android/i18n/addressinput/JsonpRequestBuilder;
.super Ljava/lang/Object;
.source "JsonpRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;,
        Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    move v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3a

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_2

    :cond_0
    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-le v2, v1, :cond_4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method requestObject(Ljava/lang/String;Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback",
            "<",
            "Lcom/android/i18n/addressinput/JsoMap;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Lcom/android/i18n/addressinput/JsonpRequestBuilder;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;

    invoke-direct {v1, v0, p2}, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;)V

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->start()V

    return-void
.end method

.method setTimeout(I)V
    .locals 2

    # getter for: Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->CLIENT:Lorg/apache/http/client/HttpClient;
    invoke-static {}, Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncHttp;->access$000()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method
