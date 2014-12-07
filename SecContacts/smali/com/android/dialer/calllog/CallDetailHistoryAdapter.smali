.class public Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# static fields
.field private static final SMS_PROJECTION:[Ljava/lang/String;

.field public static mDeleteView:Z


# instance fields
.field private final bDeleteView:Z

.field private dm:Landroid/util/DisplayMetrics;

.field private fontSize:I

.field private final mCallDetailItemListener:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mControls:Landroid/view/View;

.field private mCurrentDate:Ljava/lang/String;

.field private mDateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mListViewOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneCallDetailsImpl:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

.field private mPreviousDate:Ljava/lang/String;

.field private mSMSExistence:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->SMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;ZLandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPreviousDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCurrentDate:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mSMSExistence:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDateList:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$1;-><init>(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$2;-><init>(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mListViewOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$3;-><init>(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCallDetailItemListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetailsImpl:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iput-boolean p4, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    iput-object p5, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->dm:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->fontSize:I

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->updateDateList()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustListItemLayoutBy7FontSize(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4

    const/16 v3, 0x140

    iget v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->fontSize:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v3, :cond_0

    const v0, 0x7f10007f

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "CallDetailHistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustListItemLayoutBy7FontSize HUGE, dm.densityDpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v3, :cond_0

    const v0, 0x7f100080

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private canPlaceCallsTo(Ljava/lang/CharSequence;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-4"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-5"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/dialer/util/CallLogUtil;->isCalledPartyBCDNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3c

    cmp-long v6, p1, v6

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x3c

    div-long v2, p1, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v2

    sub-long/2addr p1, v6

    :cond_0
    const-wide/16 v6, 0x3c

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1

    const-wide/16 v6, 0x3c

    div-long v0, v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v0

    sub-long/2addr v2, v6

    :cond_1
    move-wide v4, p1

    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_2

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_2

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0230

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_2
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_3

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e022f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_4

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e022e

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_5

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0231

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e022a

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_6
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e022b

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_7
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e022c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e022d

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v4, v5}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private getCallTypeDrawable(I)I
    .locals 3

    const v0, 0x7f020170

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const v0, 0x7f020172

    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    const v0, 0x7f02016d

    goto :goto_0

    :pswitch_4
    const v0, 0x7f020171

    goto :goto_0

    :pswitch_5
    const v0, 0x7f020168

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private getSMSExistence(J)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "CallDetailHistoryAdapter"

    const-string v2, "getSMSExistence start"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v0, "CallDetailHistoryAdapter"

    const-string v2, "getSMSExistence Cursor is null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v8

    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    const-string v0, "CallDetailHistoryAdapter"

    const-string v2, "getSMSExistence end"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v6, v9, :cond_4

    move v0, v8

    :goto_1
    move v8, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_3
    throw v0

    :cond_4
    move v0, v9

    goto :goto_1
.end method

.method private initVVM(ILjava/lang/String;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1, p3}, Lcom/android/dialer/CallDetailActivity;->initVoicemail(ILandroid/net/Uri;Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private isAutoBlockedLog(I)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v2, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "reject_flag"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/dialer/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reject_flag"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-ne v8, v10, :cond_2

    const/4 v9, 0x1

    :cond_2
    const-string v0, "CallDetailHistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " === isAutoBlockedLog ===  autoRejected = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method private static toOneDigitChar(J)I
    .locals 4

    const-string v0, "%01d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateDateList()V
    .locals 5

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetailsImpl:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetailsImpl:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetailsImpl:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    aget-object v3, v3, v1

    iget-wide v3, v3, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->date:J

    invoke-static {v2, v3, v4}, Lcom/samsung/dialer/util/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDateList:Landroid/util/SparseArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetailsImpl:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetailsImpl:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p1, :cond_4

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetailsImpl:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f080078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_5
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetailsImpl:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    add-int/lit8 v1, p1, -0x1

    aget-object v8, v0, v1

    const v0, 0x7f080081

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08007c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f080083

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08007e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f080084

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08007b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f08007a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iget-boolean v7, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-eqz v7, :cond_c

    const v7, 0x7f020162

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v7, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mListViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v7, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget-wide v9, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->date:J

    invoke-static {v7, v9, v10}, Lcom/samsung/dialer/util/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCurrentDate:Ljava/lang/String;

    const/4 v7, 0x1

    if-le p1, v7, :cond_6

    iget-object v7, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDateList:Landroid/util/SparseArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPreviousDate:Ljava/lang/String;

    :cond_6
    const/4 v7, 0x1

    if-eq p1, v7, :cond_7

    iget-object v7, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCurrentDate:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPreviousDate:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCurrentDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f080079

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v5, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->callTypes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-direct {p0, v5}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->getCallTypeDrawable(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;

    invoke-direct {v0}, Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;-><init>()V

    iget v6, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->logType:I

    invoke-virtual {v0, v6, v3}, Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;->setCallDetailHistoryLogTypeImage(ILandroid/widget/ImageView;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->logType:I

    sparse-switch v0, :sswitch_data_0

    iget-wide v6, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->duration:J

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-nez v0, :cond_13

    const/4 v0, 0x3

    if-ne v5, v0, :cond_12

    const v0, 0x7f0e031d

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_4
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableLogsTimeBase()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/samsung/dialer/util/CallLogUtil;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/dialer/util/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget-wide v5, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->date:J

    const/16 v3, 0x101

    const-string v7, "Asia/Shanghai"

    invoke-static {v0, v5, v6, v3, v7}, Lcom/samsung/dialer/util/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->adjustListItemLayoutBy7FontSize(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableRemoveCallDuration()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/dialer/CallDetailActivity;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    sput-boolean v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDeleteView:Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity;->mCallDetailImpl:Lcom/samsung/dialer/impl/CallDetailImpl;

    invoke-virtual {v0, v8, v1}, Lcom/samsung/dialer/impl/CallDetailImpl;->setCustomDetailHistoryInfo(Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Landroid/widget/RelativeLayout;)V

    :cond_a
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-eqz v0, :cond_15

    const v0, 0x7f08007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1, p1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->isPositionChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_b
    :goto_6
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v0, :cond_17

    iget v0, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->logType:I

    const/16 v1, 0x3b6

    if-ne v0, v1, :cond_17

    const-string v0, "CallDetailHistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vvmId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->extra:Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

    iget v2, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->vvmId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "vvm"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getViewByTypeOfLogs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f08005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    goto/16 :goto_2

    :cond_d
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v5, 0x7f080079

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :sswitch_0
    const-string v0, ""

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/dialer/CallDetailActivity;

    if-ne v0, v3, :cond_8

    iget v0, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->id:I

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->isAutoBlockedLog(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCallDetailItemListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :sswitch_1
    iget-object v0, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->messageContent:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mScrollState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    const-string v0, ""

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/dialer/CallDetailActivity;

    if-ne v0, v3, :cond_8

    iget v0, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->id:I

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->isAutoBlockedLog(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCallDetailItemListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mSMSExistence:Ljava/util/HashMap;

    iget-object v3, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "CallDetailHistoryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSMSExistence msgId : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", details.messageContent : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->messageContent:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", state : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mScrollState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mSMSExistence:Ljava/util/HashMap;

    iget-object v3, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->msgId:Ljava/lang/String;

    iget-object v5, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->msgId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->getSMSExistence(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mSMSExistence:Ljava/util/HashMap;

    iget-object v3, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->messageContent:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_10
    const-string v0, ""

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_11
    const-string v0, ""

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :sswitch_2
    const-string v0, ""

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f020091

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_12
    const v0, 0x7f0e031c

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_13
    iget-wide v5, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->duration:J

    invoke-direct {p0, v5, v6}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_14
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget-wide v5, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->date:J

    const/16 v3, 0x101

    invoke-static {v0, v5, v6, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_6

    :cond_16
    iget-object v0, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->extra:Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

    iget v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->vvmId:I

    iget-object v1, v8, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->extra:Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

    iget-object v1, v1, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->voicemailUri:Ljava/lang/String;

    const v2, 0x7f08005c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->initVVM(ILjava/lang/String;Landroid/view/View;)V

    goto/16 :goto_1

    :cond_17
    const v0, 0x7f08005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x3b6 -> :sswitch_2
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScrollState(I)V
    .locals 3

    const-string v0, "CallDetailHistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollState scrollState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mScrollState:I

    return-void
.end method

.method public updateData([Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V
    .locals 3

    iput-object p1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetailsImpl:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->fontSize:I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDateList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->updateDateList()V

    return-void
.end method
