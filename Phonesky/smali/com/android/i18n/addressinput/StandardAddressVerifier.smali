.class public Lcom/android/i18n/addressinput/StandardAddressVerifier;
.super Ljava/lang/Object;
.source "StandardAddressVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;,
        Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;
    }
.end annotation


# static fields
.field private static final DEFAULT_REFINER:Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;


# instance fields
.field protected final mProblemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mRefiner:Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;

.field protected final mRootVerifier:Lcom/android/i18n/addressinput/FieldVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;-><init>()V

    sput-object v0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->DEFAULT_REFINER:Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;

    return-void
.end method

.method public constructor <init>(Lcom/android/i18n/addressinput/FieldVerifier;)V
    .locals 2
    .param p1    # Lcom/android/i18n/addressinput/FieldVerifier;

    sget-object v0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->DEFAULT_REFINER:Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;

    sget-object v1, Lcom/android/i18n/addressinput/StandardChecks;->PROBLEM_MAP:Ljava/util/Map;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/i18n/addressinput/StandardAddressVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/android/i18n/addressinput/FieldVerifier;
    .param p2    # Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/FieldVerifier;",
            "Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->mRootVerifier:Lcom/android/i18n/addressinput/FieldVerifier;

    iput-object p2, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->mRefiner:Lcom/android/i18n/addressinput/StandardAddressVerifier$VerifierRefiner;

    sget-object v0, Lcom/android/i18n/addressinput/StandardChecks;->PROBLEM_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->mProblemMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected getProblemIterator(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/Iterator;
    .locals 2
    .param p1    # Lcom/android/i18n/addressinput/AddressField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressField;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->mProblemMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method protected postVerify(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;)V
    .locals 0
    .param p1    # Lcom/android/i18n/addressinput/FieldVerifier;
    .param p2    # Lcom/android/i18n/addressinput/AddressData;
    .param p3    # Lcom/android/i18n/addressinput/AddressProblems;

    return-void
.end method

.method public verify(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;)V
    .locals 3
    .param p1    # Lcom/android/i18n/addressinput/AddressData;
    .param p2    # Lcom/android/i18n/addressinput/AddressProblems;

    new-instance v1, Lcom/android/i18n/addressinput/NotifyingListener;

    invoke-direct {v1, p0}, Lcom/android/i18n/addressinput/NotifyingListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyAsync(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;Lcom/android/i18n/addressinput/DataLoadListener;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/android/i18n/addressinput/NotifyingListener;->waitLoadingEnd()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public verifyAsync(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 2
    .param p1    # Lcom/android/i18n/addressinput/AddressData;
    .param p2    # Lcom/android/i18n/addressinput/AddressProblems;
    .param p3    # Lcom/android/i18n/addressinput/DataLoadListener;

    new-instance v1, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;-><init>(Lcom/android/i18n/addressinput/StandardAddressVerifier;Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;Lcom/android/i18n/addressinput/DataLoadListener;)V

    invoke-static {v1}, Lcom/google/android/finsky/utils/BackgroundThreadFactory;->createThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z
    .locals 8
    .param p1    # Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .param p2    # Lcom/android/i18n/addressinput/FieldVerifier;
    .param p3    # Lcom/android/i18n/addressinput/AddressField;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {p0, p3}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->getProblemIterator(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressProblemType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyProblemField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressProblemType;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected verifyProblemField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressProblemType;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z
    .locals 6
    .param p1    # Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .param p2    # Lcom/android/i18n/addressinput/FieldVerifier;
    .param p3    # Lcom/android/i18n/addressinput/AddressProblemType;
    .param p4    # Lcom/android/i18n/addressinput/AddressField;
    .param p5    # Ljava/lang/String;
    .param p6    # Lcom/android/i18n/addressinput/AddressProblems;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/FieldVerifier;->check(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/AddressProblemType;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    move-result v0

    return v0
.end method
