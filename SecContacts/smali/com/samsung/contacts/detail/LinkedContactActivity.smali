.class public Lcom/samsung/contacts/detail/LinkedContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "LinkedContactActivity.java"


# instance fields
.field private mLinkedContactsCount:I

.field private mListFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

.field private mLookupUri:Landroid/net/Uri;

.field private mTargetContactData:Lcom/samsung/contacts/detail/TargetContactData;

.field private mUnlinkOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/detail/LinkedContactActivity;)I
    .locals 1
    .param p0    # Lcom/samsung/contacts/detail/LinkedContactActivity;

    iget v0, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLinkedContactsCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/detail/LinkedContactActivity;)V
    .locals 0
    .param p0    # Lcom/samsung/contacts/detail/LinkedContactActivity;

    invoke-direct {p0}, Lcom/samsung/contacts/detail/LinkedContactActivity;->showJoinAggregateActivity()V

    return-void
.end method

.method private setExplainText()V
    .locals 3

    const v1, 0x7f080240

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLinkedContactsCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mUnlinkOnly:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setResultAndFinish()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mListFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/LinkedContactFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showJoinAggregateActivity()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.contacts.action.CONTACT_ID"

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "targetContactData"

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mTargetContactData:Lcom/samsung/contacts/detail/TargetContactData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "joinFail"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/detail/LinkedContactDialogFragment;->show(Landroid/app/FragmentManager;)V

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mListFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/detail/LinkedContactFragment;->onJoinCompleted(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mTargetContactData:Lcom/samsung/contacts/detail/TargetContactData;

    goto :goto_1
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/app/Fragment;

    instance-of v0, p1, Lcom/samsung/contacts/detail/LinkedContactFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/contacts/detail/LinkedContactFragment;

    iput-object p1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mListFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/detail/LinkedContactActivity;->setResultAndFinish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f0300dc

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "UNLINK_ONLY"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mUnlinkOnly:Z

    const v3, 0x7f0e0383

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    const-string v3, "targetContactData"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/TargetContactData;

    iput-object v3, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mTargetContactData:Lcom/samsung/contacts/detail/TargetContactData;

    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLookupUri:Landroid/net/Uri;

    const v3, 0x7f080241

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mUnlinkOnly:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v3, Lcom/samsung/contacts/detail/LinkedContactActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/detail/LinkedContactActivity$1;-><init>(Lcom/samsung/contacts/detail/LinkedContactActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mListFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

    if-nez v3, :cond_2

    new-instance v3, Lcom/samsung/contacts/detail/LinkedContactFragment;

    invoke-direct {v3}, Lcom/samsung/contacts/detail/LinkedContactFragment;-><init>()V

    iput-object v3, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mListFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f080036

    iget-object v5, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mListFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mListFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splitCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mListFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/detail/LinkedContactFragment;->onSplitCompleted(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mTargetContactData:Lcom/samsung/contacts/detail/TargetContactData;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/detail/LinkedContactActivity;->setResultAndFinish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public setLinkedContactsCount(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/samsung/contacts/detail/LinkedContactActivity;->mLinkedContactsCount:I

    invoke-direct {p0}, Lcom/samsung/contacts/detail/LinkedContactActivity;->setExplainText()V

    return-void
.end method
