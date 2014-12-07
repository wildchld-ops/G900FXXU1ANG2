.class public Lcom/google/android/vending/verifier/PackageWarningDialog;
.super Landroid/app/Activity;
.source "PackageWarningDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# static fields
.field private static KEY_APP_NAME:Ljava/lang/String;

.field private static KEY_BLOCKED:Ljava/lang/String;

.field private static KEY_MESSAGE:Ljava/lang/String;

.field private static KEY_VERIFICATION_ID:Ljava/lang/String;


# instance fields
.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mId:I

.field private mUserChoiceWasReported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "verification_id"

    sput-object v0, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_VERIFICATION_ID:Ljava/lang/String;

    const-string v0, "blocked"

    sput-object v0, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_BLOCKED:Ljava/lang/String;

    const-string v0, "app_name"

    sput-object v0, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_APP_NAME:Ljava/lang/String;

    const-string v0, "message"

    sput-object v0, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mUserChoiceWasReported:Z

    return-void
.end method

.method private clearFinishOnTouchOutside()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->setFinishOnTouchOutside(Z)V

    return-void
.end method

.method public static show(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/vending/verifier/PackageWarningDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_VERIFICATION_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_BLOCKED:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v10, 0x7f0400c7

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->setContentView(I)V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_0

    invoke-direct {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->clearFinishOnTouchOutside()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v6

    sget-object v10, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_VERIFICATION_ID:Ljava/lang/String;

    const/4 v11, -0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    sget-object v10, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_BLOCKED:Ljava/lang/String;

    invoke-virtual {v6, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sget-object v10, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_APP_NAME:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    invoke-static {v10, p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->finish()V

    :goto_0
    return-void

    :cond_1
    const v10, 0x7f080184

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v10, 0x7f0801b5

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v10, 0x7f080164

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v10, 0x7f0801b6

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0801b7

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v10, 0x7f0801b8

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    const v10, 0x7f090314

    :goto_1
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v4, :cond_5

    const v10, 0x7f090316

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const v10, 0x7f090317

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/google/android/vending/verifier/PackageWarningDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v4, :cond_6

    const v10, 0x7f0200e8

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_3
    const v10, 0x7f080076

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v10, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    if-eqz v4, :cond_7

    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v10, v12}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonVisible(Z)V

    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v11, 0x7f090212

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    goto/16 :goto_0

    :cond_4
    const v10, 0x7f090313

    goto :goto_1

    :cond_5
    const v10, 0x7f090315

    goto :goto_2

    :cond_6
    const v10, 0x7f0200f3

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    :cond_7
    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v11, 0x7f09014f

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v11, 0x7f090076

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v10, v12}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mUserChoiceWasReported:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportUserChoice(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 2

    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportUserChoice(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mUserChoiceWasReported:Z

    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->finish()V

    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportUserChoice(II)V

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mUserChoiceWasReported:Z

    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->finish()V

    return-void
.end method
