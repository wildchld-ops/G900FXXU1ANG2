.class final Lcom/google/android/gms/internal/ci$b;
.super Lcom/google/android/gms/internal/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/n",
        "<",
        "Lcom/google/android/gms/internal/cd;",
        ">.b<",
        "Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final lG:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic lI:Lcom/google/android/gms/internal/ci;

.field private final lJ:Lcom/google/android/gms/people/model/CircleBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/model/CircleBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ci$b;->lI:Lcom/google/android/gms/internal/ci;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/n$b;-><init>(Lcom/google/android/gms/internal/n;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ci$b;->lG:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p4, p0, Lcom/google/android/gms/internal/ci$b;->lJ:Lcom/google/android/gms/people/model/CircleBuffer;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ci$b;->lG:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/ci$b;->lJ:Lcom/google/android/gms/people/model/CircleBuffer;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;->onCirclesLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/model/CircleBuffer;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ci$b;->a(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;)V

    return-void
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ci$b;->lJ:Lcom/google/android/gms/people/model/CircleBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ci$b;->lJ:Lcom/google/android/gms/people/model/CircleBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/people/model/CircleBuffer;->close()V

    :cond_0
    return-void
.end method
