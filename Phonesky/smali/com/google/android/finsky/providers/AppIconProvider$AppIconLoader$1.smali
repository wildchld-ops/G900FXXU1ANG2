.class Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$1;
.super Ljava/lang/Object;
.source "AppIconProvider.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->loadToFileFromUrl(Ljava/lang/String;Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;

.field final synthetic val$listener:Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$1;->this$0:Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;

    iput-object p2, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$1;->val$listener:Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$1;->onResponse([B)V

    return-void
.end method

.method public onResponse([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$1;->val$listener:Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->callOnComplete()V

    return-void
.end method
