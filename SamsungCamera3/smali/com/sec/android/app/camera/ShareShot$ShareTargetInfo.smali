.class public Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;
.super Ljava/lang/Object;
.source "ShareShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ShareShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareTargetInfo"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSelected:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/ShareShot;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/ShareShot;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Z

    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mSelected:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mSelected:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/ShareShot$ShareTargetInfo;->mSelected:Z

    return-void
.end method
