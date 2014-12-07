.class final Lcom/android/i18n/addressinput/LookupKey;
.super Ljava/lang/Object;
.source "LookupKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/LookupKey$1;,
        Lcom/android/i18n/addressinput/LookupKey$Builder;,
        Lcom/android/i18n/addressinput/LookupKey$ScriptType;,
        Lcom/android/i18n/addressinput/LookupKey$KeyType;
    }
.end annotation


# static fields
.field private static final HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;


# instance fields
.field private final mKeyString:Ljava/lang/String;

.field private final mKeyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

.field private final mLanguageCode:Ljava/lang/String;

.field private final mNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScriptType:Lcom/android/i18n/addressinput/LookupKey$ScriptType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/i18n/addressinput/AddressField;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/i18n/addressinput/LookupKey;->HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;

    return-void
.end method

.method private constructor <init>(Lcom/android/i18n/addressinput/LookupKey$Builder;)V
    .locals 1
    .param p1    # Lcom/android/i18n/addressinput/LookupKey$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey$Builder;->access$000(Lcom/android/i18n/addressinput/LookupKey$Builder;)Lcom/android/i18n/addressinput/LookupKey$KeyType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mKeyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    # getter for: Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey$Builder;->access$100(Lcom/android/i18n/addressinput/LookupKey$Builder;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mScriptType:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    # getter for: Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey$Builder;->access$200(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;

    # getter for: Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey$Builder;->access$300(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mLanguageCode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/i18n/addressinput/LookupKey;->getKeyString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mKeyString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/i18n/addressinput/LookupKey$Builder;Lcom/android/i18n/addressinput/LookupKey$1;)V
    .locals 0
    .param p1    # Lcom/android/i18n/addressinput/LookupKey$Builder;
    .param p2    # Lcom/android/i18n/addressinput/LookupKey$1;

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/LookupKey;-><init>(Lcom/android/i18n/addressinput/LookupKey$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey$KeyType;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/LookupKey;

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mKeyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/LookupKey;

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mScriptType:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/i18n/addressinput/LookupKey;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/LookupKey;

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/android/i18n/addressinput/AddressField;
    .locals 1

    sget-object v0, Lcom/android/i18n/addressinput/LookupKey;->HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/LookupKey;

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;

    return-object v0
.end method

.method private getKeyString()Ljava/lang/String;
    .locals 8

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey;->mKeyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/LookupKey$KeyType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey;->mKeyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    sget-object v6, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    if-ne v5, v6, :cond_3

    sget-object v0, Lcom/android/i18n/addressinput/LookupKey;->HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    if-ne v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey;->mLanguageCode:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/i18n/addressinput/LookupKey;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;

    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/i18n/addressinput/LookupKey;->mScriptType:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    invoke-virtual {v6}, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static hasValidKeyPrefix(Ljava/lang/String;)Z
    .locals 5
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey$KeyType;->values()[Lcom/android/i18n/addressinput/LookupKey$KeyType;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/LookupKey$KeyType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/android/i18n/addressinput/LookupKey;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/addressinput/LookupKey;->mKeyString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getKeyForUpperLevelField(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/LookupKey;
    .locals 10
    .param p1    # Lcom/android/i18n/addressinput/AddressField;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/i18n/addressinput/LookupKey;->mKeyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    sget-object v9, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    if-eq v8, v9, :cond_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Only support getting parent keys for the data key type."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    new-instance v5, Lcom/android/i18n/addressinput/LookupKey$Builder;

    invoke-direct {v5, p0}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey;)V

    const/4 v6, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/android/i18n/addressinput/LookupKey;->HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    if-eqz v6, :cond_1

    # getter for: Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/i18n/addressinput/LookupKey$Builder;->access$200(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    # getter for: Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/i18n/addressinput/LookupKey$Builder;->access$200(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-ne v2, p1, :cond_4

    # getter for: Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/i18n/addressinput/LookupKey$Builder;->access$200(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    :goto_1
    return-object v7

    :cond_3
    const/4 v6, 0x1

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/i18n/addressinput/LookupKey;->mLanguageCode:Ljava/lang/String;

    # setter for: Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/i18n/addressinput/LookupKey$Builder;->access$302(Lcom/android/i18n/addressinput/LookupKey$Builder;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/i18n/addressinput/LookupKey;->mScriptType:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    # setter for: Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    invoke-static {v5, v7}, Lcom/android/i18n/addressinput/LookupKey$Builder;->access$102(Lcom/android/i18n/addressinput/LookupKey$Builder;Lcom/android/i18n/addressinput/LookupKey$ScriptType;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v7

    goto :goto_1
.end method

.method getKeyType()Lcom/android/i18n/addressinput/LookupKey$KeyType;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mKeyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    return-object v0
.end method

.method getValueForUpperLevelField(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p0, p1}, Lcom/android/i18n/addressinput/LookupKey;->getKeyForUpperLevelField(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mKeyString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey;->mKeyString:Ljava/lang/String;

    return-object v0
.end method
