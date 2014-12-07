.class final Lcom/google/android/gms/internal/ci$h;
.super Lcom/google/android/gms/internal/by;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "h"
.end annotation


# instance fields
.field final synthetic lI:Lcom/google/android/gms/internal/ci;

.field private final lQ:Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ci$h;->lI:Lcom/google/android/gms/internal/ci;

    invoke-direct {p0}, Lcom/google/android/gms/internal/by;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ci$h;->lQ:Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/d;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/cj;->bA()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PeopleClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Circles callback: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nholder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cj;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ci;->c(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ci$h;->lI:Lcom/google/android/gms/internal/ci;

    new-instance v3, Lcom/google/android/gms/internal/ci$b;

    iget-object v4, p0, Lcom/google/android/gms/internal/ci$h;->lI:Lcom/google/android/gms/internal/ci;

    iget-object v5, p0, Lcom/google/android/gms/internal/ci$h;->lQ:Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/google/android/gms/internal/ci$b;-><init>(Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/model/CircleBuffer;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ci;->b(Lcom/google/android/gms/internal/n$b;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/people/model/CircleBuffer;

    invoke-direct {v0, p3}, Lcom/google/android/gms/people/model/CircleBuffer;-><init>(Lcom/google/android/gms/common/data/d;)V

    goto :goto_0
.end method
