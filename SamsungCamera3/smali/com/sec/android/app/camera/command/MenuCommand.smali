.class public abstract Lcom/sec/android/app/camera/command/MenuCommand;
.super Ljava/lang/Object;
.source "MenuCommand.java"


# instance fields
.field protected mAnchor:Lcom/sec/android/glview/TwGLImage;

.field protected mLaunchX:F

.field protected mLaunchY:F

.field protected mZOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    return-void
.end method


# virtual methods
.method public abstract execute()Z
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    goto :goto_0
.end method

.method public setLaunchPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchX:F

    iput p2, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchY:F

    return-void
.end method

.method public setZOrder(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    return-void
.end method
