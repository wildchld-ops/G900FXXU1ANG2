.class public Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
.super Ljava/lang/Object;
.source "ListCallButtonControllerImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindCallButton(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ILandroid/net/Uri;Z)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;
    .param p3    # I
    .param p4    # Landroid/net/Uri;
    .param p5    # Z

    return-void
.end method

.method public static hideCallButton(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;

    return-void
.end method

.method public static setCallPressed(Z)V
    .locals 0
    .param p0    # Z

    return-void
.end method


# virtual methods
.method public getCallButtonWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisibleCallButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setLayout(IIII)I
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return p3
.end method

.method public setMeasure()V
    .locals 0

    return-void
.end method

.method public showCallButton(Landroid/view/ViewGroup;Landroid/database/Cursor;ILandroid/net/Uri;Z)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Landroid/database/Cursor;
    .param p3    # I
    .param p4    # Landroid/net/Uri;
    .param p5    # Z

    return-void
.end method
