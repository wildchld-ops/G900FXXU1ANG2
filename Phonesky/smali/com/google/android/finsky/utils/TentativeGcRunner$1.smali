.class Lcom/google/android/finsky/utils/TentativeGcRunner$1;
.super Ljava/lang/Object;
.source "TentativeGcRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/TentativeGcRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/TentativeGcRunner;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/TentativeGcRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/TentativeGcRunner$1;->this$0:Lcom/google/android/finsky/utils/TentativeGcRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
