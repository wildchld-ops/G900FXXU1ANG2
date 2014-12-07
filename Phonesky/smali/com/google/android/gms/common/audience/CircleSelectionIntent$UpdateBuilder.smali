.class public interface abstract Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/audience/CircleSelectionIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateBuilder"
.end annotation


# virtual methods
.method public abstract build()Landroid/content/Intent;
.end method

.method public abstract setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;
.end method

.method public abstract setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$SelectBuilder;
.end method

.method public abstract setInitialCircles(Ljava/util/ArrayList;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;"
        }
    .end annotation
.end method

.method public abstract setUpdatePersonId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;
.end method
