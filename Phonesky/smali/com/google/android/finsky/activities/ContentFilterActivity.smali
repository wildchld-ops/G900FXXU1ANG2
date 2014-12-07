.class public Lcom/google/android/finsky/activities/ContentFilterActivity;
.super Landroid/app/Activity;
.source "ContentFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# instance fields
.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private final mCheckables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckboxesView:Landroid/widget/LinearLayout;

.field private mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mLevel:Lcom/google/android/finsky/config/ContentLevel;

.field private mMoreInfoView:Landroid/widget/TextView;

.field private mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v1, 0x13b

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    return-void
.end method

.method public static getLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    const v1, 0x7f09022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v1, 0x7f09022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const v1, 0x7f090231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    const v1, 0x7f090233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V
    .locals 6

    const v3, 0x1090010

    iget-object v4, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    check-cast v0, Landroid/widget/Checkable;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v3, p2}, Lcom/google/android/finsky/config/ContentLevel;->encompasses(Lcom/google/android/finsky/config/ContentLevel;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setupViews()V
    .locals 6

    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f08000b

    const v4, 0x7f09022f

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f08000c

    const v4, 0x7f090230

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f08000d

    const v4, 0x7f090231

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f08000e

    const v4, 0x7f090232

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f08000f

    const v4, 0x7f090233

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    const-string v2, "%s <a href=\'%s\'>%s</a>"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f090234

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/finsky/config/G;->contentFilterInfoUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x7f090235

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v3, 0x7f090237

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v3, 0x7f090238

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/config/ContentLevel;

    iput-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    check-cast v2, Landroid/widget/Checkable;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/config/ContentLevel;->encompasses(Lcom/google/android/finsky/config/ContentLevel;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setContentView(I)V

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/google/android/finsky/config/ContentLevel;->importFromSettings(Landroid/content/Context;)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    :goto_0
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupViews()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setResult(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "level"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/config/ContentLevel;->convertFromLegacyValue(I)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    goto :goto_0
.end method

.method public onNegativeButtonClick()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0xff

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->finish()V

    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 7

    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v4, 0xfe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-static {p0}, Lcom/google/android/finsky/config/ContentLevel;->importFromSettings(Landroid/content/Context;)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/config/ContentLevel;->getValue()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/ContentLevel;->getValue()I

    move-result v2

    if-eq v0, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "ContentFilterActivity_selectedFilterLevel"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->finish()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "level"

    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/ContentLevel;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
