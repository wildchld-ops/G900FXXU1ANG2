.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplGingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortAnimation(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->abortAnimation(Ljava/lang/Object;)V

    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->computeScrollOffset(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/animation/Interpolator;

    invoke-static {p1, p2}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getCurrX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getCurrY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getFinalX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getFinalY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I

    invoke-static/range {p1 .. p6}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->startScroll(Ljava/lang/Object;IIIII)V

    return-void
.end method
