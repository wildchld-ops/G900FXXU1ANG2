.class public Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeedDialListAdapter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$SpeedDialDialogListener;,
        Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private isCtcDuos:Z

.field private mAppPreloadedSplNum:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAppPreloadedSpl:Z

.field private mIsFromQuickContact:Z

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResource:I

.field protected mSelectedNumber:I

.field private mSpdlAddButtonListener:Landroid/view/View$OnClickListener;

.field private mSpdlButtonListener:Landroid/view/View$OnClickListener;

.field private mSpdlCallListener:Landroid/view/View$OnClickListener;

.field private mSpdlExistDataInHelpModeListener:Landroid/view/View$OnClickListener;

.field private mSpdlQuickContactListener:Landroid/view/View$OnClickListener;

.field protected mSpinRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p3    # I
    .param p4    # [Ljava/lang/String;
    .param p5    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->isDisableVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->isCtcDuos:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mIsAppPreloadedSpl:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mAppPreloadedSplNum:I

    iput-boolean v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mIsFromQuickContact:Z

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlQuickContactListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$2;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$3;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$3;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlAddButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlCallListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$5;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$5;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlExistDataInHelpModeListener:Landroid/view/View$OnClickListener;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mResource:I

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$102(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;Z)Z
    .locals 0
    .param p0    # Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mIsFromQuickContact:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Z
    .locals 1
    .param p0    # Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->isCtcDuos:Z

    return v0
.end method

.method private bindAddContactView(ILcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;IZZ)V
    .locals 7
    .param p1    # I
    .param p2    # Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;
    .param p3    # I
    .param p4    # Z
    .param p5    # Z

    const v6, 0x7f020162

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/view/View;->setId(I)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/view/View;->setId(I)V

    if-nez p4, :cond_0

    invoke-virtual {p0, p3}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->isMatchedAppPLSpl(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    if-eqz p5, :cond_2

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e021b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlAddButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private bindDelButtonView(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;IZZ)V
    .locals 3
    .param p1    # Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;
    .param p2    # I
    .param p3    # Z
    .param p4    # Z

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->isMatchedAppPLSpl(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindNumberView(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;IZZ)V
    .locals 6
    .param p1    # Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;
    .param p2    # I
    .param p3    # Z
    .param p4    # Z

    const v5, 0x7f0a0082

    if-nez p2, :cond_1

    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->isMatchedAppPLSpl(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private bindPhotoView(ILcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;IZ)V
    .locals 17
    .param p1    # I
    .param p2    # Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;
    .param p3    # I
    .param p4    # Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    const-string v13, "raw_contact_id"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    const-string v13, "contact_id"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p4, :cond_0

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0201db

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    const v13, 0x7f020162

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/view/View;->setId(I)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0e01f6

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->isMatchedAppPLSpl(I)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0e03f8

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const v11, 0x7f0201d9

    :goto_1
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    const v13, 0x7f020162

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/view/View;->setId(I)V

    goto :goto_0

    :cond_1
    const v11, 0x7f0201d8

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    const-string v13, "photo_id"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v6, 0x0

    sget-object v12, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    if-nez v9, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12, v4}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Ljava/lang/ref/SoftReference;

    invoke-direct {v13, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    if-nez v6, :cond_5

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/contacts/util/ContactPhotoUtils;->getDefaultPhotoBackgroundColor(J)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v13 .. v16}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlQuickContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/view/View;->setId(I)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0e0114

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12, v4}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :goto_5
    if-eqz v6, :cond_3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Ljava/lang/ref/SoftReference;

    invoke-direct {v13, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_6
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 13
    .param p1    # I
    .param p2    # Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e03f4

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e0223

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpinRange:I

    add-int v3, v0, p1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->bindNumberView(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;IZZ)V

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->bindDelButtonView(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;IZZ)V

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->bindPhotoView(ILcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;IZ)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->bindAddContactView(ILcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;IZZ)V

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->bindViewHelpMode(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;IZZ)V

    return-void
.end method


# virtual methods
.method public bindViewHelpMode(ILandroid/view/View;Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;IZZ)V
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;
    .param p4    # I
    .param p5    # Z
    .param p6    # Z

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getIsHelpMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p5, :cond_0

    invoke-virtual {p0, p4}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->isMatchedAppPLSpl(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlExistDataInHelpModeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-nez p6, :cond_1

    if-nez p5, :cond_1

    invoke-virtual {p0, p4}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->isMatchedAppPLSpl(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p3, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlExistDataInHelpModeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getFromQuickContact()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mIsFromQuickContact:Z

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-nez p2, :cond_0

    new-instance v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;

    invoke-direct {v2, v6}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;)V

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mResource:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0802d9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->spdlNum:Landroid/widget/TextView;

    const v3, 0x7f080052

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v3, 0x7f0802dd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    const v3, 0x7f0802df

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    iget-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e030f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0802de

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    iget-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->DelBtnContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0802da

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->photoView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlQuickContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0802db

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->listItemData:Landroid/widget/LinearLayout;

    const v3, 0x7f0802dc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    iget-object v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;->AddButton:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpdlAddButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0802d8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->bindView(ILandroid/view/View;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method protected isMatchedAppPLSpl(I)Z
    .locals 1
    .param p1    # I

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mIsAppPreloadedSpl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mAppPreloadedSplNum:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDefaultAppPreloadedSpl()V
    .locals 10

    const v9, 0x7f0e03f9

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_AddPreloadedSpeedDialAs"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_4

    aget-object v5, v1, v2

    if-eqz v5, :cond_2

    aget-object v5, v1, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v5, "SpeedDialListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultAppPreloadedSpl error :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const-string v5, "Service"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    :goto_2
    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mAppPreloadedSplNum:I

    iget v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mAppPreloadedSplNum:I

    if-le v5, v8, :cond_0

    iget v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mAppPreloadedSplNum:I

    const/16 v6, 0x64

    if-gt v5, v6, :cond_0

    const-string v5, "spdl_idx"

    aget-object v6, v1, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "name"

    if-eqz v3, :cond_6

    const/4 v5, 0x3

    aget-object v5, v1, v5

    :goto_3
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "phone"

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, ""

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0e03f8

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;

    iget v6, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mAppPreloadedSplNum:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v8, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mIsAppPreloadedSpl:Z

    goto/16 :goto_0

    :cond_5
    const-string v5, "Emergency"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method protected setFromQuickContact(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mIsFromQuickContact:Z

    return-void
.end method

.method public setSpdlRange(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpinRange:I

    return-void
.end method
