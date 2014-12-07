.class Lcom/android/i18n/addressinput/LookupKey$Builder;
.super Ljava/lang/Object;
.source "LookupKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/LookupKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

.field private languageCode:Ljava/lang/String;

.field private nodes:Ljava/util/Map;
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

.field private script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V
    .locals 2
    .param p1    # Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    return-void
.end method

.method constructor <init>(Lcom/android/i18n/addressinput/LookupKey;)V
    .locals 6
    .param p1    # Lcom/android/i18n/addressinput/LookupKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v4, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    # getter for: Lcom/android/i18n/addressinput/LookupKey;->mKeyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$400(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey$KeyType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    # getter for: Lcom/android/i18n/addressinput/LookupKey;->mScriptType:Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$500(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    # getter for: Lcom/android/i18n/addressinput/LookupKey;->mLanguageCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$600(Lcom/android/i18n/addressinput/LookupKey;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    # getter for: Lcom/android/i18n/addressinput/LookupKey;->HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;
    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    # getter for: Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$800(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    # getter for: Lcom/android/i18n/addressinput/LookupKey;->mNodes:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$800(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/lang/String;

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v5, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v5, v1, v8

    sget-object v6, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-virtual {v6}, Lcom/android/i18n/addressinput/LookupKey$KeyType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v1, v8

    sget-object v6, Lcom/android/i18n/addressinput/LookupKey$KeyType;->EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-virtual {v6}, Lcom/android/i18n/addressinput/LookupKey$KeyType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong key type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    array-length v5, v1

    # getter for: Lcom/android/i18n/addressinput/LookupKey;->HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;
    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    if-le v5, v6, :cond_1

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "input key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' deeper than supported hierarchy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    aget-object v5, v1, v8

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    iput-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    array-length v5, v1

    if-le v5, v7, :cond_4

    aget-object v5, v1, v7

    invoke-static {v5}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    if-eq v5, v9, :cond_2

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Wrong format: Substring should be country code--language code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    aget-object v4, v2, v8

    aget-object v5, v2, v7

    iput-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    :cond_3
    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    # getter for: Lcom/android/i18n/addressinput/LookupKey;->HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;
    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    array-length v5, v1

    if-le v5, v9, :cond_5

    const/4 v0, 0x2

    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_5

    aget-object v5, v1, v0

    invoke-static {v5}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    # getter for: Lcom/android/i18n/addressinput/LookupKey;->HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;
    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    aget-object v6, v6, v7

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    aget-object v5, v1, v8

    const-string v6, "examples"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/i18n/addressinput/LookupKey$KeyType;->EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    iput-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    array-length v5, v1

    if-le v5, v7, :cond_8

    iget-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    aget-object v7, v1, v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    array-length v5, v1

    if-le v5, v9, :cond_9

    aget-object v3, v1, v9

    const-string v5, "local"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    :cond_9
    :goto_2
    array-length v5, v1

    if-le v5, v10, :cond_5

    aget-object v5, v1, v10

    const-string v6, "_default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    aget-object v5, v1, v10

    iput-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string v5, "latin"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v5, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto :goto_2

    :cond_b
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Script type has to be either latin or local."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/LookupKey$Builder;)Lcom/android/i18n/addressinput/LookupKey$KeyType;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/LookupKey$Builder;

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/LookupKey$Builder;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/LookupKey$Builder;

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/i18n/addressinput/LookupKey$Builder;Lcom/android/i18n/addressinput/LookupKey$ScriptType;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 0
    .param p0    # Lcom/android/i18n/addressinput/LookupKey$Builder;
    .param p1    # Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object p1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/LookupKey$Builder;

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/LookupKey$Builder;

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/i18n/addressinput/LookupKey$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/i18n/addressinput/LookupKey$Builder;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method build()Lcom/android/i18n/addressinput/LookupKey;
    .locals 2

    new-instance v0, Lcom/android/i18n/addressinput/LookupKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/i18n/addressinput/LookupKey;-><init>(Lcom/android/i18n/addressinput/LookupKey$Builder;Lcom/android/i18n/addressinput/LookupKey$1;)V

    return-object v0
.end method

.method setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;
    .locals 3
    .param p1    # Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
