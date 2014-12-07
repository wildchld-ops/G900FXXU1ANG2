.class public Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;
.super Ljava/io/IOException;
.source "Sha1Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Sha1Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileHashVerificationError"
.end annotation


# instance fields
.field public final actual:Ljava/lang/String;

.field public final expected:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;->expected:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;->actual:Ljava/lang/String;

    return-void
.end method
