.class public Lcom/android/i18n/addressinput/AddressVerificationNodeData;
.super Ljava/lang/Object;
.source "AddressVerificationNodeData.java"


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressDataKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressDataKey;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct StandardNodeData with null map"

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
