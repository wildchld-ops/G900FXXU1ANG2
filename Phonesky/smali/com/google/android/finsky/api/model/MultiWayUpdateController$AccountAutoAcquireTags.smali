.class public Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;
.super Ljava/lang/Object;
.source "MultiWayUpdateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/MultiWayUpdateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountAutoAcquireTags"
.end annotation


# instance fields
.field final accountName:Ljava/lang/String;

.field final tags:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;->accountName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountAutoAcquireTags;->tags:[Ljava/lang/String;

    return-void
.end method
