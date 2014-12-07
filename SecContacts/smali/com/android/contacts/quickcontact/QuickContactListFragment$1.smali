.class Lcom/android/contacts/quickcontact/QuickContactListFragment$1;
.super Landroid/widget/BaseAdapter;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private setButtonImage(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setButtonImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast p1, Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private setImageVisibility(Landroid/view/View;II)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    .locals 33
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_d

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_d

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "com.sds.vapp.voipcall"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_0

    const-string v15, "vnd.vapp.item/vnd.com.app.account"

    :cond_0
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->isPrimary()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const-string v28, "vnd.chaton.item/vnd.com.chaton.profile"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_e

    const v19, 0x7f030103

    :goto_1
    if-eqz p2, :cond_11

    move-object/from16 v20, p2

    :goto_2
    const v28, 0x1020015

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    const v28, 0x1020014

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v28, 0x7f0800f9

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v28, 0x7f0800fd

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v28, 0x7f080105

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_Contact_ConfigVolteUserMsg"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    const-string v28, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    const-string v28, "vnd.android.cursor.item/video-call"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_2

    const-string v28, "call_message"

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_12

    const/4 v11, 0x1

    :goto_3
    if-eqz v8, :cond_4

    if-eqz v11, :cond_13

    const/16 v28, 0x0

    :goto_4
    move/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getAlternateIconDescription()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v11, :cond_14

    const/16 v28, 0x0

    :goto_5
    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v28, 0x7f08028f

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const v28, 0x7f08028e

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mHasVideoCall:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$300(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_15

    const v28, 0x7f0200a3

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0e0309

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mVtCallActionClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    const-string v28, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_5

    const-string v28, "vnd.sec.contact.sim"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_5

    const-string v28, "vnd.sec.contact.sim2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    :cond_5
    const/16 v28, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_16

    const v28, 0x7f08028a

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v28

    const v29, 0x7f0e01b9

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v11, :cond_7

    const v28, 0x7f0800fd

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v28

    const v29, 0x7f0e01b8

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v28, v0

    if-eqz v28, :cond_7

    check-cast v27, Landroid/widget/ImageView;

    const v28, 0x7f0200f4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    if-eqz v23, :cond_9

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v28

    if-nez v28, :cond_8

    const-string v28, "iw"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    :cond_8
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsVoLteEnabled:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$500(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_19

    const v28, 0x7f08028a

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_18

    const v28, 0x7f0200e8

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    :goto_a
    const v28, 0x7f08028a

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mHasPhone:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$600(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-nez v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mHasSms:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$700(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    const v28, 0x7f08028a

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_1b

    const v28, 0x7f0200f4

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    :cond_a
    :goto_c
    if-eqz v24, :cond_b

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_3a

    const/16 v28, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_d
    const v28, 0x7f080101

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_3b

    if-eqz v13, :cond_3b

    const v28, 0x7f080101

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_e
    return-object v20

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_e
    const v19, 0x7f0300fb

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_10

    const v19, 0x7f030103

    :goto_f
    goto/16 :goto_1

    :cond_10
    const v19, 0x7f0300fe

    goto :goto_f

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    goto/16 :goto_2

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_13
    const/16 v28, 0x8

    goto/16 :goto_4

    :cond_14
    const/16 v28, 0x8

    goto/16 :goto_5

    :cond_15
    const/16 v28, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v28, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const v29, 0x7f0e01b9

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const v29, 0x7f0e01b8

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_17
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$400(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$400(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_18
    const v28, 0x7f02009a

    goto/16 :goto_9

    :cond_19
    const v28, 0x7f08028a

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_1a

    const v28, 0x7f0200ef

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    goto/16 :goto_a

    :cond_1a
    const v28, 0x7f020099

    goto :goto_10

    :cond_1b
    const v28, 0x7f0200b9

    goto/16 :goto_b

    :cond_1c
    const-string v28, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    if-eqz v23, :cond_1d

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_1e

    const v28, 0x7f0200f0

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    const v28, 0x7f08028b

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e012a

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_1e
    const v28, 0x7f02009d

    goto :goto_11

    :cond_1f
    const-string v28, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_21

    if-eqz v23, :cond_20

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_20
    const v28, 0x7f08028c

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e0139

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v28, 0x7f08028c

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_c

    :cond_21
    const-string v28, "vnd.android.cursor.item/im"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_24

    if-eqz v23, :cond_22

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_23

    const v28, 0x7f0200f1

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e012c

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v28, 0x7f08028b

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_c

    :cond_23
    const v28, 0x7f02009e

    goto :goto_12

    :cond_24
    const-string v28, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_27

    if-eqz v23, :cond_25

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_26

    const v28, 0x7f0200ee

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e0132

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v28, 0x7f08028b

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_c

    :cond_26
    const v28, 0x7f020098

    goto :goto_13

    :cond_27
    const-string v28, "vnd.android.cursor.item/website"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2a

    if-eqz v23, :cond_28

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_29

    const v28, 0x7f0200f6

    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e013a

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v28, 0x7f08028b

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_c

    :cond_29
    const v28, 0x7f0200a4

    goto :goto_14

    :cond_2a
    const-string v28, "vnd.android.cursor.item/video-call"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2f

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    if-eqz v23, :cond_2c

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v28

    if-nez v28, :cond_2b

    const-string v28, "iw"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2d

    :cond_2b
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2c
    :goto_15
    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_2e

    const v28, 0x7f0200f5

    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e0309

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v28, 0x7f08028b

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_c

    :cond_2d
    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$400(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$400(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    :cond_2e
    const v28, 0x7f0200a3

    goto :goto_16

    :cond_2f
    const-string v28, "vnd.android.cursor.item/ip-call"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_32

    if-eqz v23, :cond_30

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_30
    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_31

    const v28, 0x7f0200f3

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0e030a

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v28, 0x7f08028b

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_c

    :cond_31
    const v28, 0x7f0201bc

    goto :goto_17

    :cond_32
    const-string v28, "vnd.vapp.item/vnd.com.app.account"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_34

    if-eqz v23, :cond_33

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_33
    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const v29, 0x7f0200d6

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    const v28, 0x7f08028b

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_c

    :cond_34
    const-string v28, "linkedIn"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_35

    const-string v28, "vnd.android.cursor.item/vnd.com.linkedin.android.profile"

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_37

    :cond_35
    if-eqz v23, :cond_36

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v18

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v28, 0x7f08028b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v28, 0x7f08028b

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    goto/16 :goto_c

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z

    move-result v28

    if-eqz v28, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v18

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    const-string v28, "vnd.chaton.item/vnd.com.chaton.profile"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_39

    const v28, 0x7f080296

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const v29, 0x7f02009b

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;I)V

    :goto_18
    const v28, 0x7f080296

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v28, 0x7f080296

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setImageVisibility(Landroid/view/View;II)V

    :cond_38
    if-eqz v23, :cond_a

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_39
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const v28, 0x7f080296

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->setButtonImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    :cond_3a
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    :cond_3b
    if-eqz v17, :cond_c

    const v28, 0x7f080101

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e
.end method
