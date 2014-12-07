.class public interface abstract Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;
.super Ljava/lang/Object;
.source "GPlusUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/GPlusUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetCirclesListener"
.end annotation


# virtual methods
.method public abstract onCirclesLoaded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCirclesLoadedFailed()V
.end method
