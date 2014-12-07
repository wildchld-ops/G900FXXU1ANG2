.class public Lcom/samsung/contacts/detail/ContactDetailDialogList;
.super Landroid/app/DialogFragment;
.source "ContactDetailDialogList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;",
            ">;"
        }
    .end annotation
.end field

.field private mDatas:[Ljava/lang/CharSequence;

.field private mSize:I

.field private mTitle:Ljava/lang/String;

.field private mTypes:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MyDialog"

    sput-object v0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/detail/ContactDetailDialogList;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/samsung/contacts/detail/ContactDetailDialogList;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/detail/ContactDetailDialogList;)Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;
    .locals 1
    .param p0    # Lcom/samsung/contacts/detail/ContactDetailDialogList;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mAdapter:Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/detail/ContactDetailDialogList;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Lcom/samsung/contacts/detail/ContactDetailDialogList;
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->safeStartActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private makeData()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mSize:I

    if-ge v1, v2, :cond_2

    new-instance v0, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;

    invoke-direct {v0}, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;-><init>()V

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTypes:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTypes:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;->type:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mDatas:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mDatas:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;->data:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private safeStartActivity(Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Intent;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/contacts/detail/ContactDetailDialogList;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/contacts/detail/ContactDetailDialogList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 5
    .param p0    # Landroid/app/FragmentManager;
    .param p1    # [Ljava/lang/CharSequence;
    .param p2    # [Ljava/lang/CharSequence;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ">(",
            "Landroid/app/FragmentManager;",
            "[",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_types"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v4, "key_datas"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v4, "key_title"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/contacts/detail/ContactDetailDialogList;

    invoke-direct {v3}, Lcom/samsung/contacts/detail/ContactDetailDialogList;-><init>()V

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v4, Lcom/samsung/contacts/detail/ContactDetailDialogList;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    sget-object v4, Lcom/samsung/contacts/detail/ContactDetailDialogList;->TAG:Ljava/lang/String;

    invoke-virtual {v3, p0, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "key_types"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTypes:[Ljava/lang/CharSequence;

    const-string v5, "key_datas"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mDatas:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mDatas:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTypes:[Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    const-string v5, "key_title"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mDatas:[Ljava/lang/CharSequence;

    array-length v5, v5

    iput v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mSize:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mDataList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->makeData()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;

    iget-object v6, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mActivity:Landroid/app/Activity;

    const v7, 0x7f030117

    iget-object v8, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mDataList:Ljava/util/ArrayList;

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mAdapter:Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;

    new-instance v2, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;-><init>(Lcom/samsung/contacts/detail/ContactDetailDialogList;)V

    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList;->mAdapter:Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v5, Lcom/samsung/contacts/detail/ContactDetailDialogList$2;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/detail/ContactDetailDialogList$2;-><init>(Lcom/samsung/contacts/detail/ContactDetailDialogList;)V

    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0
.end method
