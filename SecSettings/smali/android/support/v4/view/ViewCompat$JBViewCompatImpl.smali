.class Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/Runnable;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method
