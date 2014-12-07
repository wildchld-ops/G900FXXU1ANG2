.class public Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;
.super Ljava/lang/Object;
.source "MultiWayUpdateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/MultiWayUpdateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountVersionDocument"
.end annotation


# instance fields
.field protected account:Ljava/lang/String;

.field protected document:Lcom/google/android/finsky/api/model/Document;

.field protected needAccountForUpdate:Z

.field protected versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->account:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->versionCode:I

    iput-object p3, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->document:Lcom/google/android/finsky/api/model/Document;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/MultiWayUpdateController$AccountVersionDocument;->needAccountForUpdate:Z

    return-void
.end method
