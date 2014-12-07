.class public Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;
.super Landroid/app/Activity;
.source "MyEmergencyInfoEditorActivity.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mDisplayName:Ljava/lang/String;

.field private mMyEmergencyInfoEditorFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

.field private mSaveButton:Landroid/widget/Button;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mMyEmergencyInfoEditorFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0300e5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f08025f

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    iput-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mMyEmergencyInfoEditorFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f030062

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "noDetail"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "profileRawContactId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "profileDisplayName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mDisplayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mMyEmergencyInfoEditorFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    invoke-virtual {v2, v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->setNoDetail(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mMyEmergencyInfoEditorFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    iget-object v3, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->setProfileInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mMyEmergencyInfoEditorFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    new-instance v3, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$1;-><init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->setListener(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mcancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$2;-><init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0e0298

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mDisplayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$3;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$3;-><init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
