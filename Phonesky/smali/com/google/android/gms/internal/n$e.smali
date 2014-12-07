.class final Lcom/google/android/gms/internal/n$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final synthetic eC:Lcom/google/android/gms/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/n$e;->eC:Lcom/google/android/gms/internal/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/n$e;->eC:Lcom/google/android/gms/internal/n;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/n;->j(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/n$e;->eC:Lcom/google/android/gms/internal/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/n;->a(Lcom/google/android/gms/internal/n;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/n$e;->eC:Lcom/google/android/gms/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/n;->C()V

    return-void
.end method
