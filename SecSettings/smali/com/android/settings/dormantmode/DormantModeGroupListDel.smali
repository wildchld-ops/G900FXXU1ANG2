.class public Lcom/android/settings/dormantmode/DormantModeGroupListDel;
.super Landroid/app/ListFragment;
.source "DormantModeGroupListDel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;
.implements Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;",
        "Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;"
    }
.end annotation


# static fields
.field static final GROUPS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private static mlistView:Landroid/widget/ListView;

.field private static selected_id:I


# instance fields
.field contactPakcage:Ljava/lang/String;

.field private mActionMode:Landroid/view/ActionMode;

.field private mButtonSellectAll:Landroid/view/View;

.field private mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

.field private mEmptyScreen:Landroid/view/View;

.field private mGroupListDel:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sec_custom_dormant_group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->GROUPS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const-string v0, "com.android.contacts"

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->contactPakcage:Ljava/lang/String;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 4

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    check-cast v2, Lcom/android/settings/common/CheckedGroupListCursorAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->setChecked(IZ)V

    sget-object v2, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    sget-object v3, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/common/DeleteModeCallback;->updateSelectionMenu(I)V

    :cond_3
    return-void
.end method

.method public static checkDeleteButtonstate()V
    .locals 2

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/common/DeleteModeCallback;->refreshTrashState(I)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static newInstance(I)Lcom/android/settings/dormantmode/DormantModeGroupListDel;
    .locals 3

    new-instance v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    invoke-direct {v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selected_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->finish()V

    return-void
.end method

.method public convertContactGroupTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "system_group_id_friend"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Friends"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "system_group_id_family"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Family"

    goto :goto_0

    :cond_1
    const-string v1, "system_group_id_coworker"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Coworkers"

    goto :goto_0

    :cond_2
    const-string v1, "system_group_id_my_contacts"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "My Contacts"

    goto :goto_0

    :cond_3
    const-string v1, "system_group_id_ice"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "ICE"

    goto :goto_0

    :cond_4
    const-string v1, "contactsFavoritesLabel"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "Favorites"

    goto :goto_0

    :cond_5
    const-string v1, "not_assigned"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "Not Assigned"

    goto :goto_0

    :cond_6
    move-object v0, p1

    goto :goto_0

    :cond_7
    const-string v1, "system_group_friend"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "Friends"

    goto :goto_0

    :cond_8
    const-string v1, "system_group_family"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "Family"

    goto :goto_0

    :cond_9
    const-string v1, "system_group_coworker"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "Coworkers"

    goto/16 :goto_0

    :cond_a
    const-string v1, "system_group_my_contacts"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "My Contacts"

    goto/16 :goto_0

    :cond_b
    const-string v1, "emergency_contacts"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "ICE"

    goto/16 :goto_0

    :cond_c
    const-string v1, "contactsFavoritesLabel"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "Favorites"

    goto/16 :goto_0

    :cond_d
    const-string v1, "not_assigned"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "Not Assigned"

    goto/16 :goto_0

    :cond_e
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public delete()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->grouplistdelete()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->stopActionMode()V

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public getContactString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "string"

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->contactPakcage:Ljava/lang/String;

    invoke-static {v3, p1, v4, v5}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->contactPakcage:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public grouplistdelete()V
    .locals 11

    sget-object v6, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    sget-object v6, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x1020014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->convertContactGroupTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "sec_custom_dormant_group"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id in (select _id from view_groups where title = ? )"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x1020004

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mEmptyScreen:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mGroupListDel:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mButtonSellectAll:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mGroupListDel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v2, 0x7f0401e9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_1

    const v2, 0x7f0401e9

    :goto_0
    new-instance v0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v6

    new-array v5, v8, [I

    const v7, 0x1020014

    aput v7, v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/common/CheckedGroupListCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->setHasOptionsMenu(Z)V

    :cond_0
    return-void

    :cond_1
    const v2, 0x7f0401eb

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/common/DeleteModeCallback;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/common/DeleteModeCallback;-><init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    invoke-virtual {v0, p0}, Lcom/android/settings/common/DeleteModeCallback;->setOnDeleteListner(Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;)V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->ToggleAllCheck(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->selected_id:I

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "content://com.android.contacts/groups_list/aggregated"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->GROUPS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v4, "sec_custom_dormant_group=1"

    const/4 v5, 0x0

    const-string v6, "title COLLATE LOCALIZED ASC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const v5, 0x7f0901ad

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f090b05

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_cancel:Landroid/view/MenuItem;

    :goto_0
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    return-void

    :cond_0
    const v0, 0x7f120001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f090b05

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_cancel:Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f040091

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f040090

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    check-cast v0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->setChecked(I)V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/common/DeleteModeCallback;->updateSelectionMenu(I)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    sget v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->selected_id:I

    if-eq v0, v4, :cond_2

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    sget v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->selected_id:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    check-cast v0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;

    sget v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->selected_id:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->setChecked(IZ)V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    :cond_0
    sput v4, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->selected_id:I

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_1
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    :cond_2
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_3
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mEmptyScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mButtonSellectAll:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mButtonSellectAll:Landroid/view/View;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mDormantModeActionModeCallBack:Lcom/android/settings/common/DeleteModeCallback;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/common/DeleteModeCallback;->updateSelectionMenu(I)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mButtonSellectAll:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mButtonSellectAll:Landroid/view/View;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->grouplistdelete()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_1
        0x7f0b011a -> :sswitch_1
        0x7f0b0750 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->checkDeleteButtonstate()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mAdapter_delete_group:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    sget-object v0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

.method public stopActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
