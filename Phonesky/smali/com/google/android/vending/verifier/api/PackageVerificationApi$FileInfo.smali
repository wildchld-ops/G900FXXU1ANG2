.class public Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;
.super Ljava/lang/Object;
.source "PackageVerificationApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/api/PackageVerificationApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation


# instance fields
.field public final digest:[B

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # [B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;->digest:[B

    return-void
.end method
