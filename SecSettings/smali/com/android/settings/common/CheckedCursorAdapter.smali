.class public Lcom/android/settings/common/CheckedCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "CheckedCursorAdapter.java"


# instance fields
.field isCheckedConfrim:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # [Ljava/lang/String;
    .param p5    # [I
    .param p6    # I

    invoke-direct/range {p0 .. p6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/common/CheckedCursorAdapter;->isCheckedConfrim:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    return-object v1
.end method

.method public setChecked(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/android/settings/common/CheckedCursorAdapter;->isCheckedConfrim:[Z

    iget-object v0, p0, Lcom/android/settings/common/CheckedCursorAdapter;->isCheckedConfrim:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/android/settings/common/CheckedCursorAdapter;->isCheckedConfrim:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1    # Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/common/CheckedCursorAdapter;->isCheckedConfrim:[Z

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/common/CheckedCursorAdapter;->isCheckedConfrim:[Z

    goto :goto_0
.end method
