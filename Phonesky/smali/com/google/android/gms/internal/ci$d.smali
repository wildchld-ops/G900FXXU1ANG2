.class final Lcom/google/android/gms/internal/ci$d;
.super Lcom/google/android/gms/internal/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/n",
        "<",
        "Lcom/google/android/gms/internal/cd;",
        ">.b<",
        "Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic lI:Lcom/google/android/gms/internal/ci;

.field private final lL:Ljava/lang/String;

.field private final lM:I

.field private final mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ci$d;->lI:Lcom/google/android/gms/internal/ci;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/n$b;-><init>(Lcom/google/android/gms/internal/n;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ci$d;->mAccount:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ci$d;->lL:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/ci$d;->lM:I

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ci$d;->b(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ci$d;->lI:Lcom/google/android/gms/internal/ci;

    invoke-static {v0}, Lcom/google/android/gms/internal/ci;->a(Lcom/google/android/gms/internal/ci;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ci$d;->lI:Lcom/google/android/gms/internal/ci;

    invoke-static {v0}, Lcom/google/android/gms/internal/ci;->a(Lcom/google/android/gms/internal/ci;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ci$d;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ci$d;->lL:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ci$d;->lM:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;->onDataChanged(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected g()V
    .locals 0

    return-void
.end method
