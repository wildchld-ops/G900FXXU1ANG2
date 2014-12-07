.class public Lcom/google/android/finsky/activities/UpdateApprovalFragment;
.super Landroid/support/v4/app/Fragment;
.source "UpdateApprovalFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/UpdateApprovalFragment$1;,
        Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;
    }
.end annotation


# instance fields
.field private mContentTextView:Landroid/widget/TextView;

.field private mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

.field private mProgressTextView:Landroid/widget/TextView;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private displayInfo()V
    .locals 11

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mProgressTextView:Landroid/widget/TextView;

    const v1, 0x7f090205

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "UpdateApprovalFragment.updateNumber"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v10

    const-string v5, "UpdateApprovalFragment.totalUpdates"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v9, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;->values()[Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;

    move-result-object v0

    const-string v1, "UpdateApprovalFragment.approvalType"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v7, v0, v1

    sget-object v0, Lcom/google/android/finsky/activities/UpdateApprovalFragment$1;->$SwitchMap$com$google$android$finsky$activities$UpdateApprovalFragment$ApprovalType:[I

    invoke-virtual {v7}, Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mContentTextView:Landroid/widget/TextView;

    const v1, 0x7f090202

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "UpdateApprovalFragment.packageTitle"

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v9, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mContentTextView:Landroid/widget/TextView;

    const v1, 0x7f090204

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "UpdateApprovalFragment.packageTitle"

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v9, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0901f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "UpdateApprovalFragment.packageName"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "UpdateApprovalFragment.packageTitle"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "UpdateApprovalFragment.permissions"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->getPermissionInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->bindInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {v0, v10}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPermissionInfo(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "Name not found while getting permission %s for %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v9

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;Ljava/util/ArrayList;)Lcom/google/android/finsky/activities/UpdateApprovalFragment;
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/finsky/activities/UpdateApprovalFragment;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/finsky/activities/UpdateApprovalFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UpdateApprovalFragment.packageName"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "UpdateApprovalFragment.packageTitle"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "UpdateApprovalFragment.updateNumber"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "UpdateApprovalFragment.totalUpdates"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "UpdateApprovalFragment.approvalType"

    invoke-virtual {p4}, Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "UpdateApprovalFragment.permissions"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public getUpdateNumber()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UpdateApprovalFragment.updateNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f04013b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f080245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mProgressTextView:Landroid/widget/TextView;

    const v1, 0x7f080246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mContentTextView:Landroid/widget/TextView;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/AppSecurityPermissions;

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->displayInfo()V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->mPermissionsView:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
