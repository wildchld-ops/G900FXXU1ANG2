.class public Lcom/android/mms/ui/SpamMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SpamMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/SpamMessageListAdapter"


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextView;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSize:I

.field private mFromView:Landroid/widget/TextView;

.field private mIsAnimationEnable:Z

.field public mIsMsgMultiMode:Z

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mSubjectView:Landroid/widget/TextView;

.field private m_LayoutInflater:Landroid/view/LayoutInflater;

.field private m_nViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mIsAnimationEnable:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mIsMsgMultiMode:Z

    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_nViewResourceId:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/mms/ui/SpamMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/SpamMessageListAdapter$1;-><init>(Lcom/android/mms/ui/SpamMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    if-nez p2, :cond_0

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageListAdapter;->setFontSize()V

    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    return-void

    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private changeFontSize(ILandroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isUsingMsgFontSize()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/SpamMessageListAdapter"

    const-string v3, "changeFontSize"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :goto_1
    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {v4, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :pswitch_1
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatContactListString(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "CBmessages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    const-string v1, "Pushmessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1

    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    neg-long p1, p1

    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAvatarView(Lcom/android/mms/data/Contact;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p2}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CBmessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020265

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    const-string v1, ""

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageListAdapter;->formatContactListString(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mIsMsgMultiMode:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020271

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v7}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v2, v7}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    move-object v8, p1

    if-nez v8, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_nViewResourceId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    :cond_0
    const v9, 0x7f0b001c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const v9, 0x7f0b0033

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    const v9, 0x7f0b010b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDateView:Landroid/widget/TextView;

    const v9, 0x7f0b001b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/QuickContactBadge;

    iput-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v9, 0x7f0b005e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v9, 0x7f0b0107

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v9, v9, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v9, v9, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v6, v2, v3, p3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v9, "Mms/SpamMessageListAdapter"

    const-string v10, "msgItem is null, bind view fail"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v5, ""

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0c013a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const-string v9, "mms"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0c000c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_3
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mDateView:Landroid/widget/TextView;

    iget-wide v10, v4, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {p2, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    invoke-virtual {p0, v9, p1}, Lcom/android/mms/ui/SpamMessageListAdapter;->changeFontSize7Step(ILandroid/view/View;)V

    :goto_4
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-direct {p0, v1, v9}, Lcom/android/mms/ui/SpamMessageListAdapter;->updateAvatarView(Lcom/android/mms/data/Contact;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v9, v8}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0, v2, v3, v6}, Lcom/android/mms/ui/SpamMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    invoke-direct {p0, v9, p1}, Lcom/android/mms/ui/SpamMessageListAdapter;->changeFontSize(ILandroid/view/View;)V

    goto :goto_4

    :cond_8
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/android/mms/ui/SpamMessageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/SpamMessageManager;->setMessageSelectAll(Z)V

    goto/16 :goto_0
.end method

.method public changeAvatarSizewhenchangeFontSize(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x68

    const/16 v5, 0x5a

    const/16 v4, 0xc

    const/16 v3, 0x9

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Landroid/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mIsMsgMultiMode:Z

    if-nez v2, :cond_0

    iget v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public changeFontSize7Step(ILandroid/view/View;)V
    .locals 7

    const v5, 0x7f0a00dd

    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isUsingMsgFontSize()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    if-ge p1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "Mms/SpamMessageListAdapter"

    const-string v4, "changeFontSize"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :goto_1
    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v5, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    const v3, 0x7f0a00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_1
    const v3, 0x7f0a00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_2
    const v3, 0x7f0a00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v3, 0x7f0a00de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_3
    const v3, 0x7f0a00e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v3, 0x7f0a00df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clearCheckedList()V
    .locals 2

    const-string v0, "Mms/SpamMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 10

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    if-nez v9, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/SpamMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/SpamMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v8

    move-object v0, v9

    :goto_1
    const-string v1, "Mms/SpamMessageListAdapter"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v8

    goto :goto_1

    :cond_0
    move-object v0, v9

    goto :goto_0
.end method

.method public getCheckedCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2

    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "Mms/SpamMessageListAdapter"

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/SpamMessageListAdapter;)V

    :cond_0
    return-void
.end method

.method public refreshFontSize()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mIsAnimationEnable:Z

    return-void
.end method

.method public setCheckedItem(JLjava/lang/String;Z)Z
    .locals 2

    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFontSize()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mFontSize:I

    return-void
.end method

.method public setMessageListMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mIsMsgMultiMode:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mIsMsgMultiMode:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageListAdapter;->resetCheckedList()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    return-void
.end method
