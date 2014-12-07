.class final Lcom/google/android/finsky/utils/GPlusUtils$3;
.super Ljava/lang/Object;
.source "GPlusUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/GPlusUtils;->getCircles(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$getCirclesListener:Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/GPlusUtils$3;->val$getCirclesListener:Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/GPlusUtils$3;->val$getCirclesListener:Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;->onCirclesLoadedFailed()V

    return-void
.end method
