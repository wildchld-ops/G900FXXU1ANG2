.class public Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;
.super Ljava/lang/Exception;
.source "DfeResponseVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/DfeResponseVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfeResponseVerifierException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeResponseVerifier$1;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/api/DfeResponseVerifier$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/DfeResponseVerifier$DfeResponseVerifierException;-><init>(Ljava/lang/String;)V

    return-void
.end method
