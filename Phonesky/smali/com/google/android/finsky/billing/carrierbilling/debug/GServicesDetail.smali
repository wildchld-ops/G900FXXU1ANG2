.class public Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;
.super Ljava/lang/Object;
.source "GServicesDetail.java"

# interfaces
.implements Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;"
    }
.end annotation


# instance fields
.field private final mValue:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/config/GservicesValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;->mValue:Lcom/google/android/finsky/config/GservicesValue;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;->mValue:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/GServicesDetail;->mValue:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "null"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
