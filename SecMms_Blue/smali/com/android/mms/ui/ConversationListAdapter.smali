.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListAdapter"


# instance fields
.field private mEnableCheckedView:Z

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSize:I

.field private mHasLockedThreadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimationEnable:Z

.field private mIsMultiMode:Z

.field private mIsSplitMode:Z

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field private mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mSelectedThreadId:J

.field private mSplitModePreference:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mEnableCheckedView:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListAdapter;)Lcom/android/mms/hover/ListHoverController;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;

    const/4 v4, 0x0

    instance-of v2, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v2, :cond_0

    const-string v2, "Mms/ConversationListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected bound view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/mms/ui/ConversationListItem;

    invoke-static {p2, p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    :goto_1
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setMutiMode(Z)V

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->setFontSize()V

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setSplitMode(Z)V

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mEnableCheckedView:Z

    invoke-virtual {v1, p2, v0, v2}, Lcom/android/mms/ui/ConversationListItem;->bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListAdapter;->isSPenInformationPreviewOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v2, v4}, Lcom/android/mms/hover/ListHoverController;->setShowStylusHoverPopup(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v2, p1}, Lcom/android/mms/hover/ListHoverController;->setStylusHoverPopupStyle(Landroid/view/View;)V

    new-instance v2, Lcom/android/mms/ui/ConversationListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ConversationListAdapter$1;-><init>(Lcom/android/mms/ui/ConversationListAdapter;Lcom/android/mms/data/Conversation;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_3
    const-string v2, "Mms/ConversationListAdapter"

    const-string v3, "bindView() complete"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public clearHasLockedMsg()V
    .locals 2

    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "clearHasLockedMsg"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public disableSplitMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    return-void
.end method

.method public enableSplitMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    return-void
.end method

.method public getSplitModePreference()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSplitModePreference:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    move-object v0, p3

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->isItemChecked(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mEnableCheckedView:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public hasLockedMsg(J)Z
    .locals 2
    .param p1    # J

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public initListItemSelectedThreadId()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    return-void
.end method

.method public isSPenInformationPreviewOn(Landroid/content/Context;)Z
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f040034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V

    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    instance-of v1, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v1, :cond_0

    const-string v1, "Mms/ConversationListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMovedToScrapHeap view is not ConversationListItem but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_0
.end method

.method public refreshFontSize()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0
    .param p1    # Lcom/android/mms/animation/MsgListAnimation;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    return-void
.end method

.method public setHasLockedMsg(J)V
    .locals 3
    .param p1    # J

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/ConversationListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasLockedMsg threadID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setListItemSelected(J)V
    .locals 0
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    return-void
.end method

.method public setMultiMode(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    return-void
.end method

.method public setSplitModePreference(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSplitModePreference:Z

    return-void
.end method
